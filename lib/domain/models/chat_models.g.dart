// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageMetadata _$MessageMetadataFromJson(Map<String, dynamic> json) =>
    _MessageMetadata(
      suggestedActions:
          (json['suggestedActions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      wellnessOptions:
          (json['wellnessOptions'] as List<dynamic>?)
              ?.map((e) => WellnessOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      bookingId: json['bookingId'] as String?,
      isBookingConfirmation: json['isBookingConfirmation'] as bool?,
    );

Map<String, dynamic> _$MessageMetadataToJson(_MessageMetadata instance) =>
    <String, dynamic>{
      'suggestedActions': instance.suggestedActions,
      'wellnessOptions': instance.wellnessOptions,
      'bookingId': instance.bookingId,
      'isBookingConfirmation': instance.isBookingConfirmation,
    };

_ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) => _ChatMessage(
  id: json['id'] as String,
  role: $enumDecode(_$MessageRoleEnumMap, json['role']),
  content: json['content'] as String,
  timestamp: DateTime.parse(json['timestamp'] as String),
  metadata: json['metadata'] == null
      ? const MessageMetadata()
      : MessageMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChatMessageToJson(_ChatMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role': _$MessageRoleEnumMap[instance.role]!,
      'content': instance.content,
      'timestamp': instance.timestamp.toIso8601String(),
      'metadata': instance.metadata,
    };

const _$MessageRoleEnumMap = {
  MessageRole.user: 'user',
  MessageRole.assistant: 'assistant',
  MessageRole.system: 'system',
};

_ChatConversation _$ChatConversationFromJson(Map<String, dynamic> json) =>
    _ChatConversation(
      id: json['id'] as String,
      messages:
          (json['messages'] as List<dynamic>?)
              ?.map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastMessageAt: DateTime.parse(json['lastMessageAt'] as String),
    );

Map<String, dynamic> _$ChatConversationToJson(_ChatConversation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'messages': instance.messages,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastMessageAt': instance.lastMessageAt.toIso8601String(),
    };
