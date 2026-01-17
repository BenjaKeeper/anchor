// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageMetadata {

 List<String> get suggestedActions; List<WellnessOption> get wellnessOptions; String? get bookingId; bool? get isBookingConfirmation;
/// Create a copy of MessageMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageMetadataCopyWith<MessageMetadata> get copyWith => _$MessageMetadataCopyWithImpl<MessageMetadata>(this as MessageMetadata, _$identity);

  /// Serializes this MessageMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageMetadata&&const DeepCollectionEquality().equals(other.suggestedActions, suggestedActions)&&const DeepCollectionEquality().equals(other.wellnessOptions, wellnessOptions)&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.isBookingConfirmation, isBookingConfirmation) || other.isBookingConfirmation == isBookingConfirmation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(suggestedActions),const DeepCollectionEquality().hash(wellnessOptions),bookingId,isBookingConfirmation);

@override
String toString() {
  return 'MessageMetadata(suggestedActions: $suggestedActions, wellnessOptions: $wellnessOptions, bookingId: $bookingId, isBookingConfirmation: $isBookingConfirmation)';
}


}

/// @nodoc
abstract mixin class $MessageMetadataCopyWith<$Res>  {
  factory $MessageMetadataCopyWith(MessageMetadata value, $Res Function(MessageMetadata) _then) = _$MessageMetadataCopyWithImpl;
@useResult
$Res call({
 List<String> suggestedActions, List<WellnessOption> wellnessOptions, String? bookingId, bool? isBookingConfirmation
});




}
/// @nodoc
class _$MessageMetadataCopyWithImpl<$Res>
    implements $MessageMetadataCopyWith<$Res> {
  _$MessageMetadataCopyWithImpl(this._self, this._then);

  final MessageMetadata _self;
  final $Res Function(MessageMetadata) _then;

/// Create a copy of MessageMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? suggestedActions = null,Object? wellnessOptions = null,Object? bookingId = freezed,Object? isBookingConfirmation = freezed,}) {
  return _then(_self.copyWith(
suggestedActions: null == suggestedActions ? _self.suggestedActions : suggestedActions // ignore: cast_nullable_to_non_nullable
as List<String>,wellnessOptions: null == wellnessOptions ? _self.wellnessOptions : wellnessOptions // ignore: cast_nullable_to_non_nullable
as List<WellnessOption>,bookingId: freezed == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String?,isBookingConfirmation: freezed == isBookingConfirmation ? _self.isBookingConfirmation : isBookingConfirmation // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageMetadata].
extension MessageMetadataPatterns on MessageMetadata {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageMetadata() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageMetadata value)  $default,){
final _that = this;
switch (_that) {
case _MessageMetadata():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _MessageMetadata() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> suggestedActions,  List<WellnessOption> wellnessOptions,  String? bookingId,  bool? isBookingConfirmation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageMetadata() when $default != null:
return $default(_that.suggestedActions,_that.wellnessOptions,_that.bookingId,_that.isBookingConfirmation);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> suggestedActions,  List<WellnessOption> wellnessOptions,  String? bookingId,  bool? isBookingConfirmation)  $default,) {final _that = this;
switch (_that) {
case _MessageMetadata():
return $default(_that.suggestedActions,_that.wellnessOptions,_that.bookingId,_that.isBookingConfirmation);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> suggestedActions,  List<WellnessOption> wellnessOptions,  String? bookingId,  bool? isBookingConfirmation)?  $default,) {final _that = this;
switch (_that) {
case _MessageMetadata() when $default != null:
return $default(_that.suggestedActions,_that.wellnessOptions,_that.bookingId,_that.isBookingConfirmation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageMetadata implements MessageMetadata {
  const _MessageMetadata({final  List<String> suggestedActions = const [], final  List<WellnessOption> wellnessOptions = const [], this.bookingId, this.isBookingConfirmation}): _suggestedActions = suggestedActions,_wellnessOptions = wellnessOptions;
  factory _MessageMetadata.fromJson(Map<String, dynamic> json) => _$MessageMetadataFromJson(json);

 final  List<String> _suggestedActions;
@override@JsonKey() List<String> get suggestedActions {
  if (_suggestedActions is EqualUnmodifiableListView) return _suggestedActions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestedActions);
}

 final  List<WellnessOption> _wellnessOptions;
@override@JsonKey() List<WellnessOption> get wellnessOptions {
  if (_wellnessOptions is EqualUnmodifiableListView) return _wellnessOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_wellnessOptions);
}

@override final  String? bookingId;
@override final  bool? isBookingConfirmation;

/// Create a copy of MessageMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageMetadataCopyWith<_MessageMetadata> get copyWith => __$MessageMetadataCopyWithImpl<_MessageMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageMetadata&&const DeepCollectionEquality().equals(other._suggestedActions, _suggestedActions)&&const DeepCollectionEquality().equals(other._wellnessOptions, _wellnessOptions)&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.isBookingConfirmation, isBookingConfirmation) || other.isBookingConfirmation == isBookingConfirmation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_suggestedActions),const DeepCollectionEquality().hash(_wellnessOptions),bookingId,isBookingConfirmation);

@override
String toString() {
  return 'MessageMetadata(suggestedActions: $suggestedActions, wellnessOptions: $wellnessOptions, bookingId: $bookingId, isBookingConfirmation: $isBookingConfirmation)';
}


}

/// @nodoc
abstract mixin class _$MessageMetadataCopyWith<$Res> implements $MessageMetadataCopyWith<$Res> {
  factory _$MessageMetadataCopyWith(_MessageMetadata value, $Res Function(_MessageMetadata) _then) = __$MessageMetadataCopyWithImpl;
@override @useResult
$Res call({
 List<String> suggestedActions, List<WellnessOption> wellnessOptions, String? bookingId, bool? isBookingConfirmation
});




}
/// @nodoc
class __$MessageMetadataCopyWithImpl<$Res>
    implements _$MessageMetadataCopyWith<$Res> {
  __$MessageMetadataCopyWithImpl(this._self, this._then);

  final _MessageMetadata _self;
  final $Res Function(_MessageMetadata) _then;

/// Create a copy of MessageMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? suggestedActions = null,Object? wellnessOptions = null,Object? bookingId = freezed,Object? isBookingConfirmation = freezed,}) {
  return _then(_MessageMetadata(
suggestedActions: null == suggestedActions ? _self._suggestedActions : suggestedActions // ignore: cast_nullable_to_non_nullable
as List<String>,wellnessOptions: null == wellnessOptions ? _self._wellnessOptions : wellnessOptions // ignore: cast_nullable_to_non_nullable
as List<WellnessOption>,bookingId: freezed == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String?,isBookingConfirmation: freezed == isBookingConfirmation ? _self.isBookingConfirmation : isBookingConfirmation // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$ChatMessage {

 String get id; MessageRole get role; String get content; DateTime get timestamp; MessageMetadata get metadata;
/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageCopyWith<ChatMessage> get copyWith => _$ChatMessageCopyWithImpl<ChatMessage>(this as ChatMessage, _$identity);

  /// Serializes this ChatMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,role,content,timestamp,metadata);

@override
String toString() {
  return 'ChatMessage(id: $id, role: $role, content: $content, timestamp: $timestamp, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ChatMessageCopyWith<$Res>  {
  factory $ChatMessageCopyWith(ChatMessage value, $Res Function(ChatMessage) _then) = _$ChatMessageCopyWithImpl;
@useResult
$Res call({
 String id, MessageRole role, String content, DateTime timestamp, MessageMetadata metadata
});


$MessageMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$ChatMessageCopyWithImpl<$Res>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._self, this._then);

  final ChatMessage _self;
  final $Res Function(ChatMessage) _then;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? role = null,Object? content = null,Object? timestamp = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as MessageRole,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as MessageMetadata,
  ));
}
/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageMetadataCopyWith<$Res> get metadata {
  
  return $MessageMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatMessage].
extension ChatMessagePatterns on ChatMessage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessage value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessage():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessage value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  MessageRole role,  String content,  DateTime timestamp,  MessageMetadata metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
return $default(_that.id,_that.role,_that.content,_that.timestamp,_that.metadata);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  MessageRole role,  String content,  DateTime timestamp,  MessageMetadata metadata)  $default,) {final _that = this;
switch (_that) {
case _ChatMessage():
return $default(_that.id,_that.role,_that.content,_that.timestamp,_that.metadata);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  MessageRole role,  String content,  DateTime timestamp,  MessageMetadata metadata)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
return $default(_that.id,_that.role,_that.content,_that.timestamp,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessage implements ChatMessage {
  const _ChatMessage({required this.id, required this.role, required this.content, required this.timestamp, this.metadata = const MessageMetadata()});
  factory _ChatMessage.fromJson(Map<String, dynamic> json) => _$ChatMessageFromJson(json);

@override final  String id;
@override final  MessageRole role;
@override final  String content;
@override final  DateTime timestamp;
@override@JsonKey() final  MessageMetadata metadata;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageCopyWith<_ChatMessage> get copyWith => __$ChatMessageCopyWithImpl<_ChatMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,role,content,timestamp,metadata);

@override
String toString() {
  return 'ChatMessage(id: $id, role: $role, content: $content, timestamp: $timestamp, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageCopyWith<$Res> implements $ChatMessageCopyWith<$Res> {
  factory _$ChatMessageCopyWith(_ChatMessage value, $Res Function(_ChatMessage) _then) = __$ChatMessageCopyWithImpl;
@override @useResult
$Res call({
 String id, MessageRole role, String content, DateTime timestamp, MessageMetadata metadata
});


@override $MessageMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$ChatMessageCopyWithImpl<$Res>
    implements _$ChatMessageCopyWith<$Res> {
  __$ChatMessageCopyWithImpl(this._self, this._then);

  final _ChatMessage _self;
  final $Res Function(_ChatMessage) _then;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? role = null,Object? content = null,Object? timestamp = null,Object? metadata = null,}) {
  return _then(_ChatMessage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as MessageRole,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as MessageMetadata,
  ));
}

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageMetadataCopyWith<$Res> get metadata {
  
  return $MessageMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// @nodoc
mixin _$ChatConversation {

 String get id; List<ChatMessage> get messages; DateTime get createdAt; DateTime get lastMessageAt;
/// Create a copy of ChatConversation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatConversationCopyWith<ChatConversation> get copyWith => _$ChatConversationCopyWithImpl<ChatConversation>(this as ChatConversation, _$identity);

  /// Serializes this ChatConversation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatConversation&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(messages),createdAt,lastMessageAt);

@override
String toString() {
  return 'ChatConversation(id: $id, messages: $messages, createdAt: $createdAt, lastMessageAt: $lastMessageAt)';
}


}

/// @nodoc
abstract mixin class $ChatConversationCopyWith<$Res>  {
  factory $ChatConversationCopyWith(ChatConversation value, $Res Function(ChatConversation) _then) = _$ChatConversationCopyWithImpl;
@useResult
$Res call({
 String id, List<ChatMessage> messages, DateTime createdAt, DateTime lastMessageAt
});




}
/// @nodoc
class _$ChatConversationCopyWithImpl<$Res>
    implements $ChatConversationCopyWith<$Res> {
  _$ChatConversationCopyWithImpl(this._self, this._then);

  final ChatConversation _self;
  final $Res Function(ChatConversation) _then;

/// Create a copy of ChatConversation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? messages = null,Object? createdAt = null,Object? lastMessageAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastMessageAt: null == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatConversation].
extension ChatConversationPatterns on ChatConversation {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatConversation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatConversation() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatConversation value)  $default,){
final _that = this;
switch (_that) {
case _ChatConversation():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatConversation value)?  $default,){
final _that = this;
switch (_that) {
case _ChatConversation() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<ChatMessage> messages,  DateTime createdAt,  DateTime lastMessageAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatConversation() when $default != null:
return $default(_that.id,_that.messages,_that.createdAt,_that.lastMessageAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<ChatMessage> messages,  DateTime createdAt,  DateTime lastMessageAt)  $default,) {final _that = this;
switch (_that) {
case _ChatConversation():
return $default(_that.id,_that.messages,_that.createdAt,_that.lastMessageAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<ChatMessage> messages,  DateTime createdAt,  DateTime lastMessageAt)?  $default,) {final _that = this;
switch (_that) {
case _ChatConversation() when $default != null:
return $default(_that.id,_that.messages,_that.createdAt,_that.lastMessageAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatConversation implements ChatConversation {
  const _ChatConversation({required this.id, final  List<ChatMessage> messages = const [], required this.createdAt, required this.lastMessageAt}): _messages = messages;
  factory _ChatConversation.fromJson(Map<String, dynamic> json) => _$ChatConversationFromJson(json);

@override final  String id;
 final  List<ChatMessage> _messages;
@override@JsonKey() List<ChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override final  DateTime createdAt;
@override final  DateTime lastMessageAt;

/// Create a copy of ChatConversation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatConversationCopyWith<_ChatConversation> get copyWith => __$ChatConversationCopyWithImpl<_ChatConversation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatConversationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatConversation&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_messages),createdAt,lastMessageAt);

@override
String toString() {
  return 'ChatConversation(id: $id, messages: $messages, createdAt: $createdAt, lastMessageAt: $lastMessageAt)';
}


}

/// @nodoc
abstract mixin class _$ChatConversationCopyWith<$Res> implements $ChatConversationCopyWith<$Res> {
  factory _$ChatConversationCopyWith(_ChatConversation value, $Res Function(_ChatConversation) _then) = __$ChatConversationCopyWithImpl;
@override @useResult
$Res call({
 String id, List<ChatMessage> messages, DateTime createdAt, DateTime lastMessageAt
});




}
/// @nodoc
class __$ChatConversationCopyWithImpl<$Res>
    implements _$ChatConversationCopyWith<$Res> {
  __$ChatConversationCopyWithImpl(this._self, this._then);

  final _ChatConversation _self;
  final $Res Function(_ChatConversation) _then;

/// Create a copy of ChatConversation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? messages = null,Object? createdAt = null,Object? lastMessageAt = null,}) {
  return _then(_ChatConversation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastMessageAt: null == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
