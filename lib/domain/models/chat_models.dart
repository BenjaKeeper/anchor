import 'package:freezed_annotation/freezed_annotation.dart';
import 'wellness_models.dart';

part 'chat_models.freezed.dart';
part 'chat_models.g.dart';

/// Role of the message sender
enum MessageRole {
  user,
  assistant,
  system;

  String get apiName {
    switch (this) {
      case MessageRole.user:
        return 'user';
      case MessageRole.assistant:
        return 'assistant';
      case MessageRole.system:
        return 'system';
    }
  }
}

/// Metadata attached to a chat message
@freezed
abstract class MessageMetadata with _$MessageMetadata {
  const factory MessageMetadata({
    @Default([]) List<String> suggestedActions,
    @Default([]) List<WellnessOption> wellnessOptions,
    String? bookingId,
    bool? isBookingConfirmation,
  }) = _MessageMetadata;

  factory MessageMetadata.fromJson(Map<String, dynamic> json) =>
      _$MessageMetadataFromJson(json);
}

/// A single message in a chat conversation
@freezed
abstract class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String id,
    required MessageRole role,
    required String content,
    required DateTime timestamp,
    @Default(MessageMetadata()) MessageMetadata metadata,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}

/// A full chat conversation
@freezed
abstract class ChatConversation with _$ChatConversation {
  const factory ChatConversation({
    required String id,
    @Default([]) List<ChatMessage> messages,
    required DateTime createdAt,
    required DateTime lastMessageAt,
  }) = _ChatConversation;

  factory ChatConversation.fromJson(Map<String, dynamic> json) =>
      _$ChatConversationFromJson(json);
}
