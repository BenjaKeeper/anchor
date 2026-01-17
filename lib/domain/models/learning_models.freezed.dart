// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserActivityFeedback {

 int get rating; String get feeling; String? get comments;
/// Create a copy of UserActivityFeedback
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserActivityFeedbackCopyWith<UserActivityFeedback> get copyWith => _$UserActivityFeedbackCopyWithImpl<UserActivityFeedback>(this as UserActivityFeedback, _$identity);

  /// Serializes this UserActivityFeedback to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserActivityFeedback&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.feeling, feeling) || other.feeling == feeling)&&(identical(other.comments, comments) || other.comments == comments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rating,feeling,comments);

@override
String toString() {
  return 'UserActivityFeedback(rating: $rating, feeling: $feeling, comments: $comments)';
}


}

/// @nodoc
abstract mixin class $UserActivityFeedbackCopyWith<$Res>  {
  factory $UserActivityFeedbackCopyWith(UserActivityFeedback value, $Res Function(UserActivityFeedback) _then) = _$UserActivityFeedbackCopyWithImpl;
@useResult
$Res call({
 int rating, String feeling, String? comments
});




}
/// @nodoc
class _$UserActivityFeedbackCopyWithImpl<$Res>
    implements $UserActivityFeedbackCopyWith<$Res> {
  _$UserActivityFeedbackCopyWithImpl(this._self, this._then);

  final UserActivityFeedback _self;
  final $Res Function(UserActivityFeedback) _then;

/// Create a copy of UserActivityFeedback
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rating = null,Object? feeling = null,Object? comments = freezed,}) {
  return _then(_self.copyWith(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,feeling: null == feeling ? _self.feeling : feeling // ignore: cast_nullable_to_non_nullable
as String,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserActivityFeedback].
extension UserActivityFeedbackPatterns on UserActivityFeedback {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserActivityFeedback value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserActivityFeedback() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserActivityFeedback value)  $default,){
final _that = this;
switch (_that) {
case _UserActivityFeedback():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserActivityFeedback value)?  $default,){
final _that = this;
switch (_that) {
case _UserActivityFeedback() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int rating,  String feeling,  String? comments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserActivityFeedback() when $default != null:
return $default(_that.rating,_that.feeling,_that.comments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int rating,  String feeling,  String? comments)  $default,) {final _that = this;
switch (_that) {
case _UserActivityFeedback():
return $default(_that.rating,_that.feeling,_that.comments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int rating,  String feeling,  String? comments)?  $default,) {final _that = this;
switch (_that) {
case _UserActivityFeedback() when $default != null:
return $default(_that.rating,_that.feeling,_that.comments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserActivityFeedback implements UserActivityFeedback {
  const _UserActivityFeedback({required this.rating, required this.feeling, this.comments});
  factory _UserActivityFeedback.fromJson(Map<String, dynamic> json) => _$UserActivityFeedbackFromJson(json);

@override final  int rating;
@override final  String feeling;
@override final  String? comments;

/// Create a copy of UserActivityFeedback
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserActivityFeedbackCopyWith<_UserActivityFeedback> get copyWith => __$UserActivityFeedbackCopyWithImpl<_UserActivityFeedback>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserActivityFeedbackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserActivityFeedback&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.feeling, feeling) || other.feeling == feeling)&&(identical(other.comments, comments) || other.comments == comments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rating,feeling,comments);

@override
String toString() {
  return 'UserActivityFeedback(rating: $rating, feeling: $feeling, comments: $comments)';
}


}

/// @nodoc
abstract mixin class _$UserActivityFeedbackCopyWith<$Res> implements $UserActivityFeedbackCopyWith<$Res> {
  factory _$UserActivityFeedbackCopyWith(_UserActivityFeedback value, $Res Function(_UserActivityFeedback) _then) = __$UserActivityFeedbackCopyWithImpl;
@override @useResult
$Res call({
 int rating, String feeling, String? comments
});




}
/// @nodoc
class __$UserActivityFeedbackCopyWithImpl<$Res>
    implements _$UserActivityFeedbackCopyWith<$Res> {
  __$UserActivityFeedbackCopyWithImpl(this._self, this._then);

  final _UserActivityFeedback _self;
  final $Res Function(_UserActivityFeedback) _then;

/// Create a copy of UserActivityFeedback
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rating = null,Object? feeling = null,Object? comments = freezed,}) {
  return _then(_UserActivityFeedback(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,feeling: null == feeling ? _self.feeling : feeling // ignore: cast_nullable_to_non_nullable
as String,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ActivityContext {

 String? get beforeEvent; String? get travelStatus; int? get daysSinceLastActivity; int? get stressScoreBefore; bool? get afterFlight; int? get hoursAfterLanding; double? get sleepLastNight; String? get dayOfWeek; String? get locationType;
/// Create a copy of ActivityContext
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityContextCopyWith<ActivityContext> get copyWith => _$ActivityContextCopyWithImpl<ActivityContext>(this as ActivityContext, _$identity);

  /// Serializes this ActivityContext to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityContext&&(identical(other.beforeEvent, beforeEvent) || other.beforeEvent == beforeEvent)&&(identical(other.travelStatus, travelStatus) || other.travelStatus == travelStatus)&&(identical(other.daysSinceLastActivity, daysSinceLastActivity) || other.daysSinceLastActivity == daysSinceLastActivity)&&(identical(other.stressScoreBefore, stressScoreBefore) || other.stressScoreBefore == stressScoreBefore)&&(identical(other.afterFlight, afterFlight) || other.afterFlight == afterFlight)&&(identical(other.hoursAfterLanding, hoursAfterLanding) || other.hoursAfterLanding == hoursAfterLanding)&&(identical(other.sleepLastNight, sleepLastNight) || other.sleepLastNight == sleepLastNight)&&(identical(other.dayOfWeek, dayOfWeek) || other.dayOfWeek == dayOfWeek)&&(identical(other.locationType, locationType) || other.locationType == locationType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,beforeEvent,travelStatus,daysSinceLastActivity,stressScoreBefore,afterFlight,hoursAfterLanding,sleepLastNight,dayOfWeek,locationType);

@override
String toString() {
  return 'ActivityContext(beforeEvent: $beforeEvent, travelStatus: $travelStatus, daysSinceLastActivity: $daysSinceLastActivity, stressScoreBefore: $stressScoreBefore, afterFlight: $afterFlight, hoursAfterLanding: $hoursAfterLanding, sleepLastNight: $sleepLastNight, dayOfWeek: $dayOfWeek, locationType: $locationType)';
}


}

/// @nodoc
abstract mixin class $ActivityContextCopyWith<$Res>  {
  factory $ActivityContextCopyWith(ActivityContext value, $Res Function(ActivityContext) _then) = _$ActivityContextCopyWithImpl;
@useResult
$Res call({
 String? beforeEvent, String? travelStatus, int? daysSinceLastActivity, int? stressScoreBefore, bool? afterFlight, int? hoursAfterLanding, double? sleepLastNight, String? dayOfWeek, String? locationType
});




}
/// @nodoc
class _$ActivityContextCopyWithImpl<$Res>
    implements $ActivityContextCopyWith<$Res> {
  _$ActivityContextCopyWithImpl(this._self, this._then);

  final ActivityContext _self;
  final $Res Function(ActivityContext) _then;

/// Create a copy of ActivityContext
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? beforeEvent = freezed,Object? travelStatus = freezed,Object? daysSinceLastActivity = freezed,Object? stressScoreBefore = freezed,Object? afterFlight = freezed,Object? hoursAfterLanding = freezed,Object? sleepLastNight = freezed,Object? dayOfWeek = freezed,Object? locationType = freezed,}) {
  return _then(_self.copyWith(
beforeEvent: freezed == beforeEvent ? _self.beforeEvent : beforeEvent // ignore: cast_nullable_to_non_nullable
as String?,travelStatus: freezed == travelStatus ? _self.travelStatus : travelStatus // ignore: cast_nullable_to_non_nullable
as String?,daysSinceLastActivity: freezed == daysSinceLastActivity ? _self.daysSinceLastActivity : daysSinceLastActivity // ignore: cast_nullable_to_non_nullable
as int?,stressScoreBefore: freezed == stressScoreBefore ? _self.stressScoreBefore : stressScoreBefore // ignore: cast_nullable_to_non_nullable
as int?,afterFlight: freezed == afterFlight ? _self.afterFlight : afterFlight // ignore: cast_nullable_to_non_nullable
as bool?,hoursAfterLanding: freezed == hoursAfterLanding ? _self.hoursAfterLanding : hoursAfterLanding // ignore: cast_nullable_to_non_nullable
as int?,sleepLastNight: freezed == sleepLastNight ? _self.sleepLastNight : sleepLastNight // ignore: cast_nullable_to_non_nullable
as double?,dayOfWeek: freezed == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as String?,locationType: freezed == locationType ? _self.locationType : locationType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityContext].
extension ActivityContextPatterns on ActivityContext {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityContext value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityContext() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityContext value)  $default,){
final _that = this;
switch (_that) {
case _ActivityContext():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityContext value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityContext() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? beforeEvent,  String? travelStatus,  int? daysSinceLastActivity,  int? stressScoreBefore,  bool? afterFlight,  int? hoursAfterLanding,  double? sleepLastNight,  String? dayOfWeek,  String? locationType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityContext() when $default != null:
return $default(_that.beforeEvent,_that.travelStatus,_that.daysSinceLastActivity,_that.stressScoreBefore,_that.afterFlight,_that.hoursAfterLanding,_that.sleepLastNight,_that.dayOfWeek,_that.locationType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? beforeEvent,  String? travelStatus,  int? daysSinceLastActivity,  int? stressScoreBefore,  bool? afterFlight,  int? hoursAfterLanding,  double? sleepLastNight,  String? dayOfWeek,  String? locationType)  $default,) {final _that = this;
switch (_that) {
case _ActivityContext():
return $default(_that.beforeEvent,_that.travelStatus,_that.daysSinceLastActivity,_that.stressScoreBefore,_that.afterFlight,_that.hoursAfterLanding,_that.sleepLastNight,_that.dayOfWeek,_that.locationType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? beforeEvent,  String? travelStatus,  int? daysSinceLastActivity,  int? stressScoreBefore,  bool? afterFlight,  int? hoursAfterLanding,  double? sleepLastNight,  String? dayOfWeek,  String? locationType)?  $default,) {final _that = this;
switch (_that) {
case _ActivityContext() when $default != null:
return $default(_that.beforeEvent,_that.travelStatus,_that.daysSinceLastActivity,_that.stressScoreBefore,_that.afterFlight,_that.hoursAfterLanding,_that.sleepLastNight,_that.dayOfWeek,_that.locationType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityContext implements ActivityContext {
  const _ActivityContext({this.beforeEvent, this.travelStatus, this.daysSinceLastActivity, this.stressScoreBefore, this.afterFlight, this.hoursAfterLanding, this.sleepLastNight, this.dayOfWeek, this.locationType});
  factory _ActivityContext.fromJson(Map<String, dynamic> json) => _$ActivityContextFromJson(json);

@override final  String? beforeEvent;
@override final  String? travelStatus;
@override final  int? daysSinceLastActivity;
@override final  int? stressScoreBefore;
@override final  bool? afterFlight;
@override final  int? hoursAfterLanding;
@override final  double? sleepLastNight;
@override final  String? dayOfWeek;
@override final  String? locationType;

/// Create a copy of ActivityContext
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityContextCopyWith<_ActivityContext> get copyWith => __$ActivityContextCopyWithImpl<_ActivityContext>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityContextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityContext&&(identical(other.beforeEvent, beforeEvent) || other.beforeEvent == beforeEvent)&&(identical(other.travelStatus, travelStatus) || other.travelStatus == travelStatus)&&(identical(other.daysSinceLastActivity, daysSinceLastActivity) || other.daysSinceLastActivity == daysSinceLastActivity)&&(identical(other.stressScoreBefore, stressScoreBefore) || other.stressScoreBefore == stressScoreBefore)&&(identical(other.afterFlight, afterFlight) || other.afterFlight == afterFlight)&&(identical(other.hoursAfterLanding, hoursAfterLanding) || other.hoursAfterLanding == hoursAfterLanding)&&(identical(other.sleepLastNight, sleepLastNight) || other.sleepLastNight == sleepLastNight)&&(identical(other.dayOfWeek, dayOfWeek) || other.dayOfWeek == dayOfWeek)&&(identical(other.locationType, locationType) || other.locationType == locationType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,beforeEvent,travelStatus,daysSinceLastActivity,stressScoreBefore,afterFlight,hoursAfterLanding,sleepLastNight,dayOfWeek,locationType);

@override
String toString() {
  return 'ActivityContext(beforeEvent: $beforeEvent, travelStatus: $travelStatus, daysSinceLastActivity: $daysSinceLastActivity, stressScoreBefore: $stressScoreBefore, afterFlight: $afterFlight, hoursAfterLanding: $hoursAfterLanding, sleepLastNight: $sleepLastNight, dayOfWeek: $dayOfWeek, locationType: $locationType)';
}


}

/// @nodoc
abstract mixin class _$ActivityContextCopyWith<$Res> implements $ActivityContextCopyWith<$Res> {
  factory _$ActivityContextCopyWith(_ActivityContext value, $Res Function(_ActivityContext) _then) = __$ActivityContextCopyWithImpl;
@override @useResult
$Res call({
 String? beforeEvent, String? travelStatus, int? daysSinceLastActivity, int? stressScoreBefore, bool? afterFlight, int? hoursAfterLanding, double? sleepLastNight, String? dayOfWeek, String? locationType
});




}
/// @nodoc
class __$ActivityContextCopyWithImpl<$Res>
    implements _$ActivityContextCopyWith<$Res> {
  __$ActivityContextCopyWithImpl(this._self, this._then);

  final _ActivityContext _self;
  final $Res Function(_ActivityContext) _then;

/// Create a copy of ActivityContext
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? beforeEvent = freezed,Object? travelStatus = freezed,Object? daysSinceLastActivity = freezed,Object? stressScoreBefore = freezed,Object? afterFlight = freezed,Object? hoursAfterLanding = freezed,Object? sleepLastNight = freezed,Object? dayOfWeek = freezed,Object? locationType = freezed,}) {
  return _then(_ActivityContext(
beforeEvent: freezed == beforeEvent ? _self.beforeEvent : beforeEvent // ignore: cast_nullable_to_non_nullable
as String?,travelStatus: freezed == travelStatus ? _self.travelStatus : travelStatus // ignore: cast_nullable_to_non_nullable
as String?,daysSinceLastActivity: freezed == daysSinceLastActivity ? _self.daysSinceLastActivity : daysSinceLastActivity // ignore: cast_nullable_to_non_nullable
as int?,stressScoreBefore: freezed == stressScoreBefore ? _self.stressScoreBefore : stressScoreBefore // ignore: cast_nullable_to_non_nullable
as int?,afterFlight: freezed == afterFlight ? _self.afterFlight : afterFlight // ignore: cast_nullable_to_non_nullable
as bool?,hoursAfterLanding: freezed == hoursAfterLanding ? _self.hoursAfterLanding : hoursAfterLanding // ignore: cast_nullable_to_non_nullable
as int?,sleepLastNight: freezed == sleepLastNight ? _self.sleepLastNight : sleepLastNight // ignore: cast_nullable_to_non_nullable
as double?,dayOfWeek: freezed == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as String?,locationType: freezed == locationType ? _self.locationType : locationType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ActivityCompletion {

 String get activityId; String get type;// yoga, gym, meditation, etc.
 String get date;// ISO 8601 YYYY-MM-DD
 String get time;// HH:MM
 int get duration;// minutes
 String get location; String? get provider; ActivityContext get context; bool get completed; UserActivityFeedback? get userFeedback;
/// Create a copy of ActivityCompletion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityCompletionCopyWith<ActivityCompletion> get copyWith => _$ActivityCompletionCopyWithImpl<ActivityCompletion>(this as ActivityCompletion, _$identity);

  /// Serializes this ActivityCompletion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityCompletion&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.type, type) || other.type == type)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.location, location) || other.location == location)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.context, context) || other.context == context)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.userFeedback, userFeedback) || other.userFeedback == userFeedback));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activityId,type,date,time,duration,location,provider,context,completed,userFeedback);

@override
String toString() {
  return 'ActivityCompletion(activityId: $activityId, type: $type, date: $date, time: $time, duration: $duration, location: $location, provider: $provider, context: $context, completed: $completed, userFeedback: $userFeedback)';
}


}

/// @nodoc
abstract mixin class $ActivityCompletionCopyWith<$Res>  {
  factory $ActivityCompletionCopyWith(ActivityCompletion value, $Res Function(ActivityCompletion) _then) = _$ActivityCompletionCopyWithImpl;
@useResult
$Res call({
 String activityId, String type, String date, String time, int duration, String location, String? provider, ActivityContext context, bool completed, UserActivityFeedback? userFeedback
});


$ActivityContextCopyWith<$Res> get context;$UserActivityFeedbackCopyWith<$Res>? get userFeedback;

}
/// @nodoc
class _$ActivityCompletionCopyWithImpl<$Res>
    implements $ActivityCompletionCopyWith<$Res> {
  _$ActivityCompletionCopyWithImpl(this._self, this._then);

  final ActivityCompletion _self;
  final $Res Function(ActivityCompletion) _then;

/// Create a copy of ActivityCompletion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activityId = null,Object? type = null,Object? date = null,Object? time = null,Object? duration = null,Object? location = null,Object? provider = freezed,Object? context = null,Object? completed = null,Object? userFeedback = freezed,}) {
  return _then(_self.copyWith(
activityId: null == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as ActivityContext,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,userFeedback: freezed == userFeedback ? _self.userFeedback : userFeedback // ignore: cast_nullable_to_non_nullable
as UserActivityFeedback?,
  ));
}
/// Create a copy of ActivityCompletion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityContextCopyWith<$Res> get context {
  
  return $ActivityContextCopyWith<$Res>(_self.context, (value) {
    return _then(_self.copyWith(context: value));
  });
}/// Create a copy of ActivityCompletion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserActivityFeedbackCopyWith<$Res>? get userFeedback {
    if (_self.userFeedback == null) {
    return null;
  }

  return $UserActivityFeedbackCopyWith<$Res>(_self.userFeedback!, (value) {
    return _then(_self.copyWith(userFeedback: value));
  });
}
}


/// Adds pattern-matching-related methods to [ActivityCompletion].
extension ActivityCompletionPatterns on ActivityCompletion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityCompletion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityCompletion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityCompletion value)  $default,){
final _that = this;
switch (_that) {
case _ActivityCompletion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityCompletion value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityCompletion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String activityId,  String type,  String date,  String time,  int duration,  String location,  String? provider,  ActivityContext context,  bool completed,  UserActivityFeedback? userFeedback)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityCompletion() when $default != null:
return $default(_that.activityId,_that.type,_that.date,_that.time,_that.duration,_that.location,_that.provider,_that.context,_that.completed,_that.userFeedback);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String activityId,  String type,  String date,  String time,  int duration,  String location,  String? provider,  ActivityContext context,  bool completed,  UserActivityFeedback? userFeedback)  $default,) {final _that = this;
switch (_that) {
case _ActivityCompletion():
return $default(_that.activityId,_that.type,_that.date,_that.time,_that.duration,_that.location,_that.provider,_that.context,_that.completed,_that.userFeedback);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String activityId,  String type,  String date,  String time,  int duration,  String location,  String? provider,  ActivityContext context,  bool completed,  UserActivityFeedback? userFeedback)?  $default,) {final _that = this;
switch (_that) {
case _ActivityCompletion() when $default != null:
return $default(_that.activityId,_that.type,_that.date,_that.time,_that.duration,_that.location,_that.provider,_that.context,_that.completed,_that.userFeedback);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityCompletion implements ActivityCompletion {
  const _ActivityCompletion({required this.activityId, required this.type, required this.date, required this.time, required this.duration, required this.location, this.provider, required this.context, required this.completed, this.userFeedback});
  factory _ActivityCompletion.fromJson(Map<String, dynamic> json) => _$ActivityCompletionFromJson(json);

@override final  String activityId;
@override final  String type;
// yoga, gym, meditation, etc.
@override final  String date;
// ISO 8601 YYYY-MM-DD
@override final  String time;
// HH:MM
@override final  int duration;
// minutes
@override final  String location;
@override final  String? provider;
@override final  ActivityContext context;
@override final  bool completed;
@override final  UserActivityFeedback? userFeedback;

/// Create a copy of ActivityCompletion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityCompletionCopyWith<_ActivityCompletion> get copyWith => __$ActivityCompletionCopyWithImpl<_ActivityCompletion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityCompletionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityCompletion&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.type, type) || other.type == type)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.location, location) || other.location == location)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.context, context) || other.context == context)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.userFeedback, userFeedback) || other.userFeedback == userFeedback));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activityId,type,date,time,duration,location,provider,context,completed,userFeedback);

@override
String toString() {
  return 'ActivityCompletion(activityId: $activityId, type: $type, date: $date, time: $time, duration: $duration, location: $location, provider: $provider, context: $context, completed: $completed, userFeedback: $userFeedback)';
}


}

/// @nodoc
abstract mixin class _$ActivityCompletionCopyWith<$Res> implements $ActivityCompletionCopyWith<$Res> {
  factory _$ActivityCompletionCopyWith(_ActivityCompletion value, $Res Function(_ActivityCompletion) _then) = __$ActivityCompletionCopyWithImpl;
@override @useResult
$Res call({
 String activityId, String type, String date, String time, int duration, String location, String? provider, ActivityContext context, bool completed, UserActivityFeedback? userFeedback
});


@override $ActivityContextCopyWith<$Res> get context;@override $UserActivityFeedbackCopyWith<$Res>? get userFeedback;

}
/// @nodoc
class __$ActivityCompletionCopyWithImpl<$Res>
    implements _$ActivityCompletionCopyWith<$Res> {
  __$ActivityCompletionCopyWithImpl(this._self, this._then);

  final _ActivityCompletion _self;
  final $Res Function(_ActivityCompletion) _then;

/// Create a copy of ActivityCompletion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activityId = null,Object? type = null,Object? date = null,Object? time = null,Object? duration = null,Object? location = null,Object? provider = freezed,Object? context = null,Object? completed = null,Object? userFeedback = freezed,}) {
  return _then(_ActivityCompletion(
activityId: null == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as ActivityContext,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,userFeedback: freezed == userFeedback ? _self.userFeedback : userFeedback // ignore: cast_nullable_to_non_nullable
as UserActivityFeedback?,
  ));
}

/// Create a copy of ActivityCompletion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityContextCopyWith<$Res> get context {
  
  return $ActivityContextCopyWith<$Res>(_self.context, (value) {
    return _then(_self.copyWith(context: value));
  });
}/// Create a copy of ActivityCompletion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserActivityFeedbackCopyWith<$Res>? get userFeedback {
    if (_self.userFeedback == null) {
    return null;
  }

  return $UserActivityFeedbackCopyWith<$Res>(_self.userFeedback!, (value) {
    return _then(_self.copyWith(userFeedback: value));
  });
}
}


/// @nodoc
mixin _$HealthMetricsChange {

 double get hrvBefore; double get hrvAfter; String get hrvChange;// e.g., "+17.8%"
 int get sleepQualityNight; int get sleepQualityAvg; int get restingHRNextDay; int get restingHRBaseline; int get stressScoreAfter; int get stressScoreDelta;
/// Create a copy of HealthMetricsChange
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthMetricsChangeCopyWith<HealthMetricsChange> get copyWith => _$HealthMetricsChangeCopyWithImpl<HealthMetricsChange>(this as HealthMetricsChange, _$identity);

  /// Serializes this HealthMetricsChange to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthMetricsChange&&(identical(other.hrvBefore, hrvBefore) || other.hrvBefore == hrvBefore)&&(identical(other.hrvAfter, hrvAfter) || other.hrvAfter == hrvAfter)&&(identical(other.hrvChange, hrvChange) || other.hrvChange == hrvChange)&&(identical(other.sleepQualityNight, sleepQualityNight) || other.sleepQualityNight == sleepQualityNight)&&(identical(other.sleepQualityAvg, sleepQualityAvg) || other.sleepQualityAvg == sleepQualityAvg)&&(identical(other.restingHRNextDay, restingHRNextDay) || other.restingHRNextDay == restingHRNextDay)&&(identical(other.restingHRBaseline, restingHRBaseline) || other.restingHRBaseline == restingHRBaseline)&&(identical(other.stressScoreAfter, stressScoreAfter) || other.stressScoreAfter == stressScoreAfter)&&(identical(other.stressScoreDelta, stressScoreDelta) || other.stressScoreDelta == stressScoreDelta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hrvBefore,hrvAfter,hrvChange,sleepQualityNight,sleepQualityAvg,restingHRNextDay,restingHRBaseline,stressScoreAfter,stressScoreDelta);

@override
String toString() {
  return 'HealthMetricsChange(hrvBefore: $hrvBefore, hrvAfter: $hrvAfter, hrvChange: $hrvChange, sleepQualityNight: $sleepQualityNight, sleepQualityAvg: $sleepQualityAvg, restingHRNextDay: $restingHRNextDay, restingHRBaseline: $restingHRBaseline, stressScoreAfter: $stressScoreAfter, stressScoreDelta: $stressScoreDelta)';
}


}

/// @nodoc
abstract mixin class $HealthMetricsChangeCopyWith<$Res>  {
  factory $HealthMetricsChangeCopyWith(HealthMetricsChange value, $Res Function(HealthMetricsChange) _then) = _$HealthMetricsChangeCopyWithImpl;
@useResult
$Res call({
 double hrvBefore, double hrvAfter, String hrvChange, int sleepQualityNight, int sleepQualityAvg, int restingHRNextDay, int restingHRBaseline, int stressScoreAfter, int stressScoreDelta
});




}
/// @nodoc
class _$HealthMetricsChangeCopyWithImpl<$Res>
    implements $HealthMetricsChangeCopyWith<$Res> {
  _$HealthMetricsChangeCopyWithImpl(this._self, this._then);

  final HealthMetricsChange _self;
  final $Res Function(HealthMetricsChange) _then;

/// Create a copy of HealthMetricsChange
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hrvBefore = null,Object? hrvAfter = null,Object? hrvChange = null,Object? sleepQualityNight = null,Object? sleepQualityAvg = null,Object? restingHRNextDay = null,Object? restingHRBaseline = null,Object? stressScoreAfter = null,Object? stressScoreDelta = null,}) {
  return _then(_self.copyWith(
hrvBefore: null == hrvBefore ? _self.hrvBefore : hrvBefore // ignore: cast_nullable_to_non_nullable
as double,hrvAfter: null == hrvAfter ? _self.hrvAfter : hrvAfter // ignore: cast_nullable_to_non_nullable
as double,hrvChange: null == hrvChange ? _self.hrvChange : hrvChange // ignore: cast_nullable_to_non_nullable
as String,sleepQualityNight: null == sleepQualityNight ? _self.sleepQualityNight : sleepQualityNight // ignore: cast_nullable_to_non_nullable
as int,sleepQualityAvg: null == sleepQualityAvg ? _self.sleepQualityAvg : sleepQualityAvg // ignore: cast_nullable_to_non_nullable
as int,restingHRNextDay: null == restingHRNextDay ? _self.restingHRNextDay : restingHRNextDay // ignore: cast_nullable_to_non_nullable
as int,restingHRBaseline: null == restingHRBaseline ? _self.restingHRBaseline : restingHRBaseline // ignore: cast_nullable_to_non_nullable
as int,stressScoreAfter: null == stressScoreAfter ? _self.stressScoreAfter : stressScoreAfter // ignore: cast_nullable_to_non_nullable
as int,stressScoreDelta: null == stressScoreDelta ? _self.stressScoreDelta : stressScoreDelta // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HealthMetricsChange].
extension HealthMetricsChangePatterns on HealthMetricsChange {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthMetricsChange value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthMetricsChange() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthMetricsChange value)  $default,){
final _that = this;
switch (_that) {
case _HealthMetricsChange():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthMetricsChange value)?  $default,){
final _that = this;
switch (_that) {
case _HealthMetricsChange() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double hrvBefore,  double hrvAfter,  String hrvChange,  int sleepQualityNight,  int sleepQualityAvg,  int restingHRNextDay,  int restingHRBaseline,  int stressScoreAfter,  int stressScoreDelta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthMetricsChange() when $default != null:
return $default(_that.hrvBefore,_that.hrvAfter,_that.hrvChange,_that.sleepQualityNight,_that.sleepQualityAvg,_that.restingHRNextDay,_that.restingHRBaseline,_that.stressScoreAfter,_that.stressScoreDelta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double hrvBefore,  double hrvAfter,  String hrvChange,  int sleepQualityNight,  int sleepQualityAvg,  int restingHRNextDay,  int restingHRBaseline,  int stressScoreAfter,  int stressScoreDelta)  $default,) {final _that = this;
switch (_that) {
case _HealthMetricsChange():
return $default(_that.hrvBefore,_that.hrvAfter,_that.hrvChange,_that.sleepQualityNight,_that.sleepQualityAvg,_that.restingHRNextDay,_that.restingHRBaseline,_that.stressScoreAfter,_that.stressScoreDelta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double hrvBefore,  double hrvAfter,  String hrvChange,  int sleepQualityNight,  int sleepQualityAvg,  int restingHRNextDay,  int restingHRBaseline,  int stressScoreAfter,  int stressScoreDelta)?  $default,) {final _that = this;
switch (_that) {
case _HealthMetricsChange() when $default != null:
return $default(_that.hrvBefore,_that.hrvAfter,_that.hrvChange,_that.sleepQualityNight,_that.sleepQualityAvg,_that.restingHRNextDay,_that.restingHRBaseline,_that.stressScoreAfter,_that.stressScoreDelta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthMetricsChange implements HealthMetricsChange {
  const _HealthMetricsChange({required this.hrvBefore, required this.hrvAfter, required this.hrvChange, required this.sleepQualityNight, required this.sleepQualityAvg, required this.restingHRNextDay, required this.restingHRBaseline, required this.stressScoreAfter, required this.stressScoreDelta});
  factory _HealthMetricsChange.fromJson(Map<String, dynamic> json) => _$HealthMetricsChangeFromJson(json);

@override final  double hrvBefore;
@override final  double hrvAfter;
@override final  String hrvChange;
// e.g., "+17.8%"
@override final  int sleepQualityNight;
@override final  int sleepQualityAvg;
@override final  int restingHRNextDay;
@override final  int restingHRBaseline;
@override final  int stressScoreAfter;
@override final  int stressScoreDelta;

/// Create a copy of HealthMetricsChange
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthMetricsChangeCopyWith<_HealthMetricsChange> get copyWith => __$HealthMetricsChangeCopyWithImpl<_HealthMetricsChange>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthMetricsChangeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthMetricsChange&&(identical(other.hrvBefore, hrvBefore) || other.hrvBefore == hrvBefore)&&(identical(other.hrvAfter, hrvAfter) || other.hrvAfter == hrvAfter)&&(identical(other.hrvChange, hrvChange) || other.hrvChange == hrvChange)&&(identical(other.sleepQualityNight, sleepQualityNight) || other.sleepQualityNight == sleepQualityNight)&&(identical(other.sleepQualityAvg, sleepQualityAvg) || other.sleepQualityAvg == sleepQualityAvg)&&(identical(other.restingHRNextDay, restingHRNextDay) || other.restingHRNextDay == restingHRNextDay)&&(identical(other.restingHRBaseline, restingHRBaseline) || other.restingHRBaseline == restingHRBaseline)&&(identical(other.stressScoreAfter, stressScoreAfter) || other.stressScoreAfter == stressScoreAfter)&&(identical(other.stressScoreDelta, stressScoreDelta) || other.stressScoreDelta == stressScoreDelta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hrvBefore,hrvAfter,hrvChange,sleepQualityNight,sleepQualityAvg,restingHRNextDay,restingHRBaseline,stressScoreAfter,stressScoreDelta);

@override
String toString() {
  return 'HealthMetricsChange(hrvBefore: $hrvBefore, hrvAfter: $hrvAfter, hrvChange: $hrvChange, sleepQualityNight: $sleepQualityNight, sleepQualityAvg: $sleepQualityAvg, restingHRNextDay: $restingHRNextDay, restingHRBaseline: $restingHRBaseline, stressScoreAfter: $stressScoreAfter, stressScoreDelta: $stressScoreDelta)';
}


}

/// @nodoc
abstract mixin class _$HealthMetricsChangeCopyWith<$Res> implements $HealthMetricsChangeCopyWith<$Res> {
  factory _$HealthMetricsChangeCopyWith(_HealthMetricsChange value, $Res Function(_HealthMetricsChange) _then) = __$HealthMetricsChangeCopyWithImpl;
@override @useResult
$Res call({
 double hrvBefore, double hrvAfter, String hrvChange, int sleepQualityNight, int sleepQualityAvg, int restingHRNextDay, int restingHRBaseline, int stressScoreAfter, int stressScoreDelta
});




}
/// @nodoc
class __$HealthMetricsChangeCopyWithImpl<$Res>
    implements _$HealthMetricsChangeCopyWith<$Res> {
  __$HealthMetricsChangeCopyWithImpl(this._self, this._then);

  final _HealthMetricsChange _self;
  final $Res Function(_HealthMetricsChange) _then;

/// Create a copy of HealthMetricsChange
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hrvBefore = null,Object? hrvAfter = null,Object? hrvChange = null,Object? sleepQualityNight = null,Object? sleepQualityAvg = null,Object? restingHRNextDay = null,Object? restingHRBaseline = null,Object? stressScoreAfter = null,Object? stressScoreDelta = null,}) {
  return _then(_HealthMetricsChange(
hrvBefore: null == hrvBefore ? _self.hrvBefore : hrvBefore // ignore: cast_nullable_to_non_nullable
as double,hrvAfter: null == hrvAfter ? _self.hrvAfter : hrvAfter // ignore: cast_nullable_to_non_nullable
as double,hrvChange: null == hrvChange ? _self.hrvChange : hrvChange // ignore: cast_nullable_to_non_nullable
as String,sleepQualityNight: null == sleepQualityNight ? _self.sleepQualityNight : sleepQualityNight // ignore: cast_nullable_to_non_nullable
as int,sleepQualityAvg: null == sleepQualityAvg ? _self.sleepQualityAvg : sleepQualityAvg // ignore: cast_nullable_to_non_nullable
as int,restingHRNextDay: null == restingHRNextDay ? _self.restingHRNextDay : restingHRNextDay // ignore: cast_nullable_to_non_nullable
as int,restingHRBaseline: null == restingHRBaseline ? _self.restingHRBaseline : restingHRBaseline // ignore: cast_nullable_to_non_nullable
as int,stressScoreAfter: null == stressScoreAfter ? _self.stressScoreAfter : stressScoreAfter // ignore: cast_nullable_to_non_nullable
as int,stressScoreDelta: null == stressScoreDelta ? _self.stressScoreDelta : stressScoreDelta // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$HealthImpact {

 String get activityId; HealthMetricsChange get healthMetrics; String get timeframe;
/// Create a copy of HealthImpact
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthImpactCopyWith<HealthImpact> get copyWith => _$HealthImpactCopyWithImpl<HealthImpact>(this as HealthImpact, _$identity);

  /// Serializes this HealthImpact to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthImpact&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.healthMetrics, healthMetrics) || other.healthMetrics == healthMetrics)&&(identical(other.timeframe, timeframe) || other.timeframe == timeframe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activityId,healthMetrics,timeframe);

@override
String toString() {
  return 'HealthImpact(activityId: $activityId, healthMetrics: $healthMetrics, timeframe: $timeframe)';
}


}

/// @nodoc
abstract mixin class $HealthImpactCopyWith<$Res>  {
  factory $HealthImpactCopyWith(HealthImpact value, $Res Function(HealthImpact) _then) = _$HealthImpactCopyWithImpl;
@useResult
$Res call({
 String activityId, HealthMetricsChange healthMetrics, String timeframe
});


$HealthMetricsChangeCopyWith<$Res> get healthMetrics;

}
/// @nodoc
class _$HealthImpactCopyWithImpl<$Res>
    implements $HealthImpactCopyWith<$Res> {
  _$HealthImpactCopyWithImpl(this._self, this._then);

  final HealthImpact _self;
  final $Res Function(HealthImpact) _then;

/// Create a copy of HealthImpact
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activityId = null,Object? healthMetrics = null,Object? timeframe = null,}) {
  return _then(_self.copyWith(
activityId: null == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as String,healthMetrics: null == healthMetrics ? _self.healthMetrics : healthMetrics // ignore: cast_nullable_to_non_nullable
as HealthMetricsChange,timeframe: null == timeframe ? _self.timeframe : timeframe // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of HealthImpact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthMetricsChangeCopyWith<$Res> get healthMetrics {
  
  return $HealthMetricsChangeCopyWith<$Res>(_self.healthMetrics, (value) {
    return _then(_self.copyWith(healthMetrics: value));
  });
}
}


/// Adds pattern-matching-related methods to [HealthImpact].
extension HealthImpactPatterns on HealthImpact {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthImpact value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthImpact() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthImpact value)  $default,){
final _that = this;
switch (_that) {
case _HealthImpact():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthImpact value)?  $default,){
final _that = this;
switch (_that) {
case _HealthImpact() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String activityId,  HealthMetricsChange healthMetrics,  String timeframe)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthImpact() when $default != null:
return $default(_that.activityId,_that.healthMetrics,_that.timeframe);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String activityId,  HealthMetricsChange healthMetrics,  String timeframe)  $default,) {final _that = this;
switch (_that) {
case _HealthImpact():
return $default(_that.activityId,_that.healthMetrics,_that.timeframe);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String activityId,  HealthMetricsChange healthMetrics,  String timeframe)?  $default,) {final _that = this;
switch (_that) {
case _HealthImpact() when $default != null:
return $default(_that.activityId,_that.healthMetrics,_that.timeframe);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthImpact implements HealthImpact {
  const _HealthImpact({required this.activityId, required this.healthMetrics, required this.timeframe});
  factory _HealthImpact.fromJson(Map<String, dynamic> json) => _$HealthImpactFromJson(json);

@override final  String activityId;
@override final  HealthMetricsChange healthMetrics;
@override final  String timeframe;

/// Create a copy of HealthImpact
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthImpactCopyWith<_HealthImpact> get copyWith => __$HealthImpactCopyWithImpl<_HealthImpact>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthImpactToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthImpact&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.healthMetrics, healthMetrics) || other.healthMetrics == healthMetrics)&&(identical(other.timeframe, timeframe) || other.timeframe == timeframe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activityId,healthMetrics,timeframe);

@override
String toString() {
  return 'HealthImpact(activityId: $activityId, healthMetrics: $healthMetrics, timeframe: $timeframe)';
}


}

/// @nodoc
abstract mixin class _$HealthImpactCopyWith<$Res> implements $HealthImpactCopyWith<$Res> {
  factory _$HealthImpactCopyWith(_HealthImpact value, $Res Function(_HealthImpact) _then) = __$HealthImpactCopyWithImpl;
@override @useResult
$Res call({
 String activityId, HealthMetricsChange healthMetrics, String timeframe
});


@override $HealthMetricsChangeCopyWith<$Res> get healthMetrics;

}
/// @nodoc
class __$HealthImpactCopyWithImpl<$Res>
    implements _$HealthImpactCopyWith<$Res> {
  __$HealthImpactCopyWithImpl(this._self, this._then);

  final _HealthImpact _self;
  final $Res Function(_HealthImpact) _then;

/// Create a copy of HealthImpact
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activityId = null,Object? healthMetrics = null,Object? timeframe = null,}) {
  return _then(_HealthImpact(
activityId: null == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as String,healthMetrics: null == healthMetrics ? _self.healthMetrics : healthMetrics // ignore: cast_nullable_to_non_nullable
as HealthMetricsChange,timeframe: null == timeframe ? _self.timeframe : timeframe // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of HealthImpact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealthMetricsChangeCopyWith<$Res> get healthMetrics {
  
  return $HealthMetricsChangeCopyWith<$Res>(_self.healthMetrics, (value) {
    return _then(_self.copyWith(healthMetrics: value));
  });
}
}


/// @nodoc
mixin _$SkipData {

 String get activityId; String get type; bool get scheduled; bool get completed;// should be false
 String get cancellationReason; ActivityContext get context;
/// Create a copy of SkipData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkipDataCopyWith<SkipData> get copyWith => _$SkipDataCopyWithImpl<SkipData>(this as SkipData, _$identity);

  /// Serializes this SkipData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkipData&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.type, type) || other.type == type)&&(identical(other.scheduled, scheduled) || other.scheduled == scheduled)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.cancellationReason, cancellationReason) || other.cancellationReason == cancellationReason)&&(identical(other.context, context) || other.context == context));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activityId,type,scheduled,completed,cancellationReason,context);

@override
String toString() {
  return 'SkipData(activityId: $activityId, type: $type, scheduled: $scheduled, completed: $completed, cancellationReason: $cancellationReason, context: $context)';
}


}

/// @nodoc
abstract mixin class $SkipDataCopyWith<$Res>  {
  factory $SkipDataCopyWith(SkipData value, $Res Function(SkipData) _then) = _$SkipDataCopyWithImpl;
@useResult
$Res call({
 String activityId, String type, bool scheduled, bool completed, String cancellationReason, ActivityContext context
});


$ActivityContextCopyWith<$Res> get context;

}
/// @nodoc
class _$SkipDataCopyWithImpl<$Res>
    implements $SkipDataCopyWith<$Res> {
  _$SkipDataCopyWithImpl(this._self, this._then);

  final SkipData _self;
  final $Res Function(SkipData) _then;

/// Create a copy of SkipData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activityId = null,Object? type = null,Object? scheduled = null,Object? completed = null,Object? cancellationReason = null,Object? context = null,}) {
  return _then(_self.copyWith(
activityId: null == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,scheduled: null == scheduled ? _self.scheduled : scheduled // ignore: cast_nullable_to_non_nullable
as bool,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,cancellationReason: null == cancellationReason ? _self.cancellationReason : cancellationReason // ignore: cast_nullable_to_non_nullable
as String,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as ActivityContext,
  ));
}
/// Create a copy of SkipData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityContextCopyWith<$Res> get context {
  
  return $ActivityContextCopyWith<$Res>(_self.context, (value) {
    return _then(_self.copyWith(context: value));
  });
}
}


/// Adds pattern-matching-related methods to [SkipData].
extension SkipDataPatterns on SkipData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SkipData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SkipData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SkipData value)  $default,){
final _that = this;
switch (_that) {
case _SkipData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SkipData value)?  $default,){
final _that = this;
switch (_that) {
case _SkipData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String activityId,  String type,  bool scheduled,  bool completed,  String cancellationReason,  ActivityContext context)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkipData() when $default != null:
return $default(_that.activityId,_that.type,_that.scheduled,_that.completed,_that.cancellationReason,_that.context);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String activityId,  String type,  bool scheduled,  bool completed,  String cancellationReason,  ActivityContext context)  $default,) {final _that = this;
switch (_that) {
case _SkipData():
return $default(_that.activityId,_that.type,_that.scheduled,_that.completed,_that.cancellationReason,_that.context);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String activityId,  String type,  bool scheduled,  bool completed,  String cancellationReason,  ActivityContext context)?  $default,) {final _that = this;
switch (_that) {
case _SkipData() when $default != null:
return $default(_that.activityId,_that.type,_that.scheduled,_that.completed,_that.cancellationReason,_that.context);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SkipData implements SkipData {
  const _SkipData({required this.activityId, required this.type, required this.scheduled, required this.completed, required this.cancellationReason, required this.context});
  factory _SkipData.fromJson(Map<String, dynamic> json) => _$SkipDataFromJson(json);

@override final  String activityId;
@override final  String type;
@override final  bool scheduled;
@override final  bool completed;
// should be false
@override final  String cancellationReason;
@override final  ActivityContext context;

/// Create a copy of SkipData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkipDataCopyWith<_SkipData> get copyWith => __$SkipDataCopyWithImpl<_SkipData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SkipDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkipData&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.type, type) || other.type == type)&&(identical(other.scheduled, scheduled) || other.scheduled == scheduled)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.cancellationReason, cancellationReason) || other.cancellationReason == cancellationReason)&&(identical(other.context, context) || other.context == context));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activityId,type,scheduled,completed,cancellationReason,context);

@override
String toString() {
  return 'SkipData(activityId: $activityId, type: $type, scheduled: $scheduled, completed: $completed, cancellationReason: $cancellationReason, context: $context)';
}


}

/// @nodoc
abstract mixin class _$SkipDataCopyWith<$Res> implements $SkipDataCopyWith<$Res> {
  factory _$SkipDataCopyWith(_SkipData value, $Res Function(_SkipData) _then) = __$SkipDataCopyWithImpl;
@override @useResult
$Res call({
 String activityId, String type, bool scheduled, bool completed, String cancellationReason, ActivityContext context
});


@override $ActivityContextCopyWith<$Res> get context;

}
/// @nodoc
class __$SkipDataCopyWithImpl<$Res>
    implements _$SkipDataCopyWith<$Res> {
  __$SkipDataCopyWithImpl(this._self, this._then);

  final _SkipData _self;
  final $Res Function(_SkipData) _then;

/// Create a copy of SkipData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activityId = null,Object? type = null,Object? scheduled = null,Object? completed = null,Object? cancellationReason = null,Object? context = null,}) {
  return _then(_SkipData(
activityId: null == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,scheduled: null == scheduled ? _self.scheduled : scheduled // ignore: cast_nullable_to_non_nullable
as bool,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as bool,cancellationReason: null == cancellationReason ? _self.cancellationReason : cancellationReason // ignore: cast_nullable_to_non_nullable
as String,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as ActivityContext,
  ));
}

/// Create a copy of SkipData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityContextCopyWith<$Res> get context {
  
  return $ActivityContextCopyWith<$Res>(_self.context, (value) {
    return _then(_self.copyWith(context: value));
  });
}
}


/// @nodoc
mixin _$ActivityEffectiveness {

 String get activityType; double get completionRate; String? get avgHRVImprovement; String? get avgSleepImprovement; int? get avgStressReduction; List<String> get mostEffectiveContexts; List<String> get leastEffectiveContexts; List<String> get skipReasons; String? get userSentiment;// positive, negative, neutral
 String? get recommendation;// e.g., "STOP suggesting hotel gyms"
 double get confidence;
/// Create a copy of ActivityEffectiveness
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityEffectivenessCopyWith<ActivityEffectiveness> get copyWith => _$ActivityEffectivenessCopyWithImpl<ActivityEffectiveness>(this as ActivityEffectiveness, _$identity);

  /// Serializes this ActivityEffectiveness to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityEffectiveness&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.completionRate, completionRate) || other.completionRate == completionRate)&&(identical(other.avgHRVImprovement, avgHRVImprovement) || other.avgHRVImprovement == avgHRVImprovement)&&(identical(other.avgSleepImprovement, avgSleepImprovement) || other.avgSleepImprovement == avgSleepImprovement)&&(identical(other.avgStressReduction, avgStressReduction) || other.avgStressReduction == avgStressReduction)&&const DeepCollectionEquality().equals(other.mostEffectiveContexts, mostEffectiveContexts)&&const DeepCollectionEquality().equals(other.leastEffectiveContexts, leastEffectiveContexts)&&const DeepCollectionEquality().equals(other.skipReasons, skipReasons)&&(identical(other.userSentiment, userSentiment) || other.userSentiment == userSentiment)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activityType,completionRate,avgHRVImprovement,avgSleepImprovement,avgStressReduction,const DeepCollectionEquality().hash(mostEffectiveContexts),const DeepCollectionEquality().hash(leastEffectiveContexts),const DeepCollectionEquality().hash(skipReasons),userSentiment,recommendation,confidence);

@override
String toString() {
  return 'ActivityEffectiveness(activityType: $activityType, completionRate: $completionRate, avgHRVImprovement: $avgHRVImprovement, avgSleepImprovement: $avgSleepImprovement, avgStressReduction: $avgStressReduction, mostEffectiveContexts: $mostEffectiveContexts, leastEffectiveContexts: $leastEffectiveContexts, skipReasons: $skipReasons, userSentiment: $userSentiment, recommendation: $recommendation, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class $ActivityEffectivenessCopyWith<$Res>  {
  factory $ActivityEffectivenessCopyWith(ActivityEffectiveness value, $Res Function(ActivityEffectiveness) _then) = _$ActivityEffectivenessCopyWithImpl;
@useResult
$Res call({
 String activityType, double completionRate, String? avgHRVImprovement, String? avgSleepImprovement, int? avgStressReduction, List<String> mostEffectiveContexts, List<String> leastEffectiveContexts, List<String> skipReasons, String? userSentiment, String? recommendation, double confidence
});




}
/// @nodoc
class _$ActivityEffectivenessCopyWithImpl<$Res>
    implements $ActivityEffectivenessCopyWith<$Res> {
  _$ActivityEffectivenessCopyWithImpl(this._self, this._then);

  final ActivityEffectiveness _self;
  final $Res Function(ActivityEffectiveness) _then;

/// Create a copy of ActivityEffectiveness
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activityType = null,Object? completionRate = null,Object? avgHRVImprovement = freezed,Object? avgSleepImprovement = freezed,Object? avgStressReduction = freezed,Object? mostEffectiveContexts = null,Object? leastEffectiveContexts = null,Object? skipReasons = null,Object? userSentiment = freezed,Object? recommendation = freezed,Object? confidence = null,}) {
  return _then(_self.copyWith(
activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,completionRate: null == completionRate ? _self.completionRate : completionRate // ignore: cast_nullable_to_non_nullable
as double,avgHRVImprovement: freezed == avgHRVImprovement ? _self.avgHRVImprovement : avgHRVImprovement // ignore: cast_nullable_to_non_nullable
as String?,avgSleepImprovement: freezed == avgSleepImprovement ? _self.avgSleepImprovement : avgSleepImprovement // ignore: cast_nullable_to_non_nullable
as String?,avgStressReduction: freezed == avgStressReduction ? _self.avgStressReduction : avgStressReduction // ignore: cast_nullable_to_non_nullable
as int?,mostEffectiveContexts: null == mostEffectiveContexts ? _self.mostEffectiveContexts : mostEffectiveContexts // ignore: cast_nullable_to_non_nullable
as List<String>,leastEffectiveContexts: null == leastEffectiveContexts ? _self.leastEffectiveContexts : leastEffectiveContexts // ignore: cast_nullable_to_non_nullable
as List<String>,skipReasons: null == skipReasons ? _self.skipReasons : skipReasons // ignore: cast_nullable_to_non_nullable
as List<String>,userSentiment: freezed == userSentiment ? _self.userSentiment : userSentiment // ignore: cast_nullable_to_non_nullable
as String?,recommendation: freezed == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as String?,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityEffectiveness].
extension ActivityEffectivenessPatterns on ActivityEffectiveness {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityEffectiveness value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityEffectiveness() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityEffectiveness value)  $default,){
final _that = this;
switch (_that) {
case _ActivityEffectiveness():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityEffectiveness value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityEffectiveness() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String activityType,  double completionRate,  String? avgHRVImprovement,  String? avgSleepImprovement,  int? avgStressReduction,  List<String> mostEffectiveContexts,  List<String> leastEffectiveContexts,  List<String> skipReasons,  String? userSentiment,  String? recommendation,  double confidence)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityEffectiveness() when $default != null:
return $default(_that.activityType,_that.completionRate,_that.avgHRVImprovement,_that.avgSleepImprovement,_that.avgStressReduction,_that.mostEffectiveContexts,_that.leastEffectiveContexts,_that.skipReasons,_that.userSentiment,_that.recommendation,_that.confidence);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String activityType,  double completionRate,  String? avgHRVImprovement,  String? avgSleepImprovement,  int? avgStressReduction,  List<String> mostEffectiveContexts,  List<String> leastEffectiveContexts,  List<String> skipReasons,  String? userSentiment,  String? recommendation,  double confidence)  $default,) {final _that = this;
switch (_that) {
case _ActivityEffectiveness():
return $default(_that.activityType,_that.completionRate,_that.avgHRVImprovement,_that.avgSleepImprovement,_that.avgStressReduction,_that.mostEffectiveContexts,_that.leastEffectiveContexts,_that.skipReasons,_that.userSentiment,_that.recommendation,_that.confidence);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String activityType,  double completionRate,  String? avgHRVImprovement,  String? avgSleepImprovement,  int? avgStressReduction,  List<String> mostEffectiveContexts,  List<String> leastEffectiveContexts,  List<String> skipReasons,  String? userSentiment,  String? recommendation,  double confidence)?  $default,) {final _that = this;
switch (_that) {
case _ActivityEffectiveness() when $default != null:
return $default(_that.activityType,_that.completionRate,_that.avgHRVImprovement,_that.avgSleepImprovement,_that.avgStressReduction,_that.mostEffectiveContexts,_that.leastEffectiveContexts,_that.skipReasons,_that.userSentiment,_that.recommendation,_that.confidence);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityEffectiveness implements ActivityEffectiveness {
  const _ActivityEffectiveness({required this.activityType, required this.completionRate, this.avgHRVImprovement, this.avgSleepImprovement, this.avgStressReduction, final  List<String> mostEffectiveContexts = const [], final  List<String> leastEffectiveContexts = const [], final  List<String> skipReasons = const [], this.userSentiment, this.recommendation, required this.confidence}): _mostEffectiveContexts = mostEffectiveContexts,_leastEffectiveContexts = leastEffectiveContexts,_skipReasons = skipReasons;
  factory _ActivityEffectiveness.fromJson(Map<String, dynamic> json) => _$ActivityEffectivenessFromJson(json);

@override final  String activityType;
@override final  double completionRate;
@override final  String? avgHRVImprovement;
@override final  String? avgSleepImprovement;
@override final  int? avgStressReduction;
 final  List<String> _mostEffectiveContexts;
@override@JsonKey() List<String> get mostEffectiveContexts {
  if (_mostEffectiveContexts is EqualUnmodifiableListView) return _mostEffectiveContexts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mostEffectiveContexts);
}

 final  List<String> _leastEffectiveContexts;
@override@JsonKey() List<String> get leastEffectiveContexts {
  if (_leastEffectiveContexts is EqualUnmodifiableListView) return _leastEffectiveContexts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_leastEffectiveContexts);
}

 final  List<String> _skipReasons;
@override@JsonKey() List<String> get skipReasons {
  if (_skipReasons is EqualUnmodifiableListView) return _skipReasons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skipReasons);
}

@override final  String? userSentiment;
// positive, negative, neutral
@override final  String? recommendation;
// e.g., "STOP suggesting hotel gyms"
@override final  double confidence;

/// Create a copy of ActivityEffectiveness
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityEffectivenessCopyWith<_ActivityEffectiveness> get copyWith => __$ActivityEffectivenessCopyWithImpl<_ActivityEffectiveness>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityEffectivenessToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityEffectiveness&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.completionRate, completionRate) || other.completionRate == completionRate)&&(identical(other.avgHRVImprovement, avgHRVImprovement) || other.avgHRVImprovement == avgHRVImprovement)&&(identical(other.avgSleepImprovement, avgSleepImprovement) || other.avgSleepImprovement == avgSleepImprovement)&&(identical(other.avgStressReduction, avgStressReduction) || other.avgStressReduction == avgStressReduction)&&const DeepCollectionEquality().equals(other._mostEffectiveContexts, _mostEffectiveContexts)&&const DeepCollectionEquality().equals(other._leastEffectiveContexts, _leastEffectiveContexts)&&const DeepCollectionEquality().equals(other._skipReasons, _skipReasons)&&(identical(other.userSentiment, userSentiment) || other.userSentiment == userSentiment)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activityType,completionRate,avgHRVImprovement,avgSleepImprovement,avgStressReduction,const DeepCollectionEquality().hash(_mostEffectiveContexts),const DeepCollectionEquality().hash(_leastEffectiveContexts),const DeepCollectionEquality().hash(_skipReasons),userSentiment,recommendation,confidence);

@override
String toString() {
  return 'ActivityEffectiveness(activityType: $activityType, completionRate: $completionRate, avgHRVImprovement: $avgHRVImprovement, avgSleepImprovement: $avgSleepImprovement, avgStressReduction: $avgStressReduction, mostEffectiveContexts: $mostEffectiveContexts, leastEffectiveContexts: $leastEffectiveContexts, skipReasons: $skipReasons, userSentiment: $userSentiment, recommendation: $recommendation, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class _$ActivityEffectivenessCopyWith<$Res> implements $ActivityEffectivenessCopyWith<$Res> {
  factory _$ActivityEffectivenessCopyWith(_ActivityEffectiveness value, $Res Function(_ActivityEffectiveness) _then) = __$ActivityEffectivenessCopyWithImpl;
@override @useResult
$Res call({
 String activityType, double completionRate, String? avgHRVImprovement, String? avgSleepImprovement, int? avgStressReduction, List<String> mostEffectiveContexts, List<String> leastEffectiveContexts, List<String> skipReasons, String? userSentiment, String? recommendation, double confidence
});




}
/// @nodoc
class __$ActivityEffectivenessCopyWithImpl<$Res>
    implements _$ActivityEffectivenessCopyWith<$Res> {
  __$ActivityEffectivenessCopyWithImpl(this._self, this._then);

  final _ActivityEffectiveness _self;
  final $Res Function(_ActivityEffectiveness) _then;

/// Create a copy of ActivityEffectiveness
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activityType = null,Object? completionRate = null,Object? avgHRVImprovement = freezed,Object? avgSleepImprovement = freezed,Object? avgStressReduction = freezed,Object? mostEffectiveContexts = null,Object? leastEffectiveContexts = null,Object? skipReasons = null,Object? userSentiment = freezed,Object? recommendation = freezed,Object? confidence = null,}) {
  return _then(_ActivityEffectiveness(
activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,completionRate: null == completionRate ? _self.completionRate : completionRate // ignore: cast_nullable_to_non_nullable
as double,avgHRVImprovement: freezed == avgHRVImprovement ? _self.avgHRVImprovement : avgHRVImprovement // ignore: cast_nullable_to_non_nullable
as String?,avgSleepImprovement: freezed == avgSleepImprovement ? _self.avgSleepImprovement : avgSleepImprovement // ignore: cast_nullable_to_non_nullable
as String?,avgStressReduction: freezed == avgStressReduction ? _self.avgStressReduction : avgStressReduction // ignore: cast_nullable_to_non_nullable
as int?,mostEffectiveContexts: null == mostEffectiveContexts ? _self._mostEffectiveContexts : mostEffectiveContexts // ignore: cast_nullable_to_non_nullable
as List<String>,leastEffectiveContexts: null == leastEffectiveContexts ? _self._leastEffectiveContexts : leastEffectiveContexts // ignore: cast_nullable_to_non_nullable
as List<String>,skipReasons: null == skipReasons ? _self._skipReasons : skipReasons // ignore: cast_nullable_to_non_nullable
as List<String>,userSentiment: freezed == userSentiment ? _self.userSentiment : userSentiment // ignore: cast_nullable_to_non_nullable
as String?,recommendation: freezed == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as String?,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$StressTrigger {

 String get trigger; double get correlation; int get avgStressIncrease; String get confidence;
/// Create a copy of StressTrigger
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StressTriggerCopyWith<StressTrigger> get copyWith => _$StressTriggerCopyWithImpl<StressTrigger>(this as StressTrigger, _$identity);

  /// Serializes this StressTrigger to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StressTrigger&&(identical(other.trigger, trigger) || other.trigger == trigger)&&(identical(other.correlation, correlation) || other.correlation == correlation)&&(identical(other.avgStressIncrease, avgStressIncrease) || other.avgStressIncrease == avgStressIncrease)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trigger,correlation,avgStressIncrease,confidence);

@override
String toString() {
  return 'StressTrigger(trigger: $trigger, correlation: $correlation, avgStressIncrease: $avgStressIncrease, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class $StressTriggerCopyWith<$Res>  {
  factory $StressTriggerCopyWith(StressTrigger value, $Res Function(StressTrigger) _then) = _$StressTriggerCopyWithImpl;
@useResult
$Res call({
 String trigger, double correlation, int avgStressIncrease, String confidence
});




}
/// @nodoc
class _$StressTriggerCopyWithImpl<$Res>
    implements $StressTriggerCopyWith<$Res> {
  _$StressTriggerCopyWithImpl(this._self, this._then);

  final StressTrigger _self;
  final $Res Function(StressTrigger) _then;

/// Create a copy of StressTrigger
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trigger = null,Object? correlation = null,Object? avgStressIncrease = null,Object? confidence = null,}) {
  return _then(_self.copyWith(
trigger: null == trigger ? _self.trigger : trigger // ignore: cast_nullable_to_non_nullable
as String,correlation: null == correlation ? _self.correlation : correlation // ignore: cast_nullable_to_non_nullable
as double,avgStressIncrease: null == avgStressIncrease ? _self.avgStressIncrease : avgStressIncrease // ignore: cast_nullable_to_non_nullable
as int,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StressTrigger].
extension StressTriggerPatterns on StressTrigger {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StressTrigger value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StressTrigger() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StressTrigger value)  $default,){
final _that = this;
switch (_that) {
case _StressTrigger():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StressTrigger value)?  $default,){
final _that = this;
switch (_that) {
case _StressTrigger() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String trigger,  double correlation,  int avgStressIncrease,  String confidence)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StressTrigger() when $default != null:
return $default(_that.trigger,_that.correlation,_that.avgStressIncrease,_that.confidence);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String trigger,  double correlation,  int avgStressIncrease,  String confidence)  $default,) {final _that = this;
switch (_that) {
case _StressTrigger():
return $default(_that.trigger,_that.correlation,_that.avgStressIncrease,_that.confidence);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String trigger,  double correlation,  int avgStressIncrease,  String confidence)?  $default,) {final _that = this;
switch (_that) {
case _StressTrigger() when $default != null:
return $default(_that.trigger,_that.correlation,_that.avgStressIncrease,_that.confidence);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StressTrigger implements StressTrigger {
  const _StressTrigger({required this.trigger, required this.correlation, required this.avgStressIncrease, required this.confidence});
  factory _StressTrigger.fromJson(Map<String, dynamic> json) => _$StressTriggerFromJson(json);

@override final  String trigger;
@override final  double correlation;
@override final  int avgStressIncrease;
@override final  String confidence;

/// Create a copy of StressTrigger
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StressTriggerCopyWith<_StressTrigger> get copyWith => __$StressTriggerCopyWithImpl<_StressTrigger>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StressTriggerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StressTrigger&&(identical(other.trigger, trigger) || other.trigger == trigger)&&(identical(other.correlation, correlation) || other.correlation == correlation)&&(identical(other.avgStressIncrease, avgStressIncrease) || other.avgStressIncrease == avgStressIncrease)&&(identical(other.confidence, confidence) || other.confidence == confidence));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trigger,correlation,avgStressIncrease,confidence);

@override
String toString() {
  return 'StressTrigger(trigger: $trigger, correlation: $correlation, avgStressIncrease: $avgStressIncrease, confidence: $confidence)';
}


}

/// @nodoc
abstract mixin class _$StressTriggerCopyWith<$Res> implements $StressTriggerCopyWith<$Res> {
  factory _$StressTriggerCopyWith(_StressTrigger value, $Res Function(_StressTrigger) _then) = __$StressTriggerCopyWithImpl;
@override @useResult
$Res call({
 String trigger, double correlation, int avgStressIncrease, String confidence
});




}
/// @nodoc
class __$StressTriggerCopyWithImpl<$Res>
    implements _$StressTriggerCopyWith<$Res> {
  __$StressTriggerCopyWithImpl(this._self, this._then);

  final _StressTrigger _self;
  final $Res Function(_StressTrigger) _then;

/// Create a copy of StressTrigger
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trigger = null,Object? correlation = null,Object? avgStressIncrease = null,Object? confidence = null,}) {
  return _then(_StressTrigger(
trigger: null == trigger ? _self.trigger : trigger // ignore: cast_nullable_to_non_nullable
as String,correlation: null == correlation ? _self.correlation : correlation // ignore: cast_nullable_to_non_nullable
as double,avgStressIncrease: null == avgStressIncrease ? _self.avgStressIncrease : avgStressIncrease // ignore: cast_nullable_to_non_nullable
as int,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RecoveryPattern {

 String get pattern; String get effectiveness; String get frequency; double get successRate; bool get shouldPrioritize;
/// Create a copy of RecoveryPattern
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecoveryPatternCopyWith<RecoveryPattern> get copyWith => _$RecoveryPatternCopyWithImpl<RecoveryPattern>(this as RecoveryPattern, _$identity);

  /// Serializes this RecoveryPattern to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecoveryPattern&&(identical(other.pattern, pattern) || other.pattern == pattern)&&(identical(other.effectiveness, effectiveness) || other.effectiveness == effectiveness)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.successRate, successRate) || other.successRate == successRate)&&(identical(other.shouldPrioritize, shouldPrioritize) || other.shouldPrioritize == shouldPrioritize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pattern,effectiveness,frequency,successRate,shouldPrioritize);

@override
String toString() {
  return 'RecoveryPattern(pattern: $pattern, effectiveness: $effectiveness, frequency: $frequency, successRate: $successRate, shouldPrioritize: $shouldPrioritize)';
}


}

/// @nodoc
abstract mixin class $RecoveryPatternCopyWith<$Res>  {
  factory $RecoveryPatternCopyWith(RecoveryPattern value, $Res Function(RecoveryPattern) _then) = _$RecoveryPatternCopyWithImpl;
@useResult
$Res call({
 String pattern, String effectiveness, String frequency, double successRate, bool shouldPrioritize
});




}
/// @nodoc
class _$RecoveryPatternCopyWithImpl<$Res>
    implements $RecoveryPatternCopyWith<$Res> {
  _$RecoveryPatternCopyWithImpl(this._self, this._then);

  final RecoveryPattern _self;
  final $Res Function(RecoveryPattern) _then;

/// Create a copy of RecoveryPattern
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pattern = null,Object? effectiveness = null,Object? frequency = null,Object? successRate = null,Object? shouldPrioritize = null,}) {
  return _then(_self.copyWith(
pattern: null == pattern ? _self.pattern : pattern // ignore: cast_nullable_to_non_nullable
as String,effectiveness: null == effectiveness ? _self.effectiveness : effectiveness // ignore: cast_nullable_to_non_nullable
as String,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String,successRate: null == successRate ? _self.successRate : successRate // ignore: cast_nullable_to_non_nullable
as double,shouldPrioritize: null == shouldPrioritize ? _self.shouldPrioritize : shouldPrioritize // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RecoveryPattern].
extension RecoveryPatternPatterns on RecoveryPattern {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecoveryPattern value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecoveryPattern() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecoveryPattern value)  $default,){
final _that = this;
switch (_that) {
case _RecoveryPattern():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecoveryPattern value)?  $default,){
final _that = this;
switch (_that) {
case _RecoveryPattern() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String pattern,  String effectiveness,  String frequency,  double successRate,  bool shouldPrioritize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecoveryPattern() when $default != null:
return $default(_that.pattern,_that.effectiveness,_that.frequency,_that.successRate,_that.shouldPrioritize);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String pattern,  String effectiveness,  String frequency,  double successRate,  bool shouldPrioritize)  $default,) {final _that = this;
switch (_that) {
case _RecoveryPattern():
return $default(_that.pattern,_that.effectiveness,_that.frequency,_that.successRate,_that.shouldPrioritize);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String pattern,  String effectiveness,  String frequency,  double successRate,  bool shouldPrioritize)?  $default,) {final _that = this;
switch (_that) {
case _RecoveryPattern() when $default != null:
return $default(_that.pattern,_that.effectiveness,_that.frequency,_that.successRate,_that.shouldPrioritize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecoveryPattern implements RecoveryPattern {
  const _RecoveryPattern({required this.pattern, required this.effectiveness, required this.frequency, required this.successRate, required this.shouldPrioritize});
  factory _RecoveryPattern.fromJson(Map<String, dynamic> json) => _$RecoveryPatternFromJson(json);

@override final  String pattern;
@override final  String effectiveness;
@override final  String frequency;
@override final  double successRate;
@override final  bool shouldPrioritize;

/// Create a copy of RecoveryPattern
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecoveryPatternCopyWith<_RecoveryPattern> get copyWith => __$RecoveryPatternCopyWithImpl<_RecoveryPattern>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecoveryPatternToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecoveryPattern&&(identical(other.pattern, pattern) || other.pattern == pattern)&&(identical(other.effectiveness, effectiveness) || other.effectiveness == effectiveness)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.successRate, successRate) || other.successRate == successRate)&&(identical(other.shouldPrioritize, shouldPrioritize) || other.shouldPrioritize == shouldPrioritize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pattern,effectiveness,frequency,successRate,shouldPrioritize);

@override
String toString() {
  return 'RecoveryPattern(pattern: $pattern, effectiveness: $effectiveness, frequency: $frequency, successRate: $successRate, shouldPrioritize: $shouldPrioritize)';
}


}

/// @nodoc
abstract mixin class _$RecoveryPatternCopyWith<$Res> implements $RecoveryPatternCopyWith<$Res> {
  factory _$RecoveryPatternCopyWith(_RecoveryPattern value, $Res Function(_RecoveryPattern) _then) = __$RecoveryPatternCopyWithImpl;
@override @useResult
$Res call({
 String pattern, String effectiveness, String frequency, double successRate, bool shouldPrioritize
});




}
/// @nodoc
class __$RecoveryPatternCopyWithImpl<$Res>
    implements _$RecoveryPatternCopyWith<$Res> {
  __$RecoveryPatternCopyWithImpl(this._self, this._then);

  final _RecoveryPattern _self;
  final $Res Function(_RecoveryPattern) _then;

/// Create a copy of RecoveryPattern
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pattern = null,Object? effectiveness = null,Object? frequency = null,Object? successRate = null,Object? shouldPrioritize = null,}) {
  return _then(_RecoveryPattern(
pattern: null == pattern ? _self.pattern : pattern // ignore: cast_nullable_to_non_nullable
as String,effectiveness: null == effectiveness ? _self.effectiveness : effectiveness // ignore: cast_nullable_to_non_nullable
as String,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String,successRate: null == successRate ? _self.successRate : successRate // ignore: cast_nullable_to_non_nullable
as double,shouldPrioritize: null == shouldPrioritize ? _self.shouldPrioritize : shouldPrioritize // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$BurnoutThresholdInfo {

 int get daysWithoutActivity; double get confidence; List<String> get basedOnEvents;
/// Create a copy of BurnoutThresholdInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BurnoutThresholdInfoCopyWith<BurnoutThresholdInfo> get copyWith => _$BurnoutThresholdInfoCopyWithImpl<BurnoutThresholdInfo>(this as BurnoutThresholdInfo, _$identity);

  /// Serializes this BurnoutThresholdInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BurnoutThresholdInfo&&(identical(other.daysWithoutActivity, daysWithoutActivity) || other.daysWithoutActivity == daysWithoutActivity)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&const DeepCollectionEquality().equals(other.basedOnEvents, basedOnEvents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,daysWithoutActivity,confidence,const DeepCollectionEquality().hash(basedOnEvents));

@override
String toString() {
  return 'BurnoutThresholdInfo(daysWithoutActivity: $daysWithoutActivity, confidence: $confidence, basedOnEvents: $basedOnEvents)';
}


}

/// @nodoc
abstract mixin class $BurnoutThresholdInfoCopyWith<$Res>  {
  factory $BurnoutThresholdInfoCopyWith(BurnoutThresholdInfo value, $Res Function(BurnoutThresholdInfo) _then) = _$BurnoutThresholdInfoCopyWithImpl;
@useResult
$Res call({
 int daysWithoutActivity, double confidence, List<String> basedOnEvents
});




}
/// @nodoc
class _$BurnoutThresholdInfoCopyWithImpl<$Res>
    implements $BurnoutThresholdInfoCopyWith<$Res> {
  _$BurnoutThresholdInfoCopyWithImpl(this._self, this._then);

  final BurnoutThresholdInfo _self;
  final $Res Function(BurnoutThresholdInfo) _then;

/// Create a copy of BurnoutThresholdInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? daysWithoutActivity = null,Object? confidence = null,Object? basedOnEvents = null,}) {
  return _then(_self.copyWith(
daysWithoutActivity: null == daysWithoutActivity ? _self.daysWithoutActivity : daysWithoutActivity // ignore: cast_nullable_to_non_nullable
as int,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,basedOnEvents: null == basedOnEvents ? _self.basedOnEvents : basedOnEvents // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [BurnoutThresholdInfo].
extension BurnoutThresholdInfoPatterns on BurnoutThresholdInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BurnoutThresholdInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BurnoutThresholdInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BurnoutThresholdInfo value)  $default,){
final _that = this;
switch (_that) {
case _BurnoutThresholdInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BurnoutThresholdInfo value)?  $default,){
final _that = this;
switch (_that) {
case _BurnoutThresholdInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int daysWithoutActivity,  double confidence,  List<String> basedOnEvents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BurnoutThresholdInfo() when $default != null:
return $default(_that.daysWithoutActivity,_that.confidence,_that.basedOnEvents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int daysWithoutActivity,  double confidence,  List<String> basedOnEvents)  $default,) {final _that = this;
switch (_that) {
case _BurnoutThresholdInfo():
return $default(_that.daysWithoutActivity,_that.confidence,_that.basedOnEvents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int daysWithoutActivity,  double confidence,  List<String> basedOnEvents)?  $default,) {final _that = this;
switch (_that) {
case _BurnoutThresholdInfo() when $default != null:
return $default(_that.daysWithoutActivity,_that.confidence,_that.basedOnEvents);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BurnoutThresholdInfo implements BurnoutThresholdInfo {
  const _BurnoutThresholdInfo({required this.daysWithoutActivity, required this.confidence, final  List<String> basedOnEvents = const []}): _basedOnEvents = basedOnEvents;
  factory _BurnoutThresholdInfo.fromJson(Map<String, dynamic> json) => _$BurnoutThresholdInfoFromJson(json);

@override final  int daysWithoutActivity;
@override final  double confidence;
 final  List<String> _basedOnEvents;
@override@JsonKey() List<String> get basedOnEvents {
  if (_basedOnEvents is EqualUnmodifiableListView) return _basedOnEvents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_basedOnEvents);
}


/// Create a copy of BurnoutThresholdInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BurnoutThresholdInfoCopyWith<_BurnoutThresholdInfo> get copyWith => __$BurnoutThresholdInfoCopyWithImpl<_BurnoutThresholdInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BurnoutThresholdInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BurnoutThresholdInfo&&(identical(other.daysWithoutActivity, daysWithoutActivity) || other.daysWithoutActivity == daysWithoutActivity)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&const DeepCollectionEquality().equals(other._basedOnEvents, _basedOnEvents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,daysWithoutActivity,confidence,const DeepCollectionEquality().hash(_basedOnEvents));

@override
String toString() {
  return 'BurnoutThresholdInfo(daysWithoutActivity: $daysWithoutActivity, confidence: $confidence, basedOnEvents: $basedOnEvents)';
}


}

/// @nodoc
abstract mixin class _$BurnoutThresholdInfoCopyWith<$Res> implements $BurnoutThresholdInfoCopyWith<$Res> {
  factory _$BurnoutThresholdInfoCopyWith(_BurnoutThresholdInfo value, $Res Function(_BurnoutThresholdInfo) _then) = __$BurnoutThresholdInfoCopyWithImpl;
@override @useResult
$Res call({
 int daysWithoutActivity, double confidence, List<String> basedOnEvents
});




}
/// @nodoc
class __$BurnoutThresholdInfoCopyWithImpl<$Res>
    implements _$BurnoutThresholdInfoCopyWith<$Res> {
  __$BurnoutThresholdInfoCopyWithImpl(this._self, this._then);

  final _BurnoutThresholdInfo _self;
  final $Res Function(_BurnoutThresholdInfo) _then;

/// Create a copy of BurnoutThresholdInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? daysWithoutActivity = null,Object? confidence = null,Object? basedOnEvents = null,}) {
  return _then(_BurnoutThresholdInfo(
daysWithoutActivity: null == daysWithoutActivity ? _self.daysWithoutActivity : daysWithoutActivity // ignore: cast_nullable_to_non_nullable
as int,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,basedOnEvents: null == basedOnEvents ? _self._basedOnEvents : basedOnEvents // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$PersonalPatterns {

 List<StressTrigger> get stressTriggersIdentified; List<RecoveryPattern> get recoveryPatterns; BurnoutThresholdInfo get burnoutThreshold;
/// Create a copy of PersonalPatterns
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonalPatternsCopyWith<PersonalPatterns> get copyWith => _$PersonalPatternsCopyWithImpl<PersonalPatterns>(this as PersonalPatterns, _$identity);

  /// Serializes this PersonalPatterns to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonalPatterns&&const DeepCollectionEquality().equals(other.stressTriggersIdentified, stressTriggersIdentified)&&const DeepCollectionEquality().equals(other.recoveryPatterns, recoveryPatterns)&&(identical(other.burnoutThreshold, burnoutThreshold) || other.burnoutThreshold == burnoutThreshold));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(stressTriggersIdentified),const DeepCollectionEquality().hash(recoveryPatterns),burnoutThreshold);

@override
String toString() {
  return 'PersonalPatterns(stressTriggersIdentified: $stressTriggersIdentified, recoveryPatterns: $recoveryPatterns, burnoutThreshold: $burnoutThreshold)';
}


}

/// @nodoc
abstract mixin class $PersonalPatternsCopyWith<$Res>  {
  factory $PersonalPatternsCopyWith(PersonalPatterns value, $Res Function(PersonalPatterns) _then) = _$PersonalPatternsCopyWithImpl;
@useResult
$Res call({
 List<StressTrigger> stressTriggersIdentified, List<RecoveryPattern> recoveryPatterns, BurnoutThresholdInfo burnoutThreshold
});


$BurnoutThresholdInfoCopyWith<$Res> get burnoutThreshold;

}
/// @nodoc
class _$PersonalPatternsCopyWithImpl<$Res>
    implements $PersonalPatternsCopyWith<$Res> {
  _$PersonalPatternsCopyWithImpl(this._self, this._then);

  final PersonalPatterns _self;
  final $Res Function(PersonalPatterns) _then;

/// Create a copy of PersonalPatterns
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stressTriggersIdentified = null,Object? recoveryPatterns = null,Object? burnoutThreshold = null,}) {
  return _then(_self.copyWith(
stressTriggersIdentified: null == stressTriggersIdentified ? _self.stressTriggersIdentified : stressTriggersIdentified // ignore: cast_nullable_to_non_nullable
as List<StressTrigger>,recoveryPatterns: null == recoveryPatterns ? _self.recoveryPatterns : recoveryPatterns // ignore: cast_nullable_to_non_nullable
as List<RecoveryPattern>,burnoutThreshold: null == burnoutThreshold ? _self.burnoutThreshold : burnoutThreshold // ignore: cast_nullable_to_non_nullable
as BurnoutThresholdInfo,
  ));
}
/// Create a copy of PersonalPatterns
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BurnoutThresholdInfoCopyWith<$Res> get burnoutThreshold {
  
  return $BurnoutThresholdInfoCopyWith<$Res>(_self.burnoutThreshold, (value) {
    return _then(_self.copyWith(burnoutThreshold: value));
  });
}
}


/// Adds pattern-matching-related methods to [PersonalPatterns].
extension PersonalPatternsPatterns on PersonalPatterns {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonalPatterns value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonalPatterns() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonalPatterns value)  $default,){
final _that = this;
switch (_that) {
case _PersonalPatterns():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonalPatterns value)?  $default,){
final _that = this;
switch (_that) {
case _PersonalPatterns() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<StressTrigger> stressTriggersIdentified,  List<RecoveryPattern> recoveryPatterns,  BurnoutThresholdInfo burnoutThreshold)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonalPatterns() when $default != null:
return $default(_that.stressTriggersIdentified,_that.recoveryPatterns,_that.burnoutThreshold);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<StressTrigger> stressTriggersIdentified,  List<RecoveryPattern> recoveryPatterns,  BurnoutThresholdInfo burnoutThreshold)  $default,) {final _that = this;
switch (_that) {
case _PersonalPatterns():
return $default(_that.stressTriggersIdentified,_that.recoveryPatterns,_that.burnoutThreshold);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<StressTrigger> stressTriggersIdentified,  List<RecoveryPattern> recoveryPatterns,  BurnoutThresholdInfo burnoutThreshold)?  $default,) {final _that = this;
switch (_that) {
case _PersonalPatterns() when $default != null:
return $default(_that.stressTriggersIdentified,_that.recoveryPatterns,_that.burnoutThreshold);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PersonalPatterns implements PersonalPatterns {
  const _PersonalPatterns({final  List<StressTrigger> stressTriggersIdentified = const [], final  List<RecoveryPattern> recoveryPatterns = const [], required this.burnoutThreshold}): _stressTriggersIdentified = stressTriggersIdentified,_recoveryPatterns = recoveryPatterns;
  factory _PersonalPatterns.fromJson(Map<String, dynamic> json) => _$PersonalPatternsFromJson(json);

 final  List<StressTrigger> _stressTriggersIdentified;
@override@JsonKey() List<StressTrigger> get stressTriggersIdentified {
  if (_stressTriggersIdentified is EqualUnmodifiableListView) return _stressTriggersIdentified;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stressTriggersIdentified);
}

 final  List<RecoveryPattern> _recoveryPatterns;
@override@JsonKey() List<RecoveryPattern> get recoveryPatterns {
  if (_recoveryPatterns is EqualUnmodifiableListView) return _recoveryPatterns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recoveryPatterns);
}

@override final  BurnoutThresholdInfo burnoutThreshold;

/// Create a copy of PersonalPatterns
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonalPatternsCopyWith<_PersonalPatterns> get copyWith => __$PersonalPatternsCopyWithImpl<_PersonalPatterns>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonalPatternsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonalPatterns&&const DeepCollectionEquality().equals(other._stressTriggersIdentified, _stressTriggersIdentified)&&const DeepCollectionEquality().equals(other._recoveryPatterns, _recoveryPatterns)&&(identical(other.burnoutThreshold, burnoutThreshold) || other.burnoutThreshold == burnoutThreshold));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_stressTriggersIdentified),const DeepCollectionEquality().hash(_recoveryPatterns),burnoutThreshold);

@override
String toString() {
  return 'PersonalPatterns(stressTriggersIdentified: $stressTriggersIdentified, recoveryPatterns: $recoveryPatterns, burnoutThreshold: $burnoutThreshold)';
}


}

/// @nodoc
abstract mixin class _$PersonalPatternsCopyWith<$Res> implements $PersonalPatternsCopyWith<$Res> {
  factory _$PersonalPatternsCopyWith(_PersonalPatterns value, $Res Function(_PersonalPatterns) _then) = __$PersonalPatternsCopyWithImpl;
@override @useResult
$Res call({
 List<StressTrigger> stressTriggersIdentified, List<RecoveryPattern> recoveryPatterns, BurnoutThresholdInfo burnoutThreshold
});


@override $BurnoutThresholdInfoCopyWith<$Res> get burnoutThreshold;

}
/// @nodoc
class __$PersonalPatternsCopyWithImpl<$Res>
    implements _$PersonalPatternsCopyWith<$Res> {
  __$PersonalPatternsCopyWithImpl(this._self, this._then);

  final _PersonalPatterns _self;
  final $Res Function(_PersonalPatterns) _then;

/// Create a copy of PersonalPatterns
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stressTriggersIdentified = null,Object? recoveryPatterns = null,Object? burnoutThreshold = null,}) {
  return _then(_PersonalPatterns(
stressTriggersIdentified: null == stressTriggersIdentified ? _self._stressTriggersIdentified : stressTriggersIdentified // ignore: cast_nullable_to_non_nullable
as List<StressTrigger>,recoveryPatterns: null == recoveryPatterns ? _self._recoveryPatterns : recoveryPatterns // ignore: cast_nullable_to_non_nullable
as List<RecoveryPattern>,burnoutThreshold: null == burnoutThreshold ? _self.burnoutThreshold : burnoutThreshold // ignore: cast_nullable_to_non_nullable
as BurnoutThresholdInfo,
  ));
}

/// Create a copy of PersonalPatterns
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BurnoutThresholdInfoCopyWith<$Res> get burnoutThreshold {
  
  return $BurnoutThresholdInfoCopyWith<$Res>(_self.burnoutThreshold, (value) {
    return _then(_self.copyWith(burnoutThreshold: value));
  });
}
}


/// @nodoc
mixin _$RecommendationRule {

 String get rule; String get reasoning; String get priority;
/// Create a copy of RecommendationRule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecommendationRuleCopyWith<RecommendationRule> get copyWith => _$RecommendationRuleCopyWithImpl<RecommendationRule>(this as RecommendationRule, _$identity);

  /// Serializes this RecommendationRule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecommendationRule&&(identical(other.rule, rule) || other.rule == rule)&&(identical(other.reasoning, reasoning) || other.reasoning == reasoning)&&(identical(other.priority, priority) || other.priority == priority));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rule,reasoning,priority);

@override
String toString() {
  return 'RecommendationRule(rule: $rule, reasoning: $reasoning, priority: $priority)';
}


}

/// @nodoc
abstract mixin class $RecommendationRuleCopyWith<$Res>  {
  factory $RecommendationRuleCopyWith(RecommendationRule value, $Res Function(RecommendationRule) _then) = _$RecommendationRuleCopyWithImpl;
@useResult
$Res call({
 String rule, String reasoning, String priority
});




}
/// @nodoc
class _$RecommendationRuleCopyWithImpl<$Res>
    implements $RecommendationRuleCopyWith<$Res> {
  _$RecommendationRuleCopyWithImpl(this._self, this._then);

  final RecommendationRule _self;
  final $Res Function(RecommendationRule) _then;

/// Create a copy of RecommendationRule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rule = null,Object? reasoning = null,Object? priority = null,}) {
  return _then(_self.copyWith(
rule: null == rule ? _self.rule : rule // ignore: cast_nullable_to_non_nullable
as String,reasoning: null == reasoning ? _self.reasoning : reasoning // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RecommendationRule].
extension RecommendationRulePatterns on RecommendationRule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecommendationRule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecommendationRule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecommendationRule value)  $default,){
final _that = this;
switch (_that) {
case _RecommendationRule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecommendationRule value)?  $default,){
final _that = this;
switch (_that) {
case _RecommendationRule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String rule,  String reasoning,  String priority)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecommendationRule() when $default != null:
return $default(_that.rule,_that.reasoning,_that.priority);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String rule,  String reasoning,  String priority)  $default,) {final _that = this;
switch (_that) {
case _RecommendationRule():
return $default(_that.rule,_that.reasoning,_that.priority);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String rule,  String reasoning,  String priority)?  $default,) {final _that = this;
switch (_that) {
case _RecommendationRule() when $default != null:
return $default(_that.rule,_that.reasoning,_that.priority);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecommendationRule implements RecommendationRule {
  const _RecommendationRule({required this.rule, required this.reasoning, required this.priority});
  factory _RecommendationRule.fromJson(Map<String, dynamic> json) => _$RecommendationRuleFromJson(json);

@override final  String rule;
@override final  String reasoning;
@override final  String priority;

/// Create a copy of RecommendationRule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecommendationRuleCopyWith<_RecommendationRule> get copyWith => __$RecommendationRuleCopyWithImpl<_RecommendationRule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecommendationRuleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecommendationRule&&(identical(other.rule, rule) || other.rule == rule)&&(identical(other.reasoning, reasoning) || other.reasoning == reasoning)&&(identical(other.priority, priority) || other.priority == priority));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rule,reasoning,priority);

@override
String toString() {
  return 'RecommendationRule(rule: $rule, reasoning: $reasoning, priority: $priority)';
}


}

/// @nodoc
abstract mixin class _$RecommendationRuleCopyWith<$Res> implements $RecommendationRuleCopyWith<$Res> {
  factory _$RecommendationRuleCopyWith(_RecommendationRule value, $Res Function(_RecommendationRule) _then) = __$RecommendationRuleCopyWithImpl;
@override @useResult
$Res call({
 String rule, String reasoning, String priority
});




}
/// @nodoc
class __$RecommendationRuleCopyWithImpl<$Res>
    implements _$RecommendationRuleCopyWith<$Res> {
  __$RecommendationRuleCopyWithImpl(this._self, this._then);

  final _RecommendationRule _self;
  final $Res Function(_RecommendationRule) _then;

/// Create a copy of RecommendationRule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rule = null,Object? reasoning = null,Object? priority = null,}) {
  return _then(_RecommendationRule(
rule: null == rule ? _self.rule : rule // ignore: cast_nullable_to_non_nullable
as String,reasoning: null == reasoning ? _self.reasoning : reasoning // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UserProfile {

 String get userId; String get profileLastUpdated; int get dataPointsAnalyzed; String get confidenceLevel; Map<String, dynamic> get preferences;// deeply nested JSON structure
 Map<String, dynamic> get effectiveness;// nested structure
 PersonalPatterns get triggers;// Mapped to 'triggers' in JSON example but reusing PersonalPatterns structure roughly
 List<RecommendationRule> get recommendationRules;
/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileCopyWith<UserProfile> get copyWith => _$UserProfileCopyWithImpl<UserProfile>(this as UserProfile, _$identity);

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfile&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.profileLastUpdated, profileLastUpdated) || other.profileLastUpdated == profileLastUpdated)&&(identical(other.dataPointsAnalyzed, dataPointsAnalyzed) || other.dataPointsAnalyzed == dataPointsAnalyzed)&&(identical(other.confidenceLevel, confidenceLevel) || other.confidenceLevel == confidenceLevel)&&const DeepCollectionEquality().equals(other.preferences, preferences)&&const DeepCollectionEquality().equals(other.effectiveness, effectiveness)&&(identical(other.triggers, triggers) || other.triggers == triggers)&&const DeepCollectionEquality().equals(other.recommendationRules, recommendationRules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,profileLastUpdated,dataPointsAnalyzed,confidenceLevel,const DeepCollectionEquality().hash(preferences),const DeepCollectionEquality().hash(effectiveness),triggers,const DeepCollectionEquality().hash(recommendationRules));

@override
String toString() {
  return 'UserProfile(userId: $userId, profileLastUpdated: $profileLastUpdated, dataPointsAnalyzed: $dataPointsAnalyzed, confidenceLevel: $confidenceLevel, preferences: $preferences, effectiveness: $effectiveness, triggers: $triggers, recommendationRules: $recommendationRules)';
}


}

/// @nodoc
abstract mixin class $UserProfileCopyWith<$Res>  {
  factory $UserProfileCopyWith(UserProfile value, $Res Function(UserProfile) _then) = _$UserProfileCopyWithImpl;
@useResult
$Res call({
 String userId, String profileLastUpdated, int dataPointsAnalyzed, String confidenceLevel, Map<String, dynamic> preferences, Map<String, dynamic> effectiveness, PersonalPatterns triggers, List<RecommendationRule> recommendationRules
});


$PersonalPatternsCopyWith<$Res> get triggers;

}
/// @nodoc
class _$UserProfileCopyWithImpl<$Res>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._self, this._then);

  final UserProfile _self;
  final $Res Function(UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? profileLastUpdated = null,Object? dataPointsAnalyzed = null,Object? confidenceLevel = null,Object? preferences = null,Object? effectiveness = null,Object? triggers = null,Object? recommendationRules = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,profileLastUpdated: null == profileLastUpdated ? _self.profileLastUpdated : profileLastUpdated // ignore: cast_nullable_to_non_nullable
as String,dataPointsAnalyzed: null == dataPointsAnalyzed ? _self.dataPointsAnalyzed : dataPointsAnalyzed // ignore: cast_nullable_to_non_nullable
as int,confidenceLevel: null == confidenceLevel ? _self.confidenceLevel : confidenceLevel // ignore: cast_nullable_to_non_nullable
as String,preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,effectiveness: null == effectiveness ? _self.effectiveness : effectiveness // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,triggers: null == triggers ? _self.triggers : triggers // ignore: cast_nullable_to_non_nullable
as PersonalPatterns,recommendationRules: null == recommendationRules ? _self.recommendationRules : recommendationRules // ignore: cast_nullable_to_non_nullable
as List<RecommendationRule>,
  ));
}
/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersonalPatternsCopyWith<$Res> get triggers {
  
  return $PersonalPatternsCopyWith<$Res>(_self.triggers, (value) {
    return _then(_self.copyWith(triggers: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserProfile].
extension UserProfilePatterns on UserProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfile value)  $default,){
final _that = this;
switch (_that) {
case _UserProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfile value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String profileLastUpdated,  int dataPointsAnalyzed,  String confidenceLevel,  Map<String, dynamic> preferences,  Map<String, dynamic> effectiveness,  PersonalPatterns triggers,  List<RecommendationRule> recommendationRules)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.userId,_that.profileLastUpdated,_that.dataPointsAnalyzed,_that.confidenceLevel,_that.preferences,_that.effectiveness,_that.triggers,_that.recommendationRules);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String profileLastUpdated,  int dataPointsAnalyzed,  String confidenceLevel,  Map<String, dynamic> preferences,  Map<String, dynamic> effectiveness,  PersonalPatterns triggers,  List<RecommendationRule> recommendationRules)  $default,) {final _that = this;
switch (_that) {
case _UserProfile():
return $default(_that.userId,_that.profileLastUpdated,_that.dataPointsAnalyzed,_that.confidenceLevel,_that.preferences,_that.effectiveness,_that.triggers,_that.recommendationRules);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String profileLastUpdated,  int dataPointsAnalyzed,  String confidenceLevel,  Map<String, dynamic> preferences,  Map<String, dynamic> effectiveness,  PersonalPatterns triggers,  List<RecommendationRule> recommendationRules)?  $default,) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.userId,_that.profileLastUpdated,_that.dataPointsAnalyzed,_that.confidenceLevel,_that.preferences,_that.effectiveness,_that.triggers,_that.recommendationRules);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProfile implements UserProfile {
  const _UserProfile({required this.userId, required this.profileLastUpdated, required this.dataPointsAnalyzed, required this.confidenceLevel, required final  Map<String, dynamic> preferences, required final  Map<String, dynamic> effectiveness, required this.triggers, final  List<RecommendationRule> recommendationRules = const []}): _preferences = preferences,_effectiveness = effectiveness,_recommendationRules = recommendationRules;
  factory _UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);

@override final  String userId;
@override final  String profileLastUpdated;
@override final  int dataPointsAnalyzed;
@override final  String confidenceLevel;
 final  Map<String, dynamic> _preferences;
@override Map<String, dynamic> get preferences {
  if (_preferences is EqualUnmodifiableMapView) return _preferences;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_preferences);
}

// deeply nested JSON structure
 final  Map<String, dynamic> _effectiveness;
// deeply nested JSON structure
@override Map<String, dynamic> get effectiveness {
  if (_effectiveness is EqualUnmodifiableMapView) return _effectiveness;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_effectiveness);
}

// nested structure
@override final  PersonalPatterns triggers;
// Mapped to 'triggers' in JSON example but reusing PersonalPatterns structure roughly
 final  List<RecommendationRule> _recommendationRules;
// Mapped to 'triggers' in JSON example but reusing PersonalPatterns structure roughly
@override@JsonKey() List<RecommendationRule> get recommendationRules {
  if (_recommendationRules is EqualUnmodifiableListView) return _recommendationRules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recommendationRules);
}


/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileCopyWith<_UserProfile> get copyWith => __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfile&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.profileLastUpdated, profileLastUpdated) || other.profileLastUpdated == profileLastUpdated)&&(identical(other.dataPointsAnalyzed, dataPointsAnalyzed) || other.dataPointsAnalyzed == dataPointsAnalyzed)&&(identical(other.confidenceLevel, confidenceLevel) || other.confidenceLevel == confidenceLevel)&&const DeepCollectionEquality().equals(other._preferences, _preferences)&&const DeepCollectionEquality().equals(other._effectiveness, _effectiveness)&&(identical(other.triggers, triggers) || other.triggers == triggers)&&const DeepCollectionEquality().equals(other._recommendationRules, _recommendationRules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,profileLastUpdated,dataPointsAnalyzed,confidenceLevel,const DeepCollectionEquality().hash(_preferences),const DeepCollectionEquality().hash(_effectiveness),triggers,const DeepCollectionEquality().hash(_recommendationRules));

@override
String toString() {
  return 'UserProfile(userId: $userId, profileLastUpdated: $profileLastUpdated, dataPointsAnalyzed: $dataPointsAnalyzed, confidenceLevel: $confidenceLevel, preferences: $preferences, effectiveness: $effectiveness, triggers: $triggers, recommendationRules: $recommendationRules)';
}


}

/// @nodoc
abstract mixin class _$UserProfileCopyWith<$Res> implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(_UserProfile value, $Res Function(_UserProfile) _then) = __$UserProfileCopyWithImpl;
@override @useResult
$Res call({
 String userId, String profileLastUpdated, int dataPointsAnalyzed, String confidenceLevel, Map<String, dynamic> preferences, Map<String, dynamic> effectiveness, PersonalPatterns triggers, List<RecommendationRule> recommendationRules
});


@override $PersonalPatternsCopyWith<$Res> get triggers;

}
/// @nodoc
class __$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(this._self, this._then);

  final _UserProfile _self;
  final $Res Function(_UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? profileLastUpdated = null,Object? dataPointsAnalyzed = null,Object? confidenceLevel = null,Object? preferences = null,Object? effectiveness = null,Object? triggers = null,Object? recommendationRules = null,}) {
  return _then(_UserProfile(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,profileLastUpdated: null == profileLastUpdated ? _self.profileLastUpdated : profileLastUpdated // ignore: cast_nullable_to_non_nullable
as String,dataPointsAnalyzed: null == dataPointsAnalyzed ? _self.dataPointsAnalyzed : dataPointsAnalyzed // ignore: cast_nullable_to_non_nullable
as int,confidenceLevel: null == confidenceLevel ? _self.confidenceLevel : confidenceLevel // ignore: cast_nullable_to_non_nullable
as String,preferences: null == preferences ? _self._preferences : preferences // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,effectiveness: null == effectiveness ? _self._effectiveness : effectiveness // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,triggers: null == triggers ? _self.triggers : triggers // ignore: cast_nullable_to_non_nullable
as PersonalPatterns,recommendationRules: null == recommendationRules ? _self._recommendationRules : recommendationRules // ignore: cast_nullable_to_non_nullable
as List<RecommendationRule>,
  ));
}

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersonalPatternsCopyWith<$Res> get triggers {
  
  return $PersonalPatternsCopyWith<$Res>(_self.triggers, (value) {
    return _then(_self.copyWith(triggers: value));
  });
}
}


/// @nodoc
mixin _$InsightItem {

 String get activity;// or pattern name
 String? get impact; String? get skipRate;// for negative insights
 String? get timesUsed; String get message; String? get confidence;// for patterns
 String? get actionable;
/// Create a copy of InsightItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InsightItemCopyWith<InsightItem> get copyWith => _$InsightItemCopyWithImpl<InsightItem>(this as InsightItem, _$identity);

  /// Serializes this InsightItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InsightItem&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.impact, impact) || other.impact == impact)&&(identical(other.skipRate, skipRate) || other.skipRate == skipRate)&&(identical(other.timesUsed, timesUsed) || other.timesUsed == timesUsed)&&(identical(other.message, message) || other.message == message)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.actionable, actionable) || other.actionable == actionable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activity,impact,skipRate,timesUsed,message,confidence,actionable);

@override
String toString() {
  return 'InsightItem(activity: $activity, impact: $impact, skipRate: $skipRate, timesUsed: $timesUsed, message: $message, confidence: $confidence, actionable: $actionable)';
}


}

/// @nodoc
abstract mixin class $InsightItemCopyWith<$Res>  {
  factory $InsightItemCopyWith(InsightItem value, $Res Function(InsightItem) _then) = _$InsightItemCopyWithImpl;
@useResult
$Res call({
 String activity, String? impact, String? skipRate, String? timesUsed, String message, String? confidence, String? actionable
});




}
/// @nodoc
class _$InsightItemCopyWithImpl<$Res>
    implements $InsightItemCopyWith<$Res> {
  _$InsightItemCopyWithImpl(this._self, this._then);

  final InsightItem _self;
  final $Res Function(InsightItem) _then;

/// Create a copy of InsightItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activity = null,Object? impact = freezed,Object? skipRate = freezed,Object? timesUsed = freezed,Object? message = null,Object? confidence = freezed,Object? actionable = freezed,}) {
  return _then(_self.copyWith(
activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as String,impact: freezed == impact ? _self.impact : impact // ignore: cast_nullable_to_non_nullable
as String?,skipRate: freezed == skipRate ? _self.skipRate : skipRate // ignore: cast_nullable_to_non_nullable
as String?,timesUsed: freezed == timesUsed ? _self.timesUsed : timesUsed // ignore: cast_nullable_to_non_nullable
as String?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as String?,actionable: freezed == actionable ? _self.actionable : actionable // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InsightItem].
extension InsightItemPatterns on InsightItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InsightItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InsightItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InsightItem value)  $default,){
final _that = this;
switch (_that) {
case _InsightItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InsightItem value)?  $default,){
final _that = this;
switch (_that) {
case _InsightItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String activity,  String? impact,  String? skipRate,  String? timesUsed,  String message,  String? confidence,  String? actionable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InsightItem() when $default != null:
return $default(_that.activity,_that.impact,_that.skipRate,_that.timesUsed,_that.message,_that.confidence,_that.actionable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String activity,  String? impact,  String? skipRate,  String? timesUsed,  String message,  String? confidence,  String? actionable)  $default,) {final _that = this;
switch (_that) {
case _InsightItem():
return $default(_that.activity,_that.impact,_that.skipRate,_that.timesUsed,_that.message,_that.confidence,_that.actionable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String activity,  String? impact,  String? skipRate,  String? timesUsed,  String message,  String? confidence,  String? actionable)?  $default,) {final _that = this;
switch (_that) {
case _InsightItem() when $default != null:
return $default(_that.activity,_that.impact,_that.skipRate,_that.timesUsed,_that.message,_that.confidence,_that.actionable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InsightItem implements InsightItem {
  const _InsightItem({required this.activity, this.impact, this.skipRate, this.timesUsed, required this.message, this.confidence, this.actionable});
  factory _InsightItem.fromJson(Map<String, dynamic> json) => _$InsightItemFromJson(json);

@override final  String activity;
// or pattern name
@override final  String? impact;
@override final  String? skipRate;
// for negative insights
@override final  String? timesUsed;
@override final  String message;
@override final  String? confidence;
// for patterns
@override final  String? actionable;

/// Create a copy of InsightItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InsightItemCopyWith<_InsightItem> get copyWith => __$InsightItemCopyWithImpl<_InsightItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InsightItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InsightItem&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.impact, impact) || other.impact == impact)&&(identical(other.skipRate, skipRate) || other.skipRate == skipRate)&&(identical(other.timesUsed, timesUsed) || other.timesUsed == timesUsed)&&(identical(other.message, message) || other.message == message)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.actionable, actionable) || other.actionable == actionable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activity,impact,skipRate,timesUsed,message,confidence,actionable);

@override
String toString() {
  return 'InsightItem(activity: $activity, impact: $impact, skipRate: $skipRate, timesUsed: $timesUsed, message: $message, confidence: $confidence, actionable: $actionable)';
}


}

/// @nodoc
abstract mixin class _$InsightItemCopyWith<$Res> implements $InsightItemCopyWith<$Res> {
  factory _$InsightItemCopyWith(_InsightItem value, $Res Function(_InsightItem) _then) = __$InsightItemCopyWithImpl;
@override @useResult
$Res call({
 String activity, String? impact, String? skipRate, String? timesUsed, String message, String? confidence, String? actionable
});




}
/// @nodoc
class __$InsightItemCopyWithImpl<$Res>
    implements _$InsightItemCopyWith<$Res> {
  __$InsightItemCopyWithImpl(this._self, this._then);

  final _InsightItem _self;
  final $Res Function(_InsightItem) _then;

/// Create a copy of InsightItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activity = null,Object? impact = freezed,Object? skipRate = freezed,Object? timesUsed = freezed,Object? message = null,Object? confidence = freezed,Object? actionable = freezed,}) {
  return _then(_InsightItem(
activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as String,impact: freezed == impact ? _self.impact : impact // ignore: cast_nullable_to_non_nullable
as String?,skipRate: freezed == skipRate ? _self.skipRate : skipRate // ignore: cast_nullable_to_non_nullable
as String?,timesUsed: freezed == timesUsed ? _self.timesUsed : timesUsed // ignore: cast_nullable_to_non_nullable
as String?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as String?,actionable: freezed == actionable ? _self.actionable : actionable // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MonthlyInsightsSummary {

 int get activitiesCompleted; String get avgHRVBoost; String get stressPrevented;
/// Create a copy of MonthlyInsightsSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlyInsightsSummaryCopyWith<MonthlyInsightsSummary> get copyWith => _$MonthlyInsightsSummaryCopyWithImpl<MonthlyInsightsSummary>(this as MonthlyInsightsSummary, _$identity);

  /// Serializes this MonthlyInsightsSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyInsightsSummary&&(identical(other.activitiesCompleted, activitiesCompleted) || other.activitiesCompleted == activitiesCompleted)&&(identical(other.avgHRVBoost, avgHRVBoost) || other.avgHRVBoost == avgHRVBoost)&&(identical(other.stressPrevented, stressPrevented) || other.stressPrevented == stressPrevented));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activitiesCompleted,avgHRVBoost,stressPrevented);

@override
String toString() {
  return 'MonthlyInsightsSummary(activitiesCompleted: $activitiesCompleted, avgHRVBoost: $avgHRVBoost, stressPrevented: $stressPrevented)';
}


}

/// @nodoc
abstract mixin class $MonthlyInsightsSummaryCopyWith<$Res>  {
  factory $MonthlyInsightsSummaryCopyWith(MonthlyInsightsSummary value, $Res Function(MonthlyInsightsSummary) _then) = _$MonthlyInsightsSummaryCopyWithImpl;
@useResult
$Res call({
 int activitiesCompleted, String avgHRVBoost, String stressPrevented
});




}
/// @nodoc
class _$MonthlyInsightsSummaryCopyWithImpl<$Res>
    implements $MonthlyInsightsSummaryCopyWith<$Res> {
  _$MonthlyInsightsSummaryCopyWithImpl(this._self, this._then);

  final MonthlyInsightsSummary _self;
  final $Res Function(MonthlyInsightsSummary) _then;

/// Create a copy of MonthlyInsightsSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activitiesCompleted = null,Object? avgHRVBoost = null,Object? stressPrevented = null,}) {
  return _then(_self.copyWith(
activitiesCompleted: null == activitiesCompleted ? _self.activitiesCompleted : activitiesCompleted // ignore: cast_nullable_to_non_nullable
as int,avgHRVBoost: null == avgHRVBoost ? _self.avgHRVBoost : avgHRVBoost // ignore: cast_nullable_to_non_nullable
as String,stressPrevented: null == stressPrevented ? _self.stressPrevented : stressPrevented // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MonthlyInsightsSummary].
extension MonthlyInsightsSummaryPatterns on MonthlyInsightsSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlyInsightsSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlyInsightsSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlyInsightsSummary value)  $default,){
final _that = this;
switch (_that) {
case _MonthlyInsightsSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlyInsightsSummary value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlyInsightsSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int activitiesCompleted,  String avgHRVBoost,  String stressPrevented)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlyInsightsSummary() when $default != null:
return $default(_that.activitiesCompleted,_that.avgHRVBoost,_that.stressPrevented);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int activitiesCompleted,  String avgHRVBoost,  String stressPrevented)  $default,) {final _that = this;
switch (_that) {
case _MonthlyInsightsSummary():
return $default(_that.activitiesCompleted,_that.avgHRVBoost,_that.stressPrevented);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int activitiesCompleted,  String avgHRVBoost,  String stressPrevented)?  $default,) {final _that = this;
switch (_that) {
case _MonthlyInsightsSummary() when $default != null:
return $default(_that.activitiesCompleted,_that.avgHRVBoost,_that.stressPrevented);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonthlyInsightsSummary implements MonthlyInsightsSummary {
  const _MonthlyInsightsSummary({required this.activitiesCompleted, required this.avgHRVBoost, required this.stressPrevented});
  factory _MonthlyInsightsSummary.fromJson(Map<String, dynamic> json) => _$MonthlyInsightsSummaryFromJson(json);

@override final  int activitiesCompleted;
@override final  String avgHRVBoost;
@override final  String stressPrevented;

/// Create a copy of MonthlyInsightsSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlyInsightsSummaryCopyWith<_MonthlyInsightsSummary> get copyWith => __$MonthlyInsightsSummaryCopyWithImpl<_MonthlyInsightsSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonthlyInsightsSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlyInsightsSummary&&(identical(other.activitiesCompleted, activitiesCompleted) || other.activitiesCompleted == activitiesCompleted)&&(identical(other.avgHRVBoost, avgHRVBoost) || other.avgHRVBoost == avgHRVBoost)&&(identical(other.stressPrevented, stressPrevented) || other.stressPrevented == stressPrevented));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activitiesCompleted,avgHRVBoost,stressPrevented);

@override
String toString() {
  return 'MonthlyInsightsSummary(activitiesCompleted: $activitiesCompleted, avgHRVBoost: $avgHRVBoost, stressPrevented: $stressPrevented)';
}


}

/// @nodoc
abstract mixin class _$MonthlyInsightsSummaryCopyWith<$Res> implements $MonthlyInsightsSummaryCopyWith<$Res> {
  factory _$MonthlyInsightsSummaryCopyWith(_MonthlyInsightsSummary value, $Res Function(_MonthlyInsightsSummary) _then) = __$MonthlyInsightsSummaryCopyWithImpl;
@override @useResult
$Res call({
 int activitiesCompleted, String avgHRVBoost, String stressPrevented
});




}
/// @nodoc
class __$MonthlyInsightsSummaryCopyWithImpl<$Res>
    implements _$MonthlyInsightsSummaryCopyWith<$Res> {
  __$MonthlyInsightsSummaryCopyWithImpl(this._self, this._then);

  final _MonthlyInsightsSummary _self;
  final $Res Function(_MonthlyInsightsSummary) _then;

/// Create a copy of MonthlyInsightsSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activitiesCompleted = null,Object? avgHRVBoost = null,Object? stressPrevented = null,}) {
  return _then(_MonthlyInsightsSummary(
activitiesCompleted: null == activitiesCompleted ? _self.activitiesCompleted : activitiesCompleted // ignore: cast_nullable_to_non_nullable
as int,avgHRVBoost: null == avgHRVBoost ? _self.avgHRVBoost : avgHRVBoost // ignore: cast_nullable_to_non_nullable
as String,stressPrevented: null == stressPrevented ? _self.stressPrevented : stressPrevented // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MonthlyInsights {

 String get period; MonthlyInsightsSummary get summary; List<InsightItem> get whatWorksForYou; List<InsightItem> get whatDoesntWork; List<InsightItem> get patternsDiscovered;
/// Create a copy of MonthlyInsights
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlyInsightsCopyWith<MonthlyInsights> get copyWith => _$MonthlyInsightsCopyWithImpl<MonthlyInsights>(this as MonthlyInsights, _$identity);

  /// Serializes this MonthlyInsights to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyInsights&&(identical(other.period, period) || other.period == period)&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other.whatWorksForYou, whatWorksForYou)&&const DeepCollectionEquality().equals(other.whatDoesntWork, whatDoesntWork)&&const DeepCollectionEquality().equals(other.patternsDiscovered, patternsDiscovered));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,summary,const DeepCollectionEquality().hash(whatWorksForYou),const DeepCollectionEquality().hash(whatDoesntWork),const DeepCollectionEquality().hash(patternsDiscovered));

@override
String toString() {
  return 'MonthlyInsights(period: $period, summary: $summary, whatWorksForYou: $whatWorksForYou, whatDoesntWork: $whatDoesntWork, patternsDiscovered: $patternsDiscovered)';
}


}

/// @nodoc
abstract mixin class $MonthlyInsightsCopyWith<$Res>  {
  factory $MonthlyInsightsCopyWith(MonthlyInsights value, $Res Function(MonthlyInsights) _then) = _$MonthlyInsightsCopyWithImpl;
@useResult
$Res call({
 String period, MonthlyInsightsSummary summary, List<InsightItem> whatWorksForYou, List<InsightItem> whatDoesntWork, List<InsightItem> patternsDiscovered
});


$MonthlyInsightsSummaryCopyWith<$Res> get summary;

}
/// @nodoc
class _$MonthlyInsightsCopyWithImpl<$Res>
    implements $MonthlyInsightsCopyWith<$Res> {
  _$MonthlyInsightsCopyWithImpl(this._self, this._then);

  final MonthlyInsights _self;
  final $Res Function(MonthlyInsights) _then;

/// Create a copy of MonthlyInsights
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? summary = null,Object? whatWorksForYou = null,Object? whatDoesntWork = null,Object? patternsDiscovered = null,}) {
  return _then(_self.copyWith(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as MonthlyInsightsSummary,whatWorksForYou: null == whatWorksForYou ? _self.whatWorksForYou : whatWorksForYou // ignore: cast_nullable_to_non_nullable
as List<InsightItem>,whatDoesntWork: null == whatDoesntWork ? _self.whatDoesntWork : whatDoesntWork // ignore: cast_nullable_to_non_nullable
as List<InsightItem>,patternsDiscovered: null == patternsDiscovered ? _self.patternsDiscovered : patternsDiscovered // ignore: cast_nullable_to_non_nullable
as List<InsightItem>,
  ));
}
/// Create a copy of MonthlyInsights
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MonthlyInsightsSummaryCopyWith<$Res> get summary {
  
  return $MonthlyInsightsSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [MonthlyInsights].
extension MonthlyInsightsPatterns on MonthlyInsights {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlyInsights value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlyInsights() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlyInsights value)  $default,){
final _that = this;
switch (_that) {
case _MonthlyInsights():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlyInsights value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlyInsights() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String period,  MonthlyInsightsSummary summary,  List<InsightItem> whatWorksForYou,  List<InsightItem> whatDoesntWork,  List<InsightItem> patternsDiscovered)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlyInsights() when $default != null:
return $default(_that.period,_that.summary,_that.whatWorksForYou,_that.whatDoesntWork,_that.patternsDiscovered);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String period,  MonthlyInsightsSummary summary,  List<InsightItem> whatWorksForYou,  List<InsightItem> whatDoesntWork,  List<InsightItem> patternsDiscovered)  $default,) {final _that = this;
switch (_that) {
case _MonthlyInsights():
return $default(_that.period,_that.summary,_that.whatWorksForYou,_that.whatDoesntWork,_that.patternsDiscovered);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String period,  MonthlyInsightsSummary summary,  List<InsightItem> whatWorksForYou,  List<InsightItem> whatDoesntWork,  List<InsightItem> patternsDiscovered)?  $default,) {final _that = this;
switch (_that) {
case _MonthlyInsights() when $default != null:
return $default(_that.period,_that.summary,_that.whatWorksForYou,_that.whatDoesntWork,_that.patternsDiscovered);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonthlyInsights implements MonthlyInsights {
  const _MonthlyInsights({required this.period, required this.summary, final  List<InsightItem> whatWorksForYou = const [], final  List<InsightItem> whatDoesntWork = const [], final  List<InsightItem> patternsDiscovered = const []}): _whatWorksForYou = whatWorksForYou,_whatDoesntWork = whatDoesntWork,_patternsDiscovered = patternsDiscovered;
  factory _MonthlyInsights.fromJson(Map<String, dynamic> json) => _$MonthlyInsightsFromJson(json);

@override final  String period;
@override final  MonthlyInsightsSummary summary;
 final  List<InsightItem> _whatWorksForYou;
@override@JsonKey() List<InsightItem> get whatWorksForYou {
  if (_whatWorksForYou is EqualUnmodifiableListView) return _whatWorksForYou;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_whatWorksForYou);
}

 final  List<InsightItem> _whatDoesntWork;
@override@JsonKey() List<InsightItem> get whatDoesntWork {
  if (_whatDoesntWork is EqualUnmodifiableListView) return _whatDoesntWork;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_whatDoesntWork);
}

 final  List<InsightItem> _patternsDiscovered;
@override@JsonKey() List<InsightItem> get patternsDiscovered {
  if (_patternsDiscovered is EqualUnmodifiableListView) return _patternsDiscovered;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_patternsDiscovered);
}


/// Create a copy of MonthlyInsights
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlyInsightsCopyWith<_MonthlyInsights> get copyWith => __$MonthlyInsightsCopyWithImpl<_MonthlyInsights>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonthlyInsightsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlyInsights&&(identical(other.period, period) || other.period == period)&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other._whatWorksForYou, _whatWorksForYou)&&const DeepCollectionEquality().equals(other._whatDoesntWork, _whatDoesntWork)&&const DeepCollectionEquality().equals(other._patternsDiscovered, _patternsDiscovered));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,summary,const DeepCollectionEquality().hash(_whatWorksForYou),const DeepCollectionEquality().hash(_whatDoesntWork),const DeepCollectionEquality().hash(_patternsDiscovered));

@override
String toString() {
  return 'MonthlyInsights(period: $period, summary: $summary, whatWorksForYou: $whatWorksForYou, whatDoesntWork: $whatDoesntWork, patternsDiscovered: $patternsDiscovered)';
}


}

/// @nodoc
abstract mixin class _$MonthlyInsightsCopyWith<$Res> implements $MonthlyInsightsCopyWith<$Res> {
  factory _$MonthlyInsightsCopyWith(_MonthlyInsights value, $Res Function(_MonthlyInsights) _then) = __$MonthlyInsightsCopyWithImpl;
@override @useResult
$Res call({
 String period, MonthlyInsightsSummary summary, List<InsightItem> whatWorksForYou, List<InsightItem> whatDoesntWork, List<InsightItem> patternsDiscovered
});


@override $MonthlyInsightsSummaryCopyWith<$Res> get summary;

}
/// @nodoc
class __$MonthlyInsightsCopyWithImpl<$Res>
    implements _$MonthlyInsightsCopyWith<$Res> {
  __$MonthlyInsightsCopyWithImpl(this._self, this._then);

  final _MonthlyInsights _self;
  final $Res Function(_MonthlyInsights) _then;

/// Create a copy of MonthlyInsights
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = null,Object? summary = null,Object? whatWorksForYou = null,Object? whatDoesntWork = null,Object? patternsDiscovered = null,}) {
  return _then(_MonthlyInsights(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as MonthlyInsightsSummary,whatWorksForYou: null == whatWorksForYou ? _self._whatWorksForYou : whatWorksForYou // ignore: cast_nullable_to_non_nullable
as List<InsightItem>,whatDoesntWork: null == whatDoesntWork ? _self._whatDoesntWork : whatDoesntWork // ignore: cast_nullable_to_non_nullable
as List<InsightItem>,patternsDiscovered: null == patternsDiscovered ? _self._patternsDiscovered : patternsDiscovered // ignore: cast_nullable_to_non_nullable
as List<InsightItem>,
  ));
}

/// Create a copy of MonthlyInsights
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MonthlyInsightsSummaryCopyWith<$Res> get summary {
  
  return $MonthlyInsightsSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}

// dart format on
