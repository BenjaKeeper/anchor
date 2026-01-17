import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../domain/models/chat_models.dart';
import '../../../domain/models/wellness_models.dart';
import 'wellness_option_card.dart';

class MessageBubble extends StatelessWidget {
  final ChatMessage message;

  final Function(WellnessOption)? onBookOption;

  const MessageBubble({super.key, required this.message, this.onBookOption});

  bool get isUser => message.role == MessageRole.user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: isUser
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: isUser
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!isUser) ...[_buildAvatar(), const SizedBox(width: 8)],
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: isUser ? AppColors.primary : Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(AppTheme.radiusMedium),
                      topRight: const Radius.circular(AppTheme.radiusMedium),
                      bottomLeft: isUser
                          ? const Radius.circular(AppTheme.radiusMedium)
                          : Radius.zero,
                      bottomRight: !isUser
                          ? const Radius.circular(AppTheme.radiusMedium)
                          : Radius.zero,
                    ),
                    boxShadow: isUser ? [] : AppTheme.shadowSoft,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        message.content,
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.5,
                          color: isUser ? Colors.white : AppColors.foreground,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (isUser) ...[const SizedBox(width: 8), _buildUserAvatar()],
            ],
          ),

          // Render embedded wellness options if any
          if (message.role == MessageRole.assistant &&
              message.metadata.wellnessOptions.isNotEmpty) ...[
            const SizedBox(height: 12),
            SizedBox(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 40, right: 20),
                itemCount: message.metadata.wellnessOptions.length,
                itemBuilder: (context, index) {
                  final option = message.metadata.wellnessOptions[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: SizedBox(
                      width: 220,
                      child: WellnessOptionCard(
                        option: option,
                        onBook: () {
                          onBookOption?.call(option);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.1),
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.primary.withValues(alpha: 0.2)),
      ),
      child: const Center(
        child: Icon(Icons.anchor, size: 16, color: AppColors.primary),
      ),
    );
  }

  Widget _buildUserAvatar() {
    return Container(
      width: 32,
      height: 32,
      decoration: const BoxDecoration(
        color: AppColors.secondary,
        shape: BoxShape.circle,
      ),
      child: const Center(
        child: Text(
          "A",
          style: TextStyle(
            color: AppColors.navy,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
