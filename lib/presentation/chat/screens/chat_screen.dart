import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/providers/chat_provider.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/chat_input.dart';
import '../widgets/message_bubble.dart';

class ChatScreen extends ConsumerStatefulWidget {
  const ChatScreen({super.key});

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // Scroll to bottom after frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToBottom();
    });
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final chatState = ref.watch(chatNotifierProvider);
    final notifier = ref.read(chatNotifierProvider.notifier);

    // Auto-scroll on new messages
    ref.listen(chatNotifierProvider, (prev, next) {
      if (prev?.messages.length != next.messages.length) {
        Future.delayed(const Duration(milliseconds: 100), _scrollToBottom);
      }
    });

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          'ANCHOR AI',
          style: TextStyle(color: AppColors.navy, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.navy),
          onPressed: () => context.pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: AppColors.navy),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Message List
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              itemCount: chatState.messages.length,
              itemBuilder: (context, index) {
                final message = chatState.messages[index];

                // We need to inject the booking callback here since MessageBubble is stateless
                // For a cleaner solution, we'd pass a controller or use a provider for callbacks
                // But for this direct implementation, we can wrap the bubble to handle taps
                // on specific interactive elements if they were exposed, or rely on the bubble's internal logic.
                // In our MessageBubble implementation, we left the onBook callback empty-ish.
                // Let's modify MessageBubble to accept the confirmation logic via the parent?
                // Or better, let's keep it simple: The MessageBubble builds WellnessCards,
                // passing a callback that calls the notifier.

                // Since MessageBubble constructs WellnessCards internally from metadata,
                // we should ideally pass a function to it.
                // However, MessageBubble's constructor doesn't take a booking callback.
                // Let's update MessageBubble to take an optional callback or handle it via a provider.
                // Given I already wrote MessageBubble without it, I'll rely on a small trick:
                // I will assume MessageBubble *can* use the ref if I convert it to ConsumerWidget,
                // OR I can re-write MessageBubble to accept `onBookOption`.
                // Actually, I'll just leave MessageBubble as is for now and assume the "Book Now"
                // buttons inside it are purely visual or log to console,
                // UNLESS I re-write MessageBubble.

                // To make it functional, I should update MessageBubble.
                // I'll re-write MessageBubble in a moment if needed, but for now let's just render it.

                return MessageBubble(
                  message: message,
                  onBookOption: (option) {
                    notifier.mockBookingConfirmation(option.name, option.time);
                    _scrollToBottom();
                  },
                );
              },
            ),
          ),

          // Quick Actions (if any suggested actions)
          if (chatState.messages.isNotEmpty &&
              chatState.messages.last.metadata.suggestedActions.isNotEmpty)
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: chatState.messages.last.metadata.suggestedActions.map(
                  (action) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ActionChip(
                        label: Text(action),
                        onPressed: () {
                          if (action.contains('Book')) {
                            notifier.mockBookingConfirmation(
                              'Yoga Class',
                              'Tomorrow 7am',
                            );
                          } else {
                            notifier.sendMessage(action);
                          }
                        },
                        backgroundColor: AppColors.background,
                        labelStyle: const TextStyle(color: AppColors.primary),
                        side: const BorderSide(color: AppColors.primary),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),

          // Input Area
          ChatInput(
            onSend: (text) => notifier.sendMessage(text),
            isLoading: false, // In a real app, track loading state
          ),
        ],
      ),
    );
  }
}
