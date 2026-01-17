import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../../domain/models/chat_models.dart';
import '../../domain/models/proactive_models.dart';
import '../../domain/services/anchor_chat_service.dart';
import '../../domain/services/proactive_insight_service.dart';
import 'stress_detection_provider.dart';

part 'chat_provider.g.dart';

// Services Providers
@riverpod
AnchorChatService anchorChatService(Ref ref) {
  return AnchorChatService();
}

@riverpod
ProactiveInsightService proactiveInsightService(Ref ref) {
  return ProactiveInsightService();
}

// Context Provider
@riverpod
Future<AnchorContext> anchorContext(Ref ref) async {
  // Aggregate data from other providers
  final stressResult = ref.watch(demoStressAnalysisProvider);

  // In a real app, we'd watch calendar and user providers too
  // For now, we'll use nulls or defaults since those providers aren't implemented yet

  return AnchorContext(
    stressAnalysis: stressResult,
    upcomingSchedule: null, // Placeholder
    userPatterns: null, // Placeholder
    userLocation: 'New York', // Default for demo
    wellnessOptions: [],
  );
}

// Chat State Manager
@riverpod
class ChatNotifier extends _$ChatNotifier {
  final _uuid = const Uuid();

  @override
  ChatConversation build() {
    return ChatConversation(
      id: _uuid.v4(),
      createdAt: DateTime.now(),
      lastMessageAt: DateTime.now(),
      messages: [
        ChatMessage(
          id: _uuid.v4(),
          role: MessageRole.assistant,
          content:
              "Hi Alex! I noticed you have a busy week ahead. How are you feeling today?",
          timestamp: DateTime.now(),
        ),
      ],
    );
  }

  Future<void> sendMessage(String text) async {
    // 1. Add user message immediately
    final userMsg = ChatMessage(
      id: _uuid.v4(),
      role: MessageRole.user,
      content: text,
      timestamp: DateTime.now(),
    );

    state = state.copyWith(
      messages: [...state.messages, userMsg],
      lastMessageAt: DateTime.now(),
    );

    // 2. Get AI Response
    try {
      final chatService = ref.read(anchorChatServiceProvider);
      final context = await ref.read(anchorContextProvider.future);

      final response = await chatService.chat(text, state.messages, context);

      // 3. Update state with response
      state = state.copyWith(
        messages: [...state.messages, response],
        lastMessageAt: DateTime.now(),
      );
    } catch (e) {
      // Handle error (could add a system error message)
      // print('Error sending message: $e');
    }
  }

  void addProactiveMessage(ProactiveInsight insight) {
    final aiMsg = ChatMessage(
      id: _uuid.v4(),
      role: MessageRole.assistant,
      content: insight.message,
      timestamp: DateTime.now(),
      metadata: MessageMetadata(
        suggestedActions: insight.suggestedActions,
        wellnessOptions: insight.wellnessOptions,
      ),
    );

    state = state.copyWith(
      messages: [...state.messages, aiMsg],
      lastMessageAt: DateTime.now(),
    );
  }

  void mockBookingConfirmation(String optionName, String time) {
    final aiMsg = ChatMessage(
      id: _uuid.v4(),
      role: MessageRole.assistant,
      content:
          "Done! ✓\n\n- $optionName - $time (added to calendar)\n\nI'll remind you the night before.",
      timestamp: DateTime.now(),
      metadata: const MessageMetadata(isBookingConfirmation: true),
    );

    state = state.copyWith(
      messages: [...state.messages, aiMsg],
      lastMessageAt: DateTime.now(),
    );
  }
}
