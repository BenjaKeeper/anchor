// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proactive_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProactiveInsight {

 String get id; InsightTrigger get trigger; InsightPriority get priority; String get title; String get message; DateTime get generatedAt; List<String> get suggestedActions; List<WellnessOption> get wellnessOptions; bool get dismissed; bool get actedUpon;
/// Create a copy of ProactiveInsight
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProactiveInsightCopyWith<ProactiveInsight> get copyWith => _$ProactiveInsightCopyWithImpl<ProactiveInsight>(this as ProactiveInsight, _$identity);

  /// Serializes this ProactiveInsight to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProactiveInsight&&(identical(other.id, id) || other.id == id)&&(identical(other.trigger, trigger) || other.trigger == trigger)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&const DeepCollectionEquality().equals(other.suggestedActions, suggestedActions)&&const DeepCollectionEquality().equals(other.wellnessOptions, wellnessOptions)&&(identical(other.dismissed, dismissed) || other.dismissed == dismissed)&&(identical(other.actedUpon, actedUpon) || other.actedUpon == actedUpon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,trigger,priority,title,message,generatedAt,const DeepCollectionEquality().hash(suggestedActions),const DeepCollectionEquality().hash(wellnessOptions),dismissed,actedUpon);

@override
String toString() {
  return 'ProactiveInsight(id: $id, trigger: $trigger, priority: $priority, title: $title, message: $message, generatedAt: $generatedAt, suggestedActions: $suggestedActions, wellnessOptions: $wellnessOptions, dismissed: $dismissed, actedUpon: $actedUpon)';
}


}

/// @nodoc
abstract mixin class $ProactiveInsightCopyWith<$Res>  {
  factory $ProactiveInsightCopyWith(ProactiveInsight value, $Res Function(ProactiveInsight) _then) = _$ProactiveInsightCopyWithImpl;
@useResult
$Res call({
 String id, InsightTrigger trigger, InsightPriority priority, String title, String message, DateTime generatedAt, List<String> suggestedActions, List<WellnessOption> wellnessOptions, bool dismissed, bool actedUpon
});




}
/// @nodoc
class _$ProactiveInsightCopyWithImpl<$Res>
    implements $ProactiveInsightCopyWith<$Res> {
  _$ProactiveInsightCopyWithImpl(this._self, this._then);

  final ProactiveInsight _self;
  final $Res Function(ProactiveInsight) _then;

/// Create a copy of ProactiveInsight
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? trigger = null,Object? priority = null,Object? title = null,Object? message = null,Object? generatedAt = null,Object? suggestedActions = null,Object? wellnessOptions = null,Object? dismissed = null,Object? actedUpon = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,trigger: null == trigger ? _self.trigger : trigger // ignore: cast_nullable_to_non_nullable
as InsightTrigger,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as InsightPriority,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,suggestedActions: null == suggestedActions ? _self.suggestedActions : suggestedActions // ignore: cast_nullable_to_non_nullable
as List<String>,wellnessOptions: null == wellnessOptions ? _self.wellnessOptions : wellnessOptions // ignore: cast_nullable_to_non_nullable
as List<WellnessOption>,dismissed: null == dismissed ? _self.dismissed : dismissed // ignore: cast_nullable_to_non_nullable
as bool,actedUpon: null == actedUpon ? _self.actedUpon : actedUpon // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProactiveInsight].
extension ProactiveInsightPatterns on ProactiveInsight {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProactiveInsight value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProactiveInsight() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProactiveInsight value)  $default,){
final _that = this;
switch (_that) {
case _ProactiveInsight():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProactiveInsight value)?  $default,){
final _that = this;
switch (_that) {
case _ProactiveInsight() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  InsightTrigger trigger,  InsightPriority priority,  String title,  String message,  DateTime generatedAt,  List<String> suggestedActions,  List<WellnessOption> wellnessOptions,  bool dismissed,  bool actedUpon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProactiveInsight() when $default != null:
return $default(_that.id,_that.trigger,_that.priority,_that.title,_that.message,_that.generatedAt,_that.suggestedActions,_that.wellnessOptions,_that.dismissed,_that.actedUpon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  InsightTrigger trigger,  InsightPriority priority,  String title,  String message,  DateTime generatedAt,  List<String> suggestedActions,  List<WellnessOption> wellnessOptions,  bool dismissed,  bool actedUpon)  $default,) {final _that = this;
switch (_that) {
case _ProactiveInsight():
return $default(_that.id,_that.trigger,_that.priority,_that.title,_that.message,_that.generatedAt,_that.suggestedActions,_that.wellnessOptions,_that.dismissed,_that.actedUpon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  InsightTrigger trigger,  InsightPriority priority,  String title,  String message,  DateTime generatedAt,  List<String> suggestedActions,  List<WellnessOption> wellnessOptions,  bool dismissed,  bool actedUpon)?  $default,) {final _that = this;
switch (_that) {
case _ProactiveInsight() when $default != null:
return $default(_that.id,_that.trigger,_that.priority,_that.title,_that.message,_that.generatedAt,_that.suggestedActions,_that.wellnessOptions,_that.dismissed,_that.actedUpon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProactiveInsight implements ProactiveInsight {
  const _ProactiveInsight({required this.id, required this.trigger, required this.priority, required this.title, required this.message, required this.generatedAt, final  List<String> suggestedActions = const [], final  List<WellnessOption> wellnessOptions = const [], this.dismissed = false, this.actedUpon = false}): _suggestedActions = suggestedActions,_wellnessOptions = wellnessOptions;
  factory _ProactiveInsight.fromJson(Map<String, dynamic> json) => _$ProactiveInsightFromJson(json);

@override final  String id;
@override final  InsightTrigger trigger;
@override final  InsightPriority priority;
@override final  String title;
@override final  String message;
@override final  DateTime generatedAt;
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

@override@JsonKey() final  bool dismissed;
@override@JsonKey() final  bool actedUpon;

/// Create a copy of ProactiveInsight
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProactiveInsightCopyWith<_ProactiveInsight> get copyWith => __$ProactiveInsightCopyWithImpl<_ProactiveInsight>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProactiveInsightToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProactiveInsight&&(identical(other.id, id) || other.id == id)&&(identical(other.trigger, trigger) || other.trigger == trigger)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&const DeepCollectionEquality().equals(other._suggestedActions, _suggestedActions)&&const DeepCollectionEquality().equals(other._wellnessOptions, _wellnessOptions)&&(identical(other.dismissed, dismissed) || other.dismissed == dismissed)&&(identical(other.actedUpon, actedUpon) || other.actedUpon == actedUpon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,trigger,priority,title,message,generatedAt,const DeepCollectionEquality().hash(_suggestedActions),const DeepCollectionEquality().hash(_wellnessOptions),dismissed,actedUpon);

@override
String toString() {
  return 'ProactiveInsight(id: $id, trigger: $trigger, priority: $priority, title: $title, message: $message, generatedAt: $generatedAt, suggestedActions: $suggestedActions, wellnessOptions: $wellnessOptions, dismissed: $dismissed, actedUpon: $actedUpon)';
}


}

/// @nodoc
abstract mixin class _$ProactiveInsightCopyWith<$Res> implements $ProactiveInsightCopyWith<$Res> {
  factory _$ProactiveInsightCopyWith(_ProactiveInsight value, $Res Function(_ProactiveInsight) _then) = __$ProactiveInsightCopyWithImpl;
@override @useResult
$Res call({
 String id, InsightTrigger trigger, InsightPriority priority, String title, String message, DateTime generatedAt, List<String> suggestedActions, List<WellnessOption> wellnessOptions, bool dismissed, bool actedUpon
});




}
/// @nodoc
class __$ProactiveInsightCopyWithImpl<$Res>
    implements _$ProactiveInsightCopyWith<$Res> {
  __$ProactiveInsightCopyWithImpl(this._self, this._then);

  final _ProactiveInsight _self;
  final $Res Function(_ProactiveInsight) _then;

/// Create a copy of ProactiveInsight
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? trigger = null,Object? priority = null,Object? title = null,Object? message = null,Object? generatedAt = null,Object? suggestedActions = null,Object? wellnessOptions = null,Object? dismissed = null,Object? actedUpon = null,}) {
  return _then(_ProactiveInsight(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,trigger: null == trigger ? _self.trigger : trigger // ignore: cast_nullable_to_non_nullable
as InsightTrigger,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as InsightPriority,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,suggestedActions: null == suggestedActions ? _self._suggestedActions : suggestedActions // ignore: cast_nullable_to_non_nullable
as List<String>,wellnessOptions: null == wellnessOptions ? _self._wellnessOptions : wellnessOptions // ignore: cast_nullable_to_non_nullable
as List<WellnessOption>,dismissed: null == dismissed ? _self.dismissed : dismissed // ignore: cast_nullable_to_non_nullable
as bool,actedUpon: null == actedUpon ? _self.actedUpon : actedUpon // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$AnchorContext {

 StressDetectionResult? get stressAnalysis; CalendarData? get upcomingSchedule; List<WellnessOption> get wellnessOptions; HistoricalContext? get userPatterns; String get userLocation; List<String> get recentMoods;
/// Create a copy of AnchorContext
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnchorContextCopyWith<AnchorContext> get copyWith => _$AnchorContextCopyWithImpl<AnchorContext>(this as AnchorContext, _$identity);

  /// Serializes this AnchorContext to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnchorContext&&(identical(other.stressAnalysis, stressAnalysis) || other.stressAnalysis == stressAnalysis)&&(identical(other.upcomingSchedule, upcomingSchedule) || other.upcomingSchedule == upcomingSchedule)&&const DeepCollectionEquality().equals(other.wellnessOptions, wellnessOptions)&&(identical(other.userPatterns, userPatterns) || other.userPatterns == userPatterns)&&(identical(other.userLocation, userLocation) || other.userLocation == userLocation)&&const DeepCollectionEquality().equals(other.recentMoods, recentMoods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stressAnalysis,upcomingSchedule,const DeepCollectionEquality().hash(wellnessOptions),userPatterns,userLocation,const DeepCollectionEquality().hash(recentMoods));

@override
String toString() {
  return 'AnchorContext(stressAnalysis: $stressAnalysis, upcomingSchedule: $upcomingSchedule, wellnessOptions: $wellnessOptions, userPatterns: $userPatterns, userLocation: $userLocation, recentMoods: $recentMoods)';
}


}

/// @nodoc
abstract mixin class $AnchorContextCopyWith<$Res>  {
  factory $AnchorContextCopyWith(AnchorContext value, $Res Function(AnchorContext) _then) = _$AnchorContextCopyWithImpl;
@useResult
$Res call({
 StressDetectionResult? stressAnalysis, CalendarData? upcomingSchedule, List<WellnessOption> wellnessOptions, HistoricalContext? userPatterns, String userLocation, List<String> recentMoods
});


$StressDetectionResultCopyWith<$Res>? get stressAnalysis;$CalendarDataCopyWith<$Res>? get upcomingSchedule;$HistoricalContextCopyWith<$Res>? get userPatterns;

}
/// @nodoc
class _$AnchorContextCopyWithImpl<$Res>
    implements $AnchorContextCopyWith<$Res> {
  _$AnchorContextCopyWithImpl(this._self, this._then);

  final AnchorContext _self;
  final $Res Function(AnchorContext) _then;

/// Create a copy of AnchorContext
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stressAnalysis = freezed,Object? upcomingSchedule = freezed,Object? wellnessOptions = null,Object? userPatterns = freezed,Object? userLocation = null,Object? recentMoods = null,}) {
  return _then(_self.copyWith(
stressAnalysis: freezed == stressAnalysis ? _self.stressAnalysis : stressAnalysis // ignore: cast_nullable_to_non_nullable
as StressDetectionResult?,upcomingSchedule: freezed == upcomingSchedule ? _self.upcomingSchedule : upcomingSchedule // ignore: cast_nullable_to_non_nullable
as CalendarData?,wellnessOptions: null == wellnessOptions ? _self.wellnessOptions : wellnessOptions // ignore: cast_nullable_to_non_nullable
as List<WellnessOption>,userPatterns: freezed == userPatterns ? _self.userPatterns : userPatterns // ignore: cast_nullable_to_non_nullable
as HistoricalContext?,userLocation: null == userLocation ? _self.userLocation : userLocation // ignore: cast_nullable_to_non_nullable
as String,recentMoods: null == recentMoods ? _self.recentMoods : recentMoods // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of AnchorContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StressDetectionResultCopyWith<$Res>? get stressAnalysis {
    if (_self.stressAnalysis == null) {
    return null;
  }

  return $StressDetectionResultCopyWith<$Res>(_self.stressAnalysis!, (value) {
    return _then(_self.copyWith(stressAnalysis: value));
  });
}/// Create a copy of AnchorContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalendarDataCopyWith<$Res>? get upcomingSchedule {
    if (_self.upcomingSchedule == null) {
    return null;
  }

  return $CalendarDataCopyWith<$Res>(_self.upcomingSchedule!, (value) {
    return _then(_self.copyWith(upcomingSchedule: value));
  });
}/// Create a copy of AnchorContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HistoricalContextCopyWith<$Res>? get userPatterns {
    if (_self.userPatterns == null) {
    return null;
  }

  return $HistoricalContextCopyWith<$Res>(_self.userPatterns!, (value) {
    return _then(_self.copyWith(userPatterns: value));
  });
}
}


/// Adds pattern-matching-related methods to [AnchorContext].
extension AnchorContextPatterns on AnchorContext {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnchorContext value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnchorContext() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnchorContext value)  $default,){
final _that = this;
switch (_that) {
case _AnchorContext():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnchorContext value)?  $default,){
final _that = this;
switch (_that) {
case _AnchorContext() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StressDetectionResult? stressAnalysis,  CalendarData? upcomingSchedule,  List<WellnessOption> wellnessOptions,  HistoricalContext? userPatterns,  String userLocation,  List<String> recentMoods)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnchorContext() when $default != null:
return $default(_that.stressAnalysis,_that.upcomingSchedule,_that.wellnessOptions,_that.userPatterns,_that.userLocation,_that.recentMoods);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StressDetectionResult? stressAnalysis,  CalendarData? upcomingSchedule,  List<WellnessOption> wellnessOptions,  HistoricalContext? userPatterns,  String userLocation,  List<String> recentMoods)  $default,) {final _that = this;
switch (_that) {
case _AnchorContext():
return $default(_that.stressAnalysis,_that.upcomingSchedule,_that.wellnessOptions,_that.userPatterns,_that.userLocation,_that.recentMoods);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StressDetectionResult? stressAnalysis,  CalendarData? upcomingSchedule,  List<WellnessOption> wellnessOptions,  HistoricalContext? userPatterns,  String userLocation,  List<String> recentMoods)?  $default,) {final _that = this;
switch (_that) {
case _AnchorContext() when $default != null:
return $default(_that.stressAnalysis,_that.upcomingSchedule,_that.wellnessOptions,_that.userPatterns,_that.userLocation,_that.recentMoods);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnchorContext implements AnchorContext {
  const _AnchorContext({required this.stressAnalysis, required this.upcomingSchedule, final  List<WellnessOption> wellnessOptions = const [], required this.userPatterns, required this.userLocation, final  List<String> recentMoods = const []}): _wellnessOptions = wellnessOptions,_recentMoods = recentMoods;
  factory _AnchorContext.fromJson(Map<String, dynamic> json) => _$AnchorContextFromJson(json);

@override final  StressDetectionResult? stressAnalysis;
@override final  CalendarData? upcomingSchedule;
 final  List<WellnessOption> _wellnessOptions;
@override@JsonKey() List<WellnessOption> get wellnessOptions {
  if (_wellnessOptions is EqualUnmodifiableListView) return _wellnessOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_wellnessOptions);
}

@override final  HistoricalContext? userPatterns;
@override final  String userLocation;
 final  List<String> _recentMoods;
@override@JsonKey() List<String> get recentMoods {
  if (_recentMoods is EqualUnmodifiableListView) return _recentMoods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentMoods);
}


/// Create a copy of AnchorContext
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnchorContextCopyWith<_AnchorContext> get copyWith => __$AnchorContextCopyWithImpl<_AnchorContext>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnchorContextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnchorContext&&(identical(other.stressAnalysis, stressAnalysis) || other.stressAnalysis == stressAnalysis)&&(identical(other.upcomingSchedule, upcomingSchedule) || other.upcomingSchedule == upcomingSchedule)&&const DeepCollectionEquality().equals(other._wellnessOptions, _wellnessOptions)&&(identical(other.userPatterns, userPatterns) || other.userPatterns == userPatterns)&&(identical(other.userLocation, userLocation) || other.userLocation == userLocation)&&const DeepCollectionEquality().equals(other._recentMoods, _recentMoods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stressAnalysis,upcomingSchedule,const DeepCollectionEquality().hash(_wellnessOptions),userPatterns,userLocation,const DeepCollectionEquality().hash(_recentMoods));

@override
String toString() {
  return 'AnchorContext(stressAnalysis: $stressAnalysis, upcomingSchedule: $upcomingSchedule, wellnessOptions: $wellnessOptions, userPatterns: $userPatterns, userLocation: $userLocation, recentMoods: $recentMoods)';
}


}

/// @nodoc
abstract mixin class _$AnchorContextCopyWith<$Res> implements $AnchorContextCopyWith<$Res> {
  factory _$AnchorContextCopyWith(_AnchorContext value, $Res Function(_AnchorContext) _then) = __$AnchorContextCopyWithImpl;
@override @useResult
$Res call({
 StressDetectionResult? stressAnalysis, CalendarData? upcomingSchedule, List<WellnessOption> wellnessOptions, HistoricalContext? userPatterns, String userLocation, List<String> recentMoods
});


@override $StressDetectionResultCopyWith<$Res>? get stressAnalysis;@override $CalendarDataCopyWith<$Res>? get upcomingSchedule;@override $HistoricalContextCopyWith<$Res>? get userPatterns;

}
/// @nodoc
class __$AnchorContextCopyWithImpl<$Res>
    implements _$AnchorContextCopyWith<$Res> {
  __$AnchorContextCopyWithImpl(this._self, this._then);

  final _AnchorContext _self;
  final $Res Function(_AnchorContext) _then;

/// Create a copy of AnchorContext
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stressAnalysis = freezed,Object? upcomingSchedule = freezed,Object? wellnessOptions = null,Object? userPatterns = freezed,Object? userLocation = null,Object? recentMoods = null,}) {
  return _then(_AnchorContext(
stressAnalysis: freezed == stressAnalysis ? _self.stressAnalysis : stressAnalysis // ignore: cast_nullable_to_non_nullable
as StressDetectionResult?,upcomingSchedule: freezed == upcomingSchedule ? _self.upcomingSchedule : upcomingSchedule // ignore: cast_nullable_to_non_nullable
as CalendarData?,wellnessOptions: null == wellnessOptions ? _self._wellnessOptions : wellnessOptions // ignore: cast_nullable_to_non_nullable
as List<WellnessOption>,userPatterns: freezed == userPatterns ? _self.userPatterns : userPatterns // ignore: cast_nullable_to_non_nullable
as HistoricalContext?,userLocation: null == userLocation ? _self.userLocation : userLocation // ignore: cast_nullable_to_non_nullable
as String,recentMoods: null == recentMoods ? _self._recentMoods : recentMoods // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of AnchorContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StressDetectionResultCopyWith<$Res>? get stressAnalysis {
    if (_self.stressAnalysis == null) {
    return null;
  }

  return $StressDetectionResultCopyWith<$Res>(_self.stressAnalysis!, (value) {
    return _then(_self.copyWith(stressAnalysis: value));
  });
}/// Create a copy of AnchorContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalendarDataCopyWith<$Res>? get upcomingSchedule {
    if (_self.upcomingSchedule == null) {
    return null;
  }

  return $CalendarDataCopyWith<$Res>(_self.upcomingSchedule!, (value) {
    return _then(_self.copyWith(upcomingSchedule: value));
  });
}/// Create a copy of AnchorContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HistoricalContextCopyWith<$Res>? get userPatterns {
    if (_self.userPatterns == null) {
    return null;
  }

  return $HistoricalContextCopyWith<$Res>(_self.userPatterns!, (value) {
    return _then(_self.copyWith(userPatterns: value));
  });
}
}

// dart format on
