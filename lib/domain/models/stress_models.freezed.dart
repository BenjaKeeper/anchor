// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stress_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CalendarEvent {

 String get title; DateTime get start; DateTime get end; String? get location; String? get timezone;
/// Create a copy of CalendarEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarEventCopyWith<CalendarEvent> get copyWith => _$CalendarEventCopyWithImpl<CalendarEvent>(this as CalendarEvent, _$identity);

  /// Serializes this CalendarEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarEvent&&(identical(other.title, title) || other.title == title)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.location, location) || other.location == location)&&(identical(other.timezone, timezone) || other.timezone == timezone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,start,end,location,timezone);

@override
String toString() {
  return 'CalendarEvent(title: $title, start: $start, end: $end, location: $location, timezone: $timezone)';
}


}

/// @nodoc
abstract mixin class $CalendarEventCopyWith<$Res>  {
  factory $CalendarEventCopyWith(CalendarEvent value, $Res Function(CalendarEvent) _then) = _$CalendarEventCopyWithImpl;
@useResult
$Res call({
 String title, DateTime start, DateTime end, String? location, String? timezone
});




}
/// @nodoc
class _$CalendarEventCopyWithImpl<$Res>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._self, this._then);

  final CalendarEvent _self;
  final $Res Function(CalendarEvent) _then;

/// Create a copy of CalendarEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? start = null,Object? end = null,Object? location = freezed,Object? timezone = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as DateTime,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as DateTime,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CalendarEvent].
extension CalendarEventPatterns on CalendarEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarEvent value)  $default,){
final _that = this;
switch (_that) {
case _CalendarEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarEvent value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  DateTime start,  DateTime end,  String? location,  String? timezone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarEvent() when $default != null:
return $default(_that.title,_that.start,_that.end,_that.location,_that.timezone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  DateTime start,  DateTime end,  String? location,  String? timezone)  $default,) {final _that = this;
switch (_that) {
case _CalendarEvent():
return $default(_that.title,_that.start,_that.end,_that.location,_that.timezone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  DateTime start,  DateTime end,  String? location,  String? timezone)?  $default,) {final _that = this;
switch (_that) {
case _CalendarEvent() when $default != null:
return $default(_that.title,_that.start,_that.end,_that.location,_that.timezone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CalendarEvent implements CalendarEvent {
  const _CalendarEvent({required this.title, required this.start, required this.end, this.location, this.timezone});
  factory _CalendarEvent.fromJson(Map<String, dynamic> json) => _$CalendarEventFromJson(json);

@override final  String title;
@override final  DateTime start;
@override final  DateTime end;
@override final  String? location;
@override final  String? timezone;

/// Create a copy of CalendarEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarEventCopyWith<_CalendarEvent> get copyWith => __$CalendarEventCopyWithImpl<_CalendarEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CalendarEventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarEvent&&(identical(other.title, title) || other.title == title)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.location, location) || other.location == location)&&(identical(other.timezone, timezone) || other.timezone == timezone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,start,end,location,timezone);

@override
String toString() {
  return 'CalendarEvent(title: $title, start: $start, end: $end, location: $location, timezone: $timezone)';
}


}

/// @nodoc
abstract mixin class _$CalendarEventCopyWith<$Res> implements $CalendarEventCopyWith<$Res> {
  factory _$CalendarEventCopyWith(_CalendarEvent value, $Res Function(_CalendarEvent) _then) = __$CalendarEventCopyWithImpl;
@override @useResult
$Res call({
 String title, DateTime start, DateTime end, String? location, String? timezone
});




}
/// @nodoc
class __$CalendarEventCopyWithImpl<$Res>
    implements _$CalendarEventCopyWith<$Res> {
  __$CalendarEventCopyWithImpl(this._self, this._then);

  final _CalendarEvent _self;
  final $Res Function(_CalendarEvent) _then;

/// Create a copy of CalendarEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? start = null,Object? end = null,Object? location = freezed,Object? timezone = freezed,}) {
  return _then(_CalendarEvent(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as DateTime,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as DateTime,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CalendarData {

 List<CalendarEvent> get events; int get travelDays; int get consecutiveTravelDays; int get timezoneChanges; double get meetingDensity; int get freeWindowsAvailable;
/// Create a copy of CalendarData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarDataCopyWith<CalendarData> get copyWith => _$CalendarDataCopyWithImpl<CalendarData>(this as CalendarData, _$identity);

  /// Serializes this CalendarData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarData&&const DeepCollectionEquality().equals(other.events, events)&&(identical(other.travelDays, travelDays) || other.travelDays == travelDays)&&(identical(other.consecutiveTravelDays, consecutiveTravelDays) || other.consecutiveTravelDays == consecutiveTravelDays)&&(identical(other.timezoneChanges, timezoneChanges) || other.timezoneChanges == timezoneChanges)&&(identical(other.meetingDensity, meetingDensity) || other.meetingDensity == meetingDensity)&&(identical(other.freeWindowsAvailable, freeWindowsAvailable) || other.freeWindowsAvailable == freeWindowsAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(events),travelDays,consecutiveTravelDays,timezoneChanges,meetingDensity,freeWindowsAvailable);

@override
String toString() {
  return 'CalendarData(events: $events, travelDays: $travelDays, consecutiveTravelDays: $consecutiveTravelDays, timezoneChanges: $timezoneChanges, meetingDensity: $meetingDensity, freeWindowsAvailable: $freeWindowsAvailable)';
}


}

/// @nodoc
abstract mixin class $CalendarDataCopyWith<$Res>  {
  factory $CalendarDataCopyWith(CalendarData value, $Res Function(CalendarData) _then) = _$CalendarDataCopyWithImpl;
@useResult
$Res call({
 List<CalendarEvent> events, int travelDays, int consecutiveTravelDays, int timezoneChanges, double meetingDensity, int freeWindowsAvailable
});




}
/// @nodoc
class _$CalendarDataCopyWithImpl<$Res>
    implements $CalendarDataCopyWith<$Res> {
  _$CalendarDataCopyWithImpl(this._self, this._then);

  final CalendarData _self;
  final $Res Function(CalendarData) _then;

/// Create a copy of CalendarData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? events = null,Object? travelDays = null,Object? consecutiveTravelDays = null,Object? timezoneChanges = null,Object? meetingDensity = null,Object? freeWindowsAvailable = null,}) {
  return _then(_self.copyWith(
events: null == events ? _self.events : events // ignore: cast_nullable_to_non_nullable
as List<CalendarEvent>,travelDays: null == travelDays ? _self.travelDays : travelDays // ignore: cast_nullable_to_non_nullable
as int,consecutiveTravelDays: null == consecutiveTravelDays ? _self.consecutiveTravelDays : consecutiveTravelDays // ignore: cast_nullable_to_non_nullable
as int,timezoneChanges: null == timezoneChanges ? _self.timezoneChanges : timezoneChanges // ignore: cast_nullable_to_non_nullable
as int,meetingDensity: null == meetingDensity ? _self.meetingDensity : meetingDensity // ignore: cast_nullable_to_non_nullable
as double,freeWindowsAvailable: null == freeWindowsAvailable ? _self.freeWindowsAvailable : freeWindowsAvailable // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CalendarData].
extension CalendarDataPatterns on CalendarData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarData value)  $default,){
final _that = this;
switch (_that) {
case _CalendarData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarData value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CalendarEvent> events,  int travelDays,  int consecutiveTravelDays,  int timezoneChanges,  double meetingDensity,  int freeWindowsAvailable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarData() when $default != null:
return $default(_that.events,_that.travelDays,_that.consecutiveTravelDays,_that.timezoneChanges,_that.meetingDensity,_that.freeWindowsAvailable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CalendarEvent> events,  int travelDays,  int consecutiveTravelDays,  int timezoneChanges,  double meetingDensity,  int freeWindowsAvailable)  $default,) {final _that = this;
switch (_that) {
case _CalendarData():
return $default(_that.events,_that.travelDays,_that.consecutiveTravelDays,_that.timezoneChanges,_that.meetingDensity,_that.freeWindowsAvailable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CalendarEvent> events,  int travelDays,  int consecutiveTravelDays,  int timezoneChanges,  double meetingDensity,  int freeWindowsAvailable)?  $default,) {final _that = this;
switch (_that) {
case _CalendarData() when $default != null:
return $default(_that.events,_that.travelDays,_that.consecutiveTravelDays,_that.timezoneChanges,_that.meetingDensity,_that.freeWindowsAvailable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CalendarData implements CalendarData {
  const _CalendarData({final  List<CalendarEvent> events = const [], this.travelDays = 0, this.consecutiveTravelDays = 0, this.timezoneChanges = 0, this.meetingDensity = 0.0, this.freeWindowsAvailable = 0}): _events = events;
  factory _CalendarData.fromJson(Map<String, dynamic> json) => _$CalendarDataFromJson(json);

 final  List<CalendarEvent> _events;
@override@JsonKey() List<CalendarEvent> get events {
  if (_events is EqualUnmodifiableListView) return _events;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_events);
}

@override@JsonKey() final  int travelDays;
@override@JsonKey() final  int consecutiveTravelDays;
@override@JsonKey() final  int timezoneChanges;
@override@JsonKey() final  double meetingDensity;
@override@JsonKey() final  int freeWindowsAvailable;

/// Create a copy of CalendarData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarDataCopyWith<_CalendarData> get copyWith => __$CalendarDataCopyWithImpl<_CalendarData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CalendarDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarData&&const DeepCollectionEquality().equals(other._events, _events)&&(identical(other.travelDays, travelDays) || other.travelDays == travelDays)&&(identical(other.consecutiveTravelDays, consecutiveTravelDays) || other.consecutiveTravelDays == consecutiveTravelDays)&&(identical(other.timezoneChanges, timezoneChanges) || other.timezoneChanges == timezoneChanges)&&(identical(other.meetingDensity, meetingDensity) || other.meetingDensity == meetingDensity)&&(identical(other.freeWindowsAvailable, freeWindowsAvailable) || other.freeWindowsAvailable == freeWindowsAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_events),travelDays,consecutiveTravelDays,timezoneChanges,meetingDensity,freeWindowsAvailable);

@override
String toString() {
  return 'CalendarData(events: $events, travelDays: $travelDays, consecutiveTravelDays: $consecutiveTravelDays, timezoneChanges: $timezoneChanges, meetingDensity: $meetingDensity, freeWindowsAvailable: $freeWindowsAvailable)';
}


}

/// @nodoc
abstract mixin class _$CalendarDataCopyWith<$Res> implements $CalendarDataCopyWith<$Res> {
  factory _$CalendarDataCopyWith(_CalendarData value, $Res Function(_CalendarData) _then) = __$CalendarDataCopyWithImpl;
@override @useResult
$Res call({
 List<CalendarEvent> events, int travelDays, int consecutiveTravelDays, int timezoneChanges, double meetingDensity, int freeWindowsAvailable
});




}
/// @nodoc
class __$CalendarDataCopyWithImpl<$Res>
    implements _$CalendarDataCopyWith<$Res> {
  __$CalendarDataCopyWithImpl(this._self, this._then);

  final _CalendarData _self;
  final $Res Function(_CalendarData) _then;

/// Create a copy of CalendarData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? events = null,Object? travelDays = null,Object? consecutiveTravelDays = null,Object? timezoneChanges = null,Object? meetingDensity = null,Object? freeWindowsAvailable = null,}) {
  return _then(_CalendarData(
events: null == events ? _self._events : events // ignore: cast_nullable_to_non_nullable
as List<CalendarEvent>,travelDays: null == travelDays ? _self.travelDays : travelDays // ignore: cast_nullable_to_non_nullable
as int,consecutiveTravelDays: null == consecutiveTravelDays ? _self.consecutiveTravelDays : consecutiveTravelDays // ignore: cast_nullable_to_non_nullable
as int,timezoneChanges: null == timezoneChanges ? _self.timezoneChanges : timezoneChanges // ignore: cast_nullable_to_non_nullable
as int,meetingDensity: null == meetingDensity ? _self.meetingDensity : meetingDensity // ignore: cast_nullable_to_non_nullable
as double,freeWindowsAvailable: null == freeWindowsAvailable ? _self.freeWindowsAvailable : freeWindowsAvailable // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$HrvData {

 double get current; double get baseline; StressTrend get trend; double get changePercent;
/// Create a copy of HrvData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HrvDataCopyWith<HrvData> get copyWith => _$HrvDataCopyWithImpl<HrvData>(this as HrvData, _$identity);

  /// Serializes this HrvData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HrvData&&(identical(other.current, current) || other.current == current)&&(identical(other.baseline, baseline) || other.baseline == baseline)&&(identical(other.trend, trend) || other.trend == trend)&&(identical(other.changePercent, changePercent) || other.changePercent == changePercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,baseline,trend,changePercent);

@override
String toString() {
  return 'HrvData(current: $current, baseline: $baseline, trend: $trend, changePercent: $changePercent)';
}


}

/// @nodoc
abstract mixin class $HrvDataCopyWith<$Res>  {
  factory $HrvDataCopyWith(HrvData value, $Res Function(HrvData) _then) = _$HrvDataCopyWithImpl;
@useResult
$Res call({
 double current, double baseline, StressTrend trend, double changePercent
});




}
/// @nodoc
class _$HrvDataCopyWithImpl<$Res>
    implements $HrvDataCopyWith<$Res> {
  _$HrvDataCopyWithImpl(this._self, this._then);

  final HrvData _self;
  final $Res Function(HrvData) _then;

/// Create a copy of HrvData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current = null,Object? baseline = null,Object? trend = null,Object? changePercent = null,}) {
  return _then(_self.copyWith(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as double,baseline: null == baseline ? _self.baseline : baseline // ignore: cast_nullable_to_non_nullable
as double,trend: null == trend ? _self.trend : trend // ignore: cast_nullable_to_non_nullable
as StressTrend,changePercent: null == changePercent ? _self.changePercent : changePercent // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [HrvData].
extension HrvDataPatterns on HrvData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HrvData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HrvData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HrvData value)  $default,){
final _that = this;
switch (_that) {
case _HrvData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HrvData value)?  $default,){
final _that = this;
switch (_that) {
case _HrvData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double current,  double baseline,  StressTrend trend,  double changePercent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HrvData() when $default != null:
return $default(_that.current,_that.baseline,_that.trend,_that.changePercent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double current,  double baseline,  StressTrend trend,  double changePercent)  $default,) {final _that = this;
switch (_that) {
case _HrvData():
return $default(_that.current,_that.baseline,_that.trend,_that.changePercent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double current,  double baseline,  StressTrend trend,  double changePercent)?  $default,) {final _that = this;
switch (_that) {
case _HrvData() when $default != null:
return $default(_that.current,_that.baseline,_that.trend,_that.changePercent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HrvData implements HrvData {
  const _HrvData({required this.current, required this.baseline, required this.trend, required this.changePercent});
  factory _HrvData.fromJson(Map<String, dynamic> json) => _$HrvDataFromJson(json);

@override final  double current;
@override final  double baseline;
@override final  StressTrend trend;
@override final  double changePercent;

/// Create a copy of HrvData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HrvDataCopyWith<_HrvData> get copyWith => __$HrvDataCopyWithImpl<_HrvData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HrvDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HrvData&&(identical(other.current, current) || other.current == current)&&(identical(other.baseline, baseline) || other.baseline == baseline)&&(identical(other.trend, trend) || other.trend == trend)&&(identical(other.changePercent, changePercent) || other.changePercent == changePercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,baseline,trend,changePercent);

@override
String toString() {
  return 'HrvData(current: $current, baseline: $baseline, trend: $trend, changePercent: $changePercent)';
}


}

/// @nodoc
abstract mixin class _$HrvDataCopyWith<$Res> implements $HrvDataCopyWith<$Res> {
  factory _$HrvDataCopyWith(_HrvData value, $Res Function(_HrvData) _then) = __$HrvDataCopyWithImpl;
@override @useResult
$Res call({
 double current, double baseline, StressTrend trend, double changePercent
});




}
/// @nodoc
class __$HrvDataCopyWithImpl<$Res>
    implements _$HrvDataCopyWith<$Res> {
  __$HrvDataCopyWithImpl(this._self, this._then);

  final _HrvData _self;
  final $Res Function(_HrvData) _then;

/// Create a copy of HrvData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? current = null,Object? baseline = null,Object? trend = null,Object? changePercent = null,}) {
  return _then(_HrvData(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as double,baseline: null == baseline ? _self.baseline : baseline // ignore: cast_nullable_to_non_nullable
as double,trend: null == trend ? _self.trend : trend // ignore: cast_nullable_to_non_nullable
as StressTrend,changePercent: null == changePercent ? _self.changePercent : changePercent // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$SleepData {

 double get hoursLastNight; double get averageLast7Days; double get debtHours; SleepQuality get quality;
/// Create a copy of SleepData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SleepDataCopyWith<SleepData> get copyWith => _$SleepDataCopyWithImpl<SleepData>(this as SleepData, _$identity);

  /// Serializes this SleepData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SleepData&&(identical(other.hoursLastNight, hoursLastNight) || other.hoursLastNight == hoursLastNight)&&(identical(other.averageLast7Days, averageLast7Days) || other.averageLast7Days == averageLast7Days)&&(identical(other.debtHours, debtHours) || other.debtHours == debtHours)&&(identical(other.quality, quality) || other.quality == quality));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hoursLastNight,averageLast7Days,debtHours,quality);

@override
String toString() {
  return 'SleepData(hoursLastNight: $hoursLastNight, averageLast7Days: $averageLast7Days, debtHours: $debtHours, quality: $quality)';
}


}

/// @nodoc
abstract mixin class $SleepDataCopyWith<$Res>  {
  factory $SleepDataCopyWith(SleepData value, $Res Function(SleepData) _then) = _$SleepDataCopyWithImpl;
@useResult
$Res call({
 double hoursLastNight, double averageLast7Days, double debtHours, SleepQuality quality
});




}
/// @nodoc
class _$SleepDataCopyWithImpl<$Res>
    implements $SleepDataCopyWith<$Res> {
  _$SleepDataCopyWithImpl(this._self, this._then);

  final SleepData _self;
  final $Res Function(SleepData) _then;

/// Create a copy of SleepData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hoursLastNight = null,Object? averageLast7Days = null,Object? debtHours = null,Object? quality = null,}) {
  return _then(_self.copyWith(
hoursLastNight: null == hoursLastNight ? _self.hoursLastNight : hoursLastNight // ignore: cast_nullable_to_non_nullable
as double,averageLast7Days: null == averageLast7Days ? _self.averageLast7Days : averageLast7Days // ignore: cast_nullable_to_non_nullable
as double,debtHours: null == debtHours ? _self.debtHours : debtHours // ignore: cast_nullable_to_non_nullable
as double,quality: null == quality ? _self.quality : quality // ignore: cast_nullable_to_non_nullable
as SleepQuality,
  ));
}

}


/// Adds pattern-matching-related methods to [SleepData].
extension SleepDataPatterns on SleepData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SleepData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SleepData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SleepData value)  $default,){
final _that = this;
switch (_that) {
case _SleepData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SleepData value)?  $default,){
final _that = this;
switch (_that) {
case _SleepData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double hoursLastNight,  double averageLast7Days,  double debtHours,  SleepQuality quality)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SleepData() when $default != null:
return $default(_that.hoursLastNight,_that.averageLast7Days,_that.debtHours,_that.quality);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double hoursLastNight,  double averageLast7Days,  double debtHours,  SleepQuality quality)  $default,) {final _that = this;
switch (_that) {
case _SleepData():
return $default(_that.hoursLastNight,_that.averageLast7Days,_that.debtHours,_that.quality);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double hoursLastNight,  double averageLast7Days,  double debtHours,  SleepQuality quality)?  $default,) {final _that = this;
switch (_that) {
case _SleepData() when $default != null:
return $default(_that.hoursLastNight,_that.averageLast7Days,_that.debtHours,_that.quality);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SleepData implements SleepData {
  const _SleepData({required this.hoursLastNight, required this.averageLast7Days, required this.debtHours, required this.quality});
  factory _SleepData.fromJson(Map<String, dynamic> json) => _$SleepDataFromJson(json);

@override final  double hoursLastNight;
@override final  double averageLast7Days;
@override final  double debtHours;
@override final  SleepQuality quality;

/// Create a copy of SleepData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SleepDataCopyWith<_SleepData> get copyWith => __$SleepDataCopyWithImpl<_SleepData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SleepDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SleepData&&(identical(other.hoursLastNight, hoursLastNight) || other.hoursLastNight == hoursLastNight)&&(identical(other.averageLast7Days, averageLast7Days) || other.averageLast7Days == averageLast7Days)&&(identical(other.debtHours, debtHours) || other.debtHours == debtHours)&&(identical(other.quality, quality) || other.quality == quality));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hoursLastNight,averageLast7Days,debtHours,quality);

@override
String toString() {
  return 'SleepData(hoursLastNight: $hoursLastNight, averageLast7Days: $averageLast7Days, debtHours: $debtHours, quality: $quality)';
}


}

/// @nodoc
abstract mixin class _$SleepDataCopyWith<$Res> implements $SleepDataCopyWith<$Res> {
  factory _$SleepDataCopyWith(_SleepData value, $Res Function(_SleepData) _then) = __$SleepDataCopyWithImpl;
@override @useResult
$Res call({
 double hoursLastNight, double averageLast7Days, double debtHours, SleepQuality quality
});




}
/// @nodoc
class __$SleepDataCopyWithImpl<$Res>
    implements _$SleepDataCopyWith<$Res> {
  __$SleepDataCopyWithImpl(this._self, this._then);

  final _SleepData _self;
  final $Res Function(_SleepData) _then;

/// Create a copy of SleepData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hoursLastNight = null,Object? averageLast7Days = null,Object? debtHours = null,Object? quality = null,}) {
  return _then(_SleepData(
hoursLastNight: null == hoursLastNight ? _self.hoursLastNight : hoursLastNight // ignore: cast_nullable_to_non_nullable
as double,averageLast7Days: null == averageLast7Days ? _self.averageLast7Days : averageLast7Days // ignore: cast_nullable_to_non_nullable
as double,debtHours: null == debtHours ? _self.debtHours : debtHours // ignore: cast_nullable_to_non_nullable
as double,quality: null == quality ? _self.quality : quality // ignore: cast_nullable_to_non_nullable
as SleepQuality,
  ));
}


}


/// @nodoc
mixin _$RestingHrData {

 int get current; int get baseline; bool get elevated;
/// Create a copy of RestingHrData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestingHrDataCopyWith<RestingHrData> get copyWith => _$RestingHrDataCopyWithImpl<RestingHrData>(this as RestingHrData, _$identity);

  /// Serializes this RestingHrData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestingHrData&&(identical(other.current, current) || other.current == current)&&(identical(other.baseline, baseline) || other.baseline == baseline)&&(identical(other.elevated, elevated) || other.elevated == elevated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,baseline,elevated);

@override
String toString() {
  return 'RestingHrData(current: $current, baseline: $baseline, elevated: $elevated)';
}


}

/// @nodoc
abstract mixin class $RestingHrDataCopyWith<$Res>  {
  factory $RestingHrDataCopyWith(RestingHrData value, $Res Function(RestingHrData) _then) = _$RestingHrDataCopyWithImpl;
@useResult
$Res call({
 int current, int baseline, bool elevated
});




}
/// @nodoc
class _$RestingHrDataCopyWithImpl<$Res>
    implements $RestingHrDataCopyWith<$Res> {
  _$RestingHrDataCopyWithImpl(this._self, this._then);

  final RestingHrData _self;
  final $Res Function(RestingHrData) _then;

/// Create a copy of RestingHrData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current = null,Object? baseline = null,Object? elevated = null,}) {
  return _then(_self.copyWith(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int,baseline: null == baseline ? _self.baseline : baseline // ignore: cast_nullable_to_non_nullable
as int,elevated: null == elevated ? _self.elevated : elevated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RestingHrData].
extension RestingHrDataPatterns on RestingHrData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RestingHrData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RestingHrData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RestingHrData value)  $default,){
final _that = this;
switch (_that) {
case _RestingHrData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RestingHrData value)?  $default,){
final _that = this;
switch (_that) {
case _RestingHrData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int current,  int baseline,  bool elevated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RestingHrData() when $default != null:
return $default(_that.current,_that.baseline,_that.elevated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int current,  int baseline,  bool elevated)  $default,) {final _that = this;
switch (_that) {
case _RestingHrData():
return $default(_that.current,_that.baseline,_that.elevated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int current,  int baseline,  bool elevated)?  $default,) {final _that = this;
switch (_that) {
case _RestingHrData() when $default != null:
return $default(_that.current,_that.baseline,_that.elevated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RestingHrData implements RestingHrData {
  const _RestingHrData({required this.current, required this.baseline, required this.elevated});
  factory _RestingHrData.fromJson(Map<String, dynamic> json) => _$RestingHrDataFromJson(json);

@override final  int current;
@override final  int baseline;
@override final  bool elevated;

/// Create a copy of RestingHrData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestingHrDataCopyWith<_RestingHrData> get copyWith => __$RestingHrDataCopyWithImpl<_RestingHrData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RestingHrDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestingHrData&&(identical(other.current, current) || other.current == current)&&(identical(other.baseline, baseline) || other.baseline == baseline)&&(identical(other.elevated, elevated) || other.elevated == elevated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,baseline,elevated);

@override
String toString() {
  return 'RestingHrData(current: $current, baseline: $baseline, elevated: $elevated)';
}


}

/// @nodoc
abstract mixin class _$RestingHrDataCopyWith<$Res> implements $RestingHrDataCopyWith<$Res> {
  factory _$RestingHrDataCopyWith(_RestingHrData value, $Res Function(_RestingHrData) _then) = __$RestingHrDataCopyWithImpl;
@override @useResult
$Res call({
 int current, int baseline, bool elevated
});




}
/// @nodoc
class __$RestingHrDataCopyWithImpl<$Res>
    implements _$RestingHrDataCopyWith<$Res> {
  __$RestingHrDataCopyWithImpl(this._self, this._then);

  final _RestingHrData _self;
  final $Res Function(_RestingHrData) _then;

/// Create a copy of RestingHrData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? current = null,Object? baseline = null,Object? elevated = null,}) {
  return _then(_RestingHrData(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int,baseline: null == baseline ? _self.baseline : baseline // ignore: cast_nullable_to_non_nullable
as int,elevated: null == elevated ? _self.elevated : elevated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ActivityGapData {

 int get daysSinceLastWorkout; String get typicalFrequency;
/// Create a copy of ActivityGapData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityGapDataCopyWith<ActivityGapData> get copyWith => _$ActivityGapDataCopyWithImpl<ActivityGapData>(this as ActivityGapData, _$identity);

  /// Serializes this ActivityGapData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityGapData&&(identical(other.daysSinceLastWorkout, daysSinceLastWorkout) || other.daysSinceLastWorkout == daysSinceLastWorkout)&&(identical(other.typicalFrequency, typicalFrequency) || other.typicalFrequency == typicalFrequency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,daysSinceLastWorkout,typicalFrequency);

@override
String toString() {
  return 'ActivityGapData(daysSinceLastWorkout: $daysSinceLastWorkout, typicalFrequency: $typicalFrequency)';
}


}

/// @nodoc
abstract mixin class $ActivityGapDataCopyWith<$Res>  {
  factory $ActivityGapDataCopyWith(ActivityGapData value, $Res Function(ActivityGapData) _then) = _$ActivityGapDataCopyWithImpl;
@useResult
$Res call({
 int daysSinceLastWorkout, String typicalFrequency
});




}
/// @nodoc
class _$ActivityGapDataCopyWithImpl<$Res>
    implements $ActivityGapDataCopyWith<$Res> {
  _$ActivityGapDataCopyWithImpl(this._self, this._then);

  final ActivityGapData _self;
  final $Res Function(ActivityGapData) _then;

/// Create a copy of ActivityGapData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? daysSinceLastWorkout = null,Object? typicalFrequency = null,}) {
  return _then(_self.copyWith(
daysSinceLastWorkout: null == daysSinceLastWorkout ? _self.daysSinceLastWorkout : daysSinceLastWorkout // ignore: cast_nullable_to_non_nullable
as int,typicalFrequency: null == typicalFrequency ? _self.typicalFrequency : typicalFrequency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityGapData].
extension ActivityGapDataPatterns on ActivityGapData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityGapData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityGapData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityGapData value)  $default,){
final _that = this;
switch (_that) {
case _ActivityGapData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityGapData value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityGapData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int daysSinceLastWorkout,  String typicalFrequency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityGapData() when $default != null:
return $default(_that.daysSinceLastWorkout,_that.typicalFrequency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int daysSinceLastWorkout,  String typicalFrequency)  $default,) {final _that = this;
switch (_that) {
case _ActivityGapData():
return $default(_that.daysSinceLastWorkout,_that.typicalFrequency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int daysSinceLastWorkout,  String typicalFrequency)?  $default,) {final _that = this;
switch (_that) {
case _ActivityGapData() when $default != null:
return $default(_that.daysSinceLastWorkout,_that.typicalFrequency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityGapData implements ActivityGapData {
  const _ActivityGapData({required this.daysSinceLastWorkout, required this.typicalFrequency});
  factory _ActivityGapData.fromJson(Map<String, dynamic> json) => _$ActivityGapDataFromJson(json);

@override final  int daysSinceLastWorkout;
@override final  String typicalFrequency;

/// Create a copy of ActivityGapData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityGapDataCopyWith<_ActivityGapData> get copyWith => __$ActivityGapDataCopyWithImpl<_ActivityGapData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityGapDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityGapData&&(identical(other.daysSinceLastWorkout, daysSinceLastWorkout) || other.daysSinceLastWorkout == daysSinceLastWorkout)&&(identical(other.typicalFrequency, typicalFrequency) || other.typicalFrequency == typicalFrequency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,daysSinceLastWorkout,typicalFrequency);

@override
String toString() {
  return 'ActivityGapData(daysSinceLastWorkout: $daysSinceLastWorkout, typicalFrequency: $typicalFrequency)';
}


}

/// @nodoc
abstract mixin class _$ActivityGapDataCopyWith<$Res> implements $ActivityGapDataCopyWith<$Res> {
  factory _$ActivityGapDataCopyWith(_ActivityGapData value, $Res Function(_ActivityGapData) _then) = __$ActivityGapDataCopyWithImpl;
@override @useResult
$Res call({
 int daysSinceLastWorkout, String typicalFrequency
});




}
/// @nodoc
class __$ActivityGapDataCopyWithImpl<$Res>
    implements _$ActivityGapDataCopyWith<$Res> {
  __$ActivityGapDataCopyWithImpl(this._self, this._then);

  final _ActivityGapData _self;
  final $Res Function(_ActivityGapData) _then;

/// Create a copy of ActivityGapData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? daysSinceLastWorkout = null,Object? typicalFrequency = null,}) {
  return _then(_ActivityGapData(
daysSinceLastWorkout: null == daysSinceLastWorkout ? _self.daysSinceLastWorkout : daysSinceLastWorkout // ignore: cast_nullable_to_non_nullable
as int,typicalFrequency: null == typicalFrequency ? _self.typicalFrequency : typicalFrequency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$HealthData {

 HrvData get hrv; SleepData get sleep; RestingHrData get restingHR; ActivityGapData get activityGap;
/// Create a copy of HealthData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealthDataCopyWith<HealthData> get copyWith => _$HealthDataCopyWithImpl<HealthData>(this as HealthData, _$identity);

  /// Serializes this HealthData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealthData&&(identical(other.hrv, hrv) || other.hrv == hrv)&&(identical(other.sleep, sleep) || other.sleep == sleep)&&(identical(other.restingHR, restingHR) || other.restingHR == restingHR)&&(identical(other.activityGap, activityGap) || other.activityGap == activityGap));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hrv,sleep,restingHR,activityGap);

@override
String toString() {
  return 'HealthData(hrv: $hrv, sleep: $sleep, restingHR: $restingHR, activityGap: $activityGap)';
}


}

/// @nodoc
abstract mixin class $HealthDataCopyWith<$Res>  {
  factory $HealthDataCopyWith(HealthData value, $Res Function(HealthData) _then) = _$HealthDataCopyWithImpl;
@useResult
$Res call({
 HrvData hrv, SleepData sleep, RestingHrData restingHR, ActivityGapData activityGap
});


$HrvDataCopyWith<$Res> get hrv;$SleepDataCopyWith<$Res> get sleep;$RestingHrDataCopyWith<$Res> get restingHR;$ActivityGapDataCopyWith<$Res> get activityGap;

}
/// @nodoc
class _$HealthDataCopyWithImpl<$Res>
    implements $HealthDataCopyWith<$Res> {
  _$HealthDataCopyWithImpl(this._self, this._then);

  final HealthData _self;
  final $Res Function(HealthData) _then;

/// Create a copy of HealthData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hrv = null,Object? sleep = null,Object? restingHR = null,Object? activityGap = null,}) {
  return _then(_self.copyWith(
hrv: null == hrv ? _self.hrv : hrv // ignore: cast_nullable_to_non_nullable
as HrvData,sleep: null == sleep ? _self.sleep : sleep // ignore: cast_nullable_to_non_nullable
as SleepData,restingHR: null == restingHR ? _self.restingHR : restingHR // ignore: cast_nullable_to_non_nullable
as RestingHrData,activityGap: null == activityGap ? _self.activityGap : activityGap // ignore: cast_nullable_to_non_nullable
as ActivityGapData,
  ));
}
/// Create a copy of HealthData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HrvDataCopyWith<$Res> get hrv {
  
  return $HrvDataCopyWith<$Res>(_self.hrv, (value) {
    return _then(_self.copyWith(hrv: value));
  });
}/// Create a copy of HealthData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SleepDataCopyWith<$Res> get sleep {
  
  return $SleepDataCopyWith<$Res>(_self.sleep, (value) {
    return _then(_self.copyWith(sleep: value));
  });
}/// Create a copy of HealthData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RestingHrDataCopyWith<$Res> get restingHR {
  
  return $RestingHrDataCopyWith<$Res>(_self.restingHR, (value) {
    return _then(_self.copyWith(restingHR: value));
  });
}/// Create a copy of HealthData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityGapDataCopyWith<$Res> get activityGap {
  
  return $ActivityGapDataCopyWith<$Res>(_self.activityGap, (value) {
    return _then(_self.copyWith(activityGap: value));
  });
}
}


/// Adds pattern-matching-related methods to [HealthData].
extension HealthDataPatterns on HealthData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealthData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealthData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealthData value)  $default,){
final _that = this;
switch (_that) {
case _HealthData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealthData value)?  $default,){
final _that = this;
switch (_that) {
case _HealthData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HrvData hrv,  SleepData sleep,  RestingHrData restingHR,  ActivityGapData activityGap)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealthData() when $default != null:
return $default(_that.hrv,_that.sleep,_that.restingHR,_that.activityGap);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HrvData hrv,  SleepData sleep,  RestingHrData restingHR,  ActivityGapData activityGap)  $default,) {final _that = this;
switch (_that) {
case _HealthData():
return $default(_that.hrv,_that.sleep,_that.restingHR,_that.activityGap);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HrvData hrv,  SleepData sleep,  RestingHrData restingHR,  ActivityGapData activityGap)?  $default,) {final _that = this;
switch (_that) {
case _HealthData() when $default != null:
return $default(_that.hrv,_that.sleep,_that.restingHR,_that.activityGap);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealthData implements HealthData {
  const _HealthData({required this.hrv, required this.sleep, required this.restingHR, required this.activityGap});
  factory _HealthData.fromJson(Map<String, dynamic> json) => _$HealthDataFromJson(json);

@override final  HrvData hrv;
@override final  SleepData sleep;
@override final  RestingHrData restingHR;
@override final  ActivityGapData activityGap;

/// Create a copy of HealthData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealthDataCopyWith<_HealthData> get copyWith => __$HealthDataCopyWithImpl<_HealthData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealthDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealthData&&(identical(other.hrv, hrv) || other.hrv == hrv)&&(identical(other.sleep, sleep) || other.sleep == sleep)&&(identical(other.restingHR, restingHR) || other.restingHR == restingHR)&&(identical(other.activityGap, activityGap) || other.activityGap == activityGap));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hrv,sleep,restingHR,activityGap);

@override
String toString() {
  return 'HealthData(hrv: $hrv, sleep: $sleep, restingHR: $restingHR, activityGap: $activityGap)';
}


}

/// @nodoc
abstract mixin class _$HealthDataCopyWith<$Res> implements $HealthDataCopyWith<$Res> {
  factory _$HealthDataCopyWith(_HealthData value, $Res Function(_HealthData) _then) = __$HealthDataCopyWithImpl;
@override @useResult
$Res call({
 HrvData hrv, SleepData sleep, RestingHrData restingHR, ActivityGapData activityGap
});


@override $HrvDataCopyWith<$Res> get hrv;@override $SleepDataCopyWith<$Res> get sleep;@override $RestingHrDataCopyWith<$Res> get restingHR;@override $ActivityGapDataCopyWith<$Res> get activityGap;

}
/// @nodoc
class __$HealthDataCopyWithImpl<$Res>
    implements _$HealthDataCopyWith<$Res> {
  __$HealthDataCopyWithImpl(this._self, this._then);

  final _HealthData _self;
  final $Res Function(_HealthData) _then;

/// Create a copy of HealthData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hrv = null,Object? sleep = null,Object? restingHR = null,Object? activityGap = null,}) {
  return _then(_HealthData(
hrv: null == hrv ? _self.hrv : hrv // ignore: cast_nullable_to_non_nullable
as HrvData,sleep: null == sleep ? _self.sleep : sleep // ignore: cast_nullable_to_non_nullable
as SleepData,restingHR: null == restingHR ? _self.restingHR : restingHR // ignore: cast_nullable_to_non_nullable
as RestingHrData,activityGap: null == activityGap ? _self.activityGap : activityGap // ignore: cast_nullable_to_non_nullable
as ActivityGapData,
  ));
}

/// Create a copy of HealthData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HrvDataCopyWith<$Res> get hrv {
  
  return $HrvDataCopyWith<$Res>(_self.hrv, (value) {
    return _then(_self.copyWith(hrv: value));
  });
}/// Create a copy of HealthData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SleepDataCopyWith<$Res> get sleep {
  
  return $SleepDataCopyWith<$Res>(_self.sleep, (value) {
    return _then(_self.copyWith(sleep: value));
  });
}/// Create a copy of HealthData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RestingHrDataCopyWith<$Res> get restingHR {
  
  return $RestingHrDataCopyWith<$Res>(_self.restingHR, (value) {
    return _then(_self.copyWith(restingHR: value));
  });
}/// Create a copy of HealthData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityGapDataCopyWith<$Res> get activityGap {
  
  return $ActivityGapDataCopyWith<$Res>(_self.activityGap, (value) {
    return _then(_self.copyWith(activityGap: value));
  });
}
}


/// @nodoc
mixin _$UserBaseline {

 int get burnoutThreshold; List<String> get stressTriggersIdentified;
/// Create a copy of UserBaseline
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserBaselineCopyWith<UserBaseline> get copyWith => _$UserBaselineCopyWithImpl<UserBaseline>(this as UserBaseline, _$identity);

  /// Serializes this UserBaseline to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserBaseline&&(identical(other.burnoutThreshold, burnoutThreshold) || other.burnoutThreshold == burnoutThreshold)&&const DeepCollectionEquality().equals(other.stressTriggersIdentified, stressTriggersIdentified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,burnoutThreshold,const DeepCollectionEquality().hash(stressTriggersIdentified));

@override
String toString() {
  return 'UserBaseline(burnoutThreshold: $burnoutThreshold, stressTriggersIdentified: $stressTriggersIdentified)';
}


}

/// @nodoc
abstract mixin class $UserBaselineCopyWith<$Res>  {
  factory $UserBaselineCopyWith(UserBaseline value, $Res Function(UserBaseline) _then) = _$UserBaselineCopyWithImpl;
@useResult
$Res call({
 int burnoutThreshold, List<String> stressTriggersIdentified
});




}
/// @nodoc
class _$UserBaselineCopyWithImpl<$Res>
    implements $UserBaselineCopyWith<$Res> {
  _$UserBaselineCopyWithImpl(this._self, this._then);

  final UserBaseline _self;
  final $Res Function(UserBaseline) _then;

/// Create a copy of UserBaseline
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? burnoutThreshold = null,Object? stressTriggersIdentified = null,}) {
  return _then(_self.copyWith(
burnoutThreshold: null == burnoutThreshold ? _self.burnoutThreshold : burnoutThreshold // ignore: cast_nullable_to_non_nullable
as int,stressTriggersIdentified: null == stressTriggersIdentified ? _self.stressTriggersIdentified : stressTriggersIdentified // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserBaseline].
extension UserBaselinePatterns on UserBaseline {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserBaseline value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserBaseline() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserBaseline value)  $default,){
final _that = this;
switch (_that) {
case _UserBaseline():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserBaseline value)?  $default,){
final _that = this;
switch (_that) {
case _UserBaseline() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int burnoutThreshold,  List<String> stressTriggersIdentified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserBaseline() when $default != null:
return $default(_that.burnoutThreshold,_that.stressTriggersIdentified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int burnoutThreshold,  List<String> stressTriggersIdentified)  $default,) {final _that = this;
switch (_that) {
case _UserBaseline():
return $default(_that.burnoutThreshold,_that.stressTriggersIdentified);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int burnoutThreshold,  List<String> stressTriggersIdentified)?  $default,) {final _that = this;
switch (_that) {
case _UserBaseline() when $default != null:
return $default(_that.burnoutThreshold,_that.stressTriggersIdentified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserBaseline implements UserBaseline {
  const _UserBaseline({required this.burnoutThreshold, final  List<String> stressTriggersIdentified = const []}): _stressTriggersIdentified = stressTriggersIdentified;
  factory _UserBaseline.fromJson(Map<String, dynamic> json) => _$UserBaselineFromJson(json);

@override final  int burnoutThreshold;
 final  List<String> _stressTriggersIdentified;
@override@JsonKey() List<String> get stressTriggersIdentified {
  if (_stressTriggersIdentified is EqualUnmodifiableListView) return _stressTriggersIdentified;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stressTriggersIdentified);
}


/// Create a copy of UserBaseline
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserBaselineCopyWith<_UserBaseline> get copyWith => __$UserBaselineCopyWithImpl<_UserBaseline>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserBaselineToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserBaseline&&(identical(other.burnoutThreshold, burnoutThreshold) || other.burnoutThreshold == burnoutThreshold)&&const DeepCollectionEquality().equals(other._stressTriggersIdentified, _stressTriggersIdentified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,burnoutThreshold,const DeepCollectionEquality().hash(_stressTriggersIdentified));

@override
String toString() {
  return 'UserBaseline(burnoutThreshold: $burnoutThreshold, stressTriggersIdentified: $stressTriggersIdentified)';
}


}

/// @nodoc
abstract mixin class _$UserBaselineCopyWith<$Res> implements $UserBaselineCopyWith<$Res> {
  factory _$UserBaselineCopyWith(_UserBaseline value, $Res Function(_UserBaseline) _then) = __$UserBaselineCopyWithImpl;
@override @useResult
$Res call({
 int burnoutThreshold, List<String> stressTriggersIdentified
});




}
/// @nodoc
class __$UserBaselineCopyWithImpl<$Res>
    implements _$UserBaselineCopyWith<$Res> {
  __$UserBaselineCopyWithImpl(this._self, this._then);

  final _UserBaseline _self;
  final $Res Function(_UserBaseline) _then;

/// Create a copy of UserBaseline
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? burnoutThreshold = null,Object? stressTriggersIdentified = null,}) {
  return _then(_UserBaseline(
burnoutThreshold: null == burnoutThreshold ? _self.burnoutThreshold : burnoutThreshold // ignore: cast_nullable_to_non_nullable
as int,stressTriggersIdentified: null == stressTriggersIdentified ? _self._stressTriggersIdentified : stressTriggersIdentified // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$RecentPattern {

 DateTime get lastWellnessActivity; StressTrend get stressLevel7DayTrend;
/// Create a copy of RecentPattern
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentPatternCopyWith<RecentPattern> get copyWith => _$RecentPatternCopyWithImpl<RecentPattern>(this as RecentPattern, _$identity);

  /// Serializes this RecentPattern to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentPattern&&(identical(other.lastWellnessActivity, lastWellnessActivity) || other.lastWellnessActivity == lastWellnessActivity)&&(identical(other.stressLevel7DayTrend, stressLevel7DayTrend) || other.stressLevel7DayTrend == stressLevel7DayTrend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lastWellnessActivity,stressLevel7DayTrend);

@override
String toString() {
  return 'RecentPattern(lastWellnessActivity: $lastWellnessActivity, stressLevel7DayTrend: $stressLevel7DayTrend)';
}


}

/// @nodoc
abstract mixin class $RecentPatternCopyWith<$Res>  {
  factory $RecentPatternCopyWith(RecentPattern value, $Res Function(RecentPattern) _then) = _$RecentPatternCopyWithImpl;
@useResult
$Res call({
 DateTime lastWellnessActivity, StressTrend stressLevel7DayTrend
});




}
/// @nodoc
class _$RecentPatternCopyWithImpl<$Res>
    implements $RecentPatternCopyWith<$Res> {
  _$RecentPatternCopyWithImpl(this._self, this._then);

  final RecentPattern _self;
  final $Res Function(RecentPattern) _then;

/// Create a copy of RecentPattern
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lastWellnessActivity = null,Object? stressLevel7DayTrend = null,}) {
  return _then(_self.copyWith(
lastWellnessActivity: null == lastWellnessActivity ? _self.lastWellnessActivity : lastWellnessActivity // ignore: cast_nullable_to_non_nullable
as DateTime,stressLevel7DayTrend: null == stressLevel7DayTrend ? _self.stressLevel7DayTrend : stressLevel7DayTrend // ignore: cast_nullable_to_non_nullable
as StressTrend,
  ));
}

}


/// Adds pattern-matching-related methods to [RecentPattern].
extension RecentPatternPatterns on RecentPattern {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecentPattern value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecentPattern() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecentPattern value)  $default,){
final _that = this;
switch (_that) {
case _RecentPattern():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecentPattern value)?  $default,){
final _that = this;
switch (_that) {
case _RecentPattern() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime lastWellnessActivity,  StressTrend stressLevel7DayTrend)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecentPattern() when $default != null:
return $default(_that.lastWellnessActivity,_that.stressLevel7DayTrend);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime lastWellnessActivity,  StressTrend stressLevel7DayTrend)  $default,) {final _that = this;
switch (_that) {
case _RecentPattern():
return $default(_that.lastWellnessActivity,_that.stressLevel7DayTrend);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime lastWellnessActivity,  StressTrend stressLevel7DayTrend)?  $default,) {final _that = this;
switch (_that) {
case _RecentPattern() when $default != null:
return $default(_that.lastWellnessActivity,_that.stressLevel7DayTrend);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecentPattern implements RecentPattern {
  const _RecentPattern({required this.lastWellnessActivity, required this.stressLevel7DayTrend});
  factory _RecentPattern.fromJson(Map<String, dynamic> json) => _$RecentPatternFromJson(json);

@override final  DateTime lastWellnessActivity;
@override final  StressTrend stressLevel7DayTrend;

/// Create a copy of RecentPattern
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentPatternCopyWith<_RecentPattern> get copyWith => __$RecentPatternCopyWithImpl<_RecentPattern>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecentPatternToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentPattern&&(identical(other.lastWellnessActivity, lastWellnessActivity) || other.lastWellnessActivity == lastWellnessActivity)&&(identical(other.stressLevel7DayTrend, stressLevel7DayTrend) || other.stressLevel7DayTrend == stressLevel7DayTrend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lastWellnessActivity,stressLevel7DayTrend);

@override
String toString() {
  return 'RecentPattern(lastWellnessActivity: $lastWellnessActivity, stressLevel7DayTrend: $stressLevel7DayTrend)';
}


}

/// @nodoc
abstract mixin class _$RecentPatternCopyWith<$Res> implements $RecentPatternCopyWith<$Res> {
  factory _$RecentPatternCopyWith(_RecentPattern value, $Res Function(_RecentPattern) _then) = __$RecentPatternCopyWithImpl;
@override @useResult
$Res call({
 DateTime lastWellnessActivity, StressTrend stressLevel7DayTrend
});




}
/// @nodoc
class __$RecentPatternCopyWithImpl<$Res>
    implements _$RecentPatternCopyWith<$Res> {
  __$RecentPatternCopyWithImpl(this._self, this._then);

  final _RecentPattern _self;
  final $Res Function(_RecentPattern) _then;

/// Create a copy of RecentPattern
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lastWellnessActivity = null,Object? stressLevel7DayTrend = null,}) {
  return _then(_RecentPattern(
lastWellnessActivity: null == lastWellnessActivity ? _self.lastWellnessActivity : lastWellnessActivity // ignore: cast_nullable_to_non_nullable
as DateTime,stressLevel7DayTrend: null == stressLevel7DayTrend ? _self.stressLevel7DayTrend : stressLevel7DayTrend // ignore: cast_nullable_to_non_nullable
as StressTrend,
  ));
}


}


/// @nodoc
mixin _$HistoricalContext {

 UserBaseline get userBaseline; RecentPattern get recentPattern;
/// Create a copy of HistoricalContext
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoricalContextCopyWith<HistoricalContext> get copyWith => _$HistoricalContextCopyWithImpl<HistoricalContext>(this as HistoricalContext, _$identity);

  /// Serializes this HistoricalContext to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoricalContext&&(identical(other.userBaseline, userBaseline) || other.userBaseline == userBaseline)&&(identical(other.recentPattern, recentPattern) || other.recentPattern == recentPattern));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userBaseline,recentPattern);

@override
String toString() {
  return 'HistoricalContext(userBaseline: $userBaseline, recentPattern: $recentPattern)';
}


}

/// @nodoc
abstract mixin class $HistoricalContextCopyWith<$Res>  {
  factory $HistoricalContextCopyWith(HistoricalContext value, $Res Function(HistoricalContext) _then) = _$HistoricalContextCopyWithImpl;
@useResult
$Res call({
 UserBaseline userBaseline, RecentPattern recentPattern
});


$UserBaselineCopyWith<$Res> get userBaseline;$RecentPatternCopyWith<$Res> get recentPattern;

}
/// @nodoc
class _$HistoricalContextCopyWithImpl<$Res>
    implements $HistoricalContextCopyWith<$Res> {
  _$HistoricalContextCopyWithImpl(this._self, this._then);

  final HistoricalContext _self;
  final $Res Function(HistoricalContext) _then;

/// Create a copy of HistoricalContext
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userBaseline = null,Object? recentPattern = null,}) {
  return _then(_self.copyWith(
userBaseline: null == userBaseline ? _self.userBaseline : userBaseline // ignore: cast_nullable_to_non_nullable
as UserBaseline,recentPattern: null == recentPattern ? _self.recentPattern : recentPattern // ignore: cast_nullable_to_non_nullable
as RecentPattern,
  ));
}
/// Create a copy of HistoricalContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserBaselineCopyWith<$Res> get userBaseline {
  
  return $UserBaselineCopyWith<$Res>(_self.userBaseline, (value) {
    return _then(_self.copyWith(userBaseline: value));
  });
}/// Create a copy of HistoricalContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecentPatternCopyWith<$Res> get recentPattern {
  
  return $RecentPatternCopyWith<$Res>(_self.recentPattern, (value) {
    return _then(_self.copyWith(recentPattern: value));
  });
}
}


/// Adds pattern-matching-related methods to [HistoricalContext].
extension HistoricalContextPatterns on HistoricalContext {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HistoricalContext value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HistoricalContext() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HistoricalContext value)  $default,){
final _that = this;
switch (_that) {
case _HistoricalContext():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HistoricalContext value)?  $default,){
final _that = this;
switch (_that) {
case _HistoricalContext() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserBaseline userBaseline,  RecentPattern recentPattern)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HistoricalContext() when $default != null:
return $default(_that.userBaseline,_that.recentPattern);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserBaseline userBaseline,  RecentPattern recentPattern)  $default,) {final _that = this;
switch (_that) {
case _HistoricalContext():
return $default(_that.userBaseline,_that.recentPattern);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserBaseline userBaseline,  RecentPattern recentPattern)?  $default,) {final _that = this;
switch (_that) {
case _HistoricalContext() when $default != null:
return $default(_that.userBaseline,_that.recentPattern);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HistoricalContext implements HistoricalContext {
  const _HistoricalContext({required this.userBaseline, required this.recentPattern});
  factory _HistoricalContext.fromJson(Map<String, dynamic> json) => _$HistoricalContextFromJson(json);

@override final  UserBaseline userBaseline;
@override final  RecentPattern recentPattern;

/// Create a copy of HistoricalContext
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoricalContextCopyWith<_HistoricalContext> get copyWith => __$HistoricalContextCopyWithImpl<_HistoricalContext>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HistoricalContextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoricalContext&&(identical(other.userBaseline, userBaseline) || other.userBaseline == userBaseline)&&(identical(other.recentPattern, recentPattern) || other.recentPattern == recentPattern));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userBaseline,recentPattern);

@override
String toString() {
  return 'HistoricalContext(userBaseline: $userBaseline, recentPattern: $recentPattern)';
}


}

/// @nodoc
abstract mixin class _$HistoricalContextCopyWith<$Res> implements $HistoricalContextCopyWith<$Res> {
  factory _$HistoricalContextCopyWith(_HistoricalContext value, $Res Function(_HistoricalContext) _then) = __$HistoricalContextCopyWithImpl;
@override @useResult
$Res call({
 UserBaseline userBaseline, RecentPattern recentPattern
});


@override $UserBaselineCopyWith<$Res> get userBaseline;@override $RecentPatternCopyWith<$Res> get recentPattern;

}
/// @nodoc
class __$HistoricalContextCopyWithImpl<$Res>
    implements _$HistoricalContextCopyWith<$Res> {
  __$HistoricalContextCopyWithImpl(this._self, this._then);

  final _HistoricalContext _self;
  final $Res Function(_HistoricalContext) _then;

/// Create a copy of HistoricalContext
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userBaseline = null,Object? recentPattern = null,}) {
  return _then(_HistoricalContext(
userBaseline: null == userBaseline ? _self.userBaseline : userBaseline // ignore: cast_nullable_to_non_nullable
as UserBaseline,recentPattern: null == recentPattern ? _self.recentPattern : recentPattern // ignore: cast_nullable_to_non_nullable
as RecentPattern,
  ));
}

/// Create a copy of HistoricalContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserBaselineCopyWith<$Res> get userBaseline {
  
  return $UserBaselineCopyWith<$Res>(_self.userBaseline, (value) {
    return _then(_self.copyWith(userBaseline: value));
  });
}/// Create a copy of HistoricalContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecentPatternCopyWith<$Res> get recentPattern {
  
  return $RecentPatternCopyWith<$Res>(_self.recentPattern, (value) {
    return _then(_self.copyWith(recentPattern: value));
  });
}
}


/// @nodoc
mixin _$TriggerAnalysis {

 String get primary; String get secondary; String get contextual;
/// Create a copy of TriggerAnalysis
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TriggerAnalysisCopyWith<TriggerAnalysis> get copyWith => _$TriggerAnalysisCopyWithImpl<TriggerAnalysis>(this as TriggerAnalysis, _$identity);

  /// Serializes this TriggerAnalysis to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TriggerAnalysis&&(identical(other.primary, primary) || other.primary == primary)&&(identical(other.secondary, secondary) || other.secondary == secondary)&&(identical(other.contextual, contextual) || other.contextual == contextual));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,primary,secondary,contextual);

@override
String toString() {
  return 'TriggerAnalysis(primary: $primary, secondary: $secondary, contextual: $contextual)';
}


}

/// @nodoc
abstract mixin class $TriggerAnalysisCopyWith<$Res>  {
  factory $TriggerAnalysisCopyWith(TriggerAnalysis value, $Res Function(TriggerAnalysis) _then) = _$TriggerAnalysisCopyWithImpl;
@useResult
$Res call({
 String primary, String secondary, String contextual
});




}
/// @nodoc
class _$TriggerAnalysisCopyWithImpl<$Res>
    implements $TriggerAnalysisCopyWith<$Res> {
  _$TriggerAnalysisCopyWithImpl(this._self, this._then);

  final TriggerAnalysis _self;
  final $Res Function(TriggerAnalysis) _then;

/// Create a copy of TriggerAnalysis
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? primary = null,Object? secondary = null,Object? contextual = null,}) {
  return _then(_self.copyWith(
primary: null == primary ? _self.primary : primary // ignore: cast_nullable_to_non_nullable
as String,secondary: null == secondary ? _self.secondary : secondary // ignore: cast_nullable_to_non_nullable
as String,contextual: null == contextual ? _self.contextual : contextual // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TriggerAnalysis].
extension TriggerAnalysisPatterns on TriggerAnalysis {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TriggerAnalysis value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TriggerAnalysis() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TriggerAnalysis value)  $default,){
final _that = this;
switch (_that) {
case _TriggerAnalysis():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TriggerAnalysis value)?  $default,){
final _that = this;
switch (_that) {
case _TriggerAnalysis() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String primary,  String secondary,  String contextual)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TriggerAnalysis() when $default != null:
return $default(_that.primary,_that.secondary,_that.contextual);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String primary,  String secondary,  String contextual)  $default,) {final _that = this;
switch (_that) {
case _TriggerAnalysis():
return $default(_that.primary,_that.secondary,_that.contextual);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String primary,  String secondary,  String contextual)?  $default,) {final _that = this;
switch (_that) {
case _TriggerAnalysis() when $default != null:
return $default(_that.primary,_that.secondary,_that.contextual);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TriggerAnalysis implements TriggerAnalysis {
  const _TriggerAnalysis({required this.primary, required this.secondary, required this.contextual});
  factory _TriggerAnalysis.fromJson(Map<String, dynamic> json) => _$TriggerAnalysisFromJson(json);

@override final  String primary;
@override final  String secondary;
@override final  String contextual;

/// Create a copy of TriggerAnalysis
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TriggerAnalysisCopyWith<_TriggerAnalysis> get copyWith => __$TriggerAnalysisCopyWithImpl<_TriggerAnalysis>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TriggerAnalysisToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TriggerAnalysis&&(identical(other.primary, primary) || other.primary == primary)&&(identical(other.secondary, secondary) || other.secondary == secondary)&&(identical(other.contextual, contextual) || other.contextual == contextual));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,primary,secondary,contextual);

@override
String toString() {
  return 'TriggerAnalysis(primary: $primary, secondary: $secondary, contextual: $contextual)';
}


}

/// @nodoc
abstract mixin class _$TriggerAnalysisCopyWith<$Res> implements $TriggerAnalysisCopyWith<$Res> {
  factory _$TriggerAnalysisCopyWith(_TriggerAnalysis value, $Res Function(_TriggerAnalysis) _then) = __$TriggerAnalysisCopyWithImpl;
@override @useResult
$Res call({
 String primary, String secondary, String contextual
});




}
/// @nodoc
class __$TriggerAnalysisCopyWithImpl<$Res>
    implements _$TriggerAnalysisCopyWith<$Res> {
  __$TriggerAnalysisCopyWithImpl(this._self, this._then);

  final _TriggerAnalysis _self;
  final $Res Function(_TriggerAnalysis) _then;

/// Create a copy of TriggerAnalysis
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? primary = null,Object? secondary = null,Object? contextual = null,}) {
  return _then(_TriggerAnalysis(
primary: null == primary ? _self.primary : primary // ignore: cast_nullable_to_non_nullable
as String,secondary: null == secondary ? _self.secondary : secondary // ignore: cast_nullable_to_non_nullable
as String,contextual: null == contextual ? _self.contextual : contextual // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$InterventionRecommendation {

 InterventionUrgency get urgency; String get timing; String get reasoning; List<String> get suggestedActions;
/// Create a copy of InterventionRecommendation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InterventionRecommendationCopyWith<InterventionRecommendation> get copyWith => _$InterventionRecommendationCopyWithImpl<InterventionRecommendation>(this as InterventionRecommendation, _$identity);

  /// Serializes this InterventionRecommendation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterventionRecommendation&&(identical(other.urgency, urgency) || other.urgency == urgency)&&(identical(other.timing, timing) || other.timing == timing)&&(identical(other.reasoning, reasoning) || other.reasoning == reasoning)&&const DeepCollectionEquality().equals(other.suggestedActions, suggestedActions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,urgency,timing,reasoning,const DeepCollectionEquality().hash(suggestedActions));

@override
String toString() {
  return 'InterventionRecommendation(urgency: $urgency, timing: $timing, reasoning: $reasoning, suggestedActions: $suggestedActions)';
}


}

/// @nodoc
abstract mixin class $InterventionRecommendationCopyWith<$Res>  {
  factory $InterventionRecommendationCopyWith(InterventionRecommendation value, $Res Function(InterventionRecommendation) _then) = _$InterventionRecommendationCopyWithImpl;
@useResult
$Res call({
 InterventionUrgency urgency, String timing, String reasoning, List<String> suggestedActions
});




}
/// @nodoc
class _$InterventionRecommendationCopyWithImpl<$Res>
    implements $InterventionRecommendationCopyWith<$Res> {
  _$InterventionRecommendationCopyWithImpl(this._self, this._then);

  final InterventionRecommendation _self;
  final $Res Function(InterventionRecommendation) _then;

/// Create a copy of InterventionRecommendation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? urgency = null,Object? timing = null,Object? reasoning = null,Object? suggestedActions = null,}) {
  return _then(_self.copyWith(
urgency: null == urgency ? _self.urgency : urgency // ignore: cast_nullable_to_non_nullable
as InterventionUrgency,timing: null == timing ? _self.timing : timing // ignore: cast_nullable_to_non_nullable
as String,reasoning: null == reasoning ? _self.reasoning : reasoning // ignore: cast_nullable_to_non_nullable
as String,suggestedActions: null == suggestedActions ? _self.suggestedActions : suggestedActions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [InterventionRecommendation].
extension InterventionRecommendationPatterns on InterventionRecommendation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InterventionRecommendation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InterventionRecommendation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InterventionRecommendation value)  $default,){
final _that = this;
switch (_that) {
case _InterventionRecommendation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InterventionRecommendation value)?  $default,){
final _that = this;
switch (_that) {
case _InterventionRecommendation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( InterventionUrgency urgency,  String timing,  String reasoning,  List<String> suggestedActions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InterventionRecommendation() when $default != null:
return $default(_that.urgency,_that.timing,_that.reasoning,_that.suggestedActions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( InterventionUrgency urgency,  String timing,  String reasoning,  List<String> suggestedActions)  $default,) {final _that = this;
switch (_that) {
case _InterventionRecommendation():
return $default(_that.urgency,_that.timing,_that.reasoning,_that.suggestedActions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( InterventionUrgency urgency,  String timing,  String reasoning,  List<String> suggestedActions)?  $default,) {final _that = this;
switch (_that) {
case _InterventionRecommendation() when $default != null:
return $default(_that.urgency,_that.timing,_that.reasoning,_that.suggestedActions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InterventionRecommendation implements InterventionRecommendation {
  const _InterventionRecommendation({required this.urgency, required this.timing, required this.reasoning, final  List<String> suggestedActions = const []}): _suggestedActions = suggestedActions;
  factory _InterventionRecommendation.fromJson(Map<String, dynamic> json) => _$InterventionRecommendationFromJson(json);

@override final  InterventionUrgency urgency;
@override final  String timing;
@override final  String reasoning;
 final  List<String> _suggestedActions;
@override@JsonKey() List<String> get suggestedActions {
  if (_suggestedActions is EqualUnmodifiableListView) return _suggestedActions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestedActions);
}


/// Create a copy of InterventionRecommendation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InterventionRecommendationCopyWith<_InterventionRecommendation> get copyWith => __$InterventionRecommendationCopyWithImpl<_InterventionRecommendation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InterventionRecommendationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InterventionRecommendation&&(identical(other.urgency, urgency) || other.urgency == urgency)&&(identical(other.timing, timing) || other.timing == timing)&&(identical(other.reasoning, reasoning) || other.reasoning == reasoning)&&const DeepCollectionEquality().equals(other._suggestedActions, _suggestedActions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,urgency,timing,reasoning,const DeepCollectionEquality().hash(_suggestedActions));

@override
String toString() {
  return 'InterventionRecommendation(urgency: $urgency, timing: $timing, reasoning: $reasoning, suggestedActions: $suggestedActions)';
}


}

/// @nodoc
abstract mixin class _$InterventionRecommendationCopyWith<$Res> implements $InterventionRecommendationCopyWith<$Res> {
  factory _$InterventionRecommendationCopyWith(_InterventionRecommendation value, $Res Function(_InterventionRecommendation) _then) = __$InterventionRecommendationCopyWithImpl;
@override @useResult
$Res call({
 InterventionUrgency urgency, String timing, String reasoning, List<String> suggestedActions
});




}
/// @nodoc
class __$InterventionRecommendationCopyWithImpl<$Res>
    implements _$InterventionRecommendationCopyWith<$Res> {
  __$InterventionRecommendationCopyWithImpl(this._self, this._then);

  final _InterventionRecommendation _self;
  final $Res Function(_InterventionRecommendation) _then;

/// Create a copy of InterventionRecommendation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? urgency = null,Object? timing = null,Object? reasoning = null,Object? suggestedActions = null,}) {
  return _then(_InterventionRecommendation(
urgency: null == urgency ? _self.urgency : urgency // ignore: cast_nullable_to_non_nullable
as InterventionUrgency,timing: null == timing ? _self.timing : timing // ignore: cast_nullable_to_non_nullable
as String,reasoning: null == reasoning ? _self.reasoning : reasoning // ignore: cast_nullable_to_non_nullable
as String,suggestedActions: null == suggestedActions ? _self._suggestedActions : suggestedActions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$ConversationalContext {

 String get tone; String get messageSuggestion;
/// Create a copy of ConversationalContext
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationalContextCopyWith<ConversationalContext> get copyWith => _$ConversationalContextCopyWithImpl<ConversationalContext>(this as ConversationalContext, _$identity);

  /// Serializes this ConversationalContext to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationalContext&&(identical(other.tone, tone) || other.tone == tone)&&(identical(other.messageSuggestion, messageSuggestion) || other.messageSuggestion == messageSuggestion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tone,messageSuggestion);

@override
String toString() {
  return 'ConversationalContext(tone: $tone, messageSuggestion: $messageSuggestion)';
}


}

/// @nodoc
abstract mixin class $ConversationalContextCopyWith<$Res>  {
  factory $ConversationalContextCopyWith(ConversationalContext value, $Res Function(ConversationalContext) _then) = _$ConversationalContextCopyWithImpl;
@useResult
$Res call({
 String tone, String messageSuggestion
});




}
/// @nodoc
class _$ConversationalContextCopyWithImpl<$Res>
    implements $ConversationalContextCopyWith<$Res> {
  _$ConversationalContextCopyWithImpl(this._self, this._then);

  final ConversationalContext _self;
  final $Res Function(ConversationalContext) _then;

/// Create a copy of ConversationalContext
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tone = null,Object? messageSuggestion = null,}) {
  return _then(_self.copyWith(
tone: null == tone ? _self.tone : tone // ignore: cast_nullable_to_non_nullable
as String,messageSuggestion: null == messageSuggestion ? _self.messageSuggestion : messageSuggestion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ConversationalContext].
extension ConversationalContextPatterns on ConversationalContext {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConversationalContext value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConversationalContext() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConversationalContext value)  $default,){
final _that = this;
switch (_that) {
case _ConversationalContext():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConversationalContext value)?  $default,){
final _that = this;
switch (_that) {
case _ConversationalContext() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tone,  String messageSuggestion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversationalContext() when $default != null:
return $default(_that.tone,_that.messageSuggestion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tone,  String messageSuggestion)  $default,) {final _that = this;
switch (_that) {
case _ConversationalContext():
return $default(_that.tone,_that.messageSuggestion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tone,  String messageSuggestion)?  $default,) {final _that = this;
switch (_that) {
case _ConversationalContext() when $default != null:
return $default(_that.tone,_that.messageSuggestion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConversationalContext implements ConversationalContext {
  const _ConversationalContext({required this.tone, required this.messageSuggestion});
  factory _ConversationalContext.fromJson(Map<String, dynamic> json) => _$ConversationalContextFromJson(json);

@override final  String tone;
@override final  String messageSuggestion;

/// Create a copy of ConversationalContext
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationalContextCopyWith<_ConversationalContext> get copyWith => __$ConversationalContextCopyWithImpl<_ConversationalContext>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversationalContextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationalContext&&(identical(other.tone, tone) || other.tone == tone)&&(identical(other.messageSuggestion, messageSuggestion) || other.messageSuggestion == messageSuggestion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tone,messageSuggestion);

@override
String toString() {
  return 'ConversationalContext(tone: $tone, messageSuggestion: $messageSuggestion)';
}


}

/// @nodoc
abstract mixin class _$ConversationalContextCopyWith<$Res> implements $ConversationalContextCopyWith<$Res> {
  factory _$ConversationalContextCopyWith(_ConversationalContext value, $Res Function(_ConversationalContext) _then) = __$ConversationalContextCopyWithImpl;
@override @useResult
$Res call({
 String tone, String messageSuggestion
});




}
/// @nodoc
class __$ConversationalContextCopyWithImpl<$Res>
    implements _$ConversationalContextCopyWith<$Res> {
  __$ConversationalContextCopyWithImpl(this._self, this._then);

  final _ConversationalContext _self;
  final $Res Function(_ConversationalContext) _then;

/// Create a copy of ConversationalContext
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tone = null,Object? messageSuggestion = null,}) {
  return _then(_ConversationalContext(
tone: null == tone ? _self.tone : tone // ignore: cast_nullable_to_non_nullable
as String,messageSuggestion: null == messageSuggestion ? _self.messageSuggestion : messageSuggestion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$StressDetectionResult {

 int get stressScore; BurnoutRisk get burnoutRisk; double get confidence; List<String> get keySignals; TriggerAnalysis get triggerAnalysis; InterventionRecommendation get interventionRecommendation; ConversationalContext get conversationalContext;
/// Create a copy of StressDetectionResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StressDetectionResultCopyWith<StressDetectionResult> get copyWith => _$StressDetectionResultCopyWithImpl<StressDetectionResult>(this as StressDetectionResult, _$identity);

  /// Serializes this StressDetectionResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StressDetectionResult&&(identical(other.stressScore, stressScore) || other.stressScore == stressScore)&&(identical(other.burnoutRisk, burnoutRisk) || other.burnoutRisk == burnoutRisk)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&const DeepCollectionEquality().equals(other.keySignals, keySignals)&&(identical(other.triggerAnalysis, triggerAnalysis) || other.triggerAnalysis == triggerAnalysis)&&(identical(other.interventionRecommendation, interventionRecommendation) || other.interventionRecommendation == interventionRecommendation)&&(identical(other.conversationalContext, conversationalContext) || other.conversationalContext == conversationalContext));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stressScore,burnoutRisk,confidence,const DeepCollectionEquality().hash(keySignals),triggerAnalysis,interventionRecommendation,conversationalContext);

@override
String toString() {
  return 'StressDetectionResult(stressScore: $stressScore, burnoutRisk: $burnoutRisk, confidence: $confidence, keySignals: $keySignals, triggerAnalysis: $triggerAnalysis, interventionRecommendation: $interventionRecommendation, conversationalContext: $conversationalContext)';
}


}

/// @nodoc
abstract mixin class $StressDetectionResultCopyWith<$Res>  {
  factory $StressDetectionResultCopyWith(StressDetectionResult value, $Res Function(StressDetectionResult) _then) = _$StressDetectionResultCopyWithImpl;
@useResult
$Res call({
 int stressScore, BurnoutRisk burnoutRisk, double confidence, List<String> keySignals, TriggerAnalysis triggerAnalysis, InterventionRecommendation interventionRecommendation, ConversationalContext conversationalContext
});


$TriggerAnalysisCopyWith<$Res> get triggerAnalysis;$InterventionRecommendationCopyWith<$Res> get interventionRecommendation;$ConversationalContextCopyWith<$Res> get conversationalContext;

}
/// @nodoc
class _$StressDetectionResultCopyWithImpl<$Res>
    implements $StressDetectionResultCopyWith<$Res> {
  _$StressDetectionResultCopyWithImpl(this._self, this._then);

  final StressDetectionResult _self;
  final $Res Function(StressDetectionResult) _then;

/// Create a copy of StressDetectionResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stressScore = null,Object? burnoutRisk = null,Object? confidence = null,Object? keySignals = null,Object? triggerAnalysis = null,Object? interventionRecommendation = null,Object? conversationalContext = null,}) {
  return _then(_self.copyWith(
stressScore: null == stressScore ? _self.stressScore : stressScore // ignore: cast_nullable_to_non_nullable
as int,burnoutRisk: null == burnoutRisk ? _self.burnoutRisk : burnoutRisk // ignore: cast_nullable_to_non_nullable
as BurnoutRisk,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,keySignals: null == keySignals ? _self.keySignals : keySignals // ignore: cast_nullable_to_non_nullable
as List<String>,triggerAnalysis: null == triggerAnalysis ? _self.triggerAnalysis : triggerAnalysis // ignore: cast_nullable_to_non_nullable
as TriggerAnalysis,interventionRecommendation: null == interventionRecommendation ? _self.interventionRecommendation : interventionRecommendation // ignore: cast_nullable_to_non_nullable
as InterventionRecommendation,conversationalContext: null == conversationalContext ? _self.conversationalContext : conversationalContext // ignore: cast_nullable_to_non_nullable
as ConversationalContext,
  ));
}
/// Create a copy of StressDetectionResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TriggerAnalysisCopyWith<$Res> get triggerAnalysis {
  
  return $TriggerAnalysisCopyWith<$Res>(_self.triggerAnalysis, (value) {
    return _then(_self.copyWith(triggerAnalysis: value));
  });
}/// Create a copy of StressDetectionResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InterventionRecommendationCopyWith<$Res> get interventionRecommendation {
  
  return $InterventionRecommendationCopyWith<$Res>(_self.interventionRecommendation, (value) {
    return _then(_self.copyWith(interventionRecommendation: value));
  });
}/// Create a copy of StressDetectionResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationalContextCopyWith<$Res> get conversationalContext {
  
  return $ConversationalContextCopyWith<$Res>(_self.conversationalContext, (value) {
    return _then(_self.copyWith(conversationalContext: value));
  });
}
}


/// Adds pattern-matching-related methods to [StressDetectionResult].
extension StressDetectionResultPatterns on StressDetectionResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StressDetectionResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StressDetectionResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StressDetectionResult value)  $default,){
final _that = this;
switch (_that) {
case _StressDetectionResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StressDetectionResult value)?  $default,){
final _that = this;
switch (_that) {
case _StressDetectionResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int stressScore,  BurnoutRisk burnoutRisk,  double confidence,  List<String> keySignals,  TriggerAnalysis triggerAnalysis,  InterventionRecommendation interventionRecommendation,  ConversationalContext conversationalContext)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StressDetectionResult() when $default != null:
return $default(_that.stressScore,_that.burnoutRisk,_that.confidence,_that.keySignals,_that.triggerAnalysis,_that.interventionRecommendation,_that.conversationalContext);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int stressScore,  BurnoutRisk burnoutRisk,  double confidence,  List<String> keySignals,  TriggerAnalysis triggerAnalysis,  InterventionRecommendation interventionRecommendation,  ConversationalContext conversationalContext)  $default,) {final _that = this;
switch (_that) {
case _StressDetectionResult():
return $default(_that.stressScore,_that.burnoutRisk,_that.confidence,_that.keySignals,_that.triggerAnalysis,_that.interventionRecommendation,_that.conversationalContext);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int stressScore,  BurnoutRisk burnoutRisk,  double confidence,  List<String> keySignals,  TriggerAnalysis triggerAnalysis,  InterventionRecommendation interventionRecommendation,  ConversationalContext conversationalContext)?  $default,) {final _that = this;
switch (_that) {
case _StressDetectionResult() when $default != null:
return $default(_that.stressScore,_that.burnoutRisk,_that.confidence,_that.keySignals,_that.triggerAnalysis,_that.interventionRecommendation,_that.conversationalContext);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StressDetectionResult implements StressDetectionResult {
  const _StressDetectionResult({required this.stressScore, required this.burnoutRisk, required this.confidence, final  List<String> keySignals = const [], required this.triggerAnalysis, required this.interventionRecommendation, required this.conversationalContext}): _keySignals = keySignals;
  factory _StressDetectionResult.fromJson(Map<String, dynamic> json) => _$StressDetectionResultFromJson(json);

@override final  int stressScore;
@override final  BurnoutRisk burnoutRisk;
@override final  double confidence;
 final  List<String> _keySignals;
@override@JsonKey() List<String> get keySignals {
  if (_keySignals is EqualUnmodifiableListView) return _keySignals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_keySignals);
}

@override final  TriggerAnalysis triggerAnalysis;
@override final  InterventionRecommendation interventionRecommendation;
@override final  ConversationalContext conversationalContext;

/// Create a copy of StressDetectionResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StressDetectionResultCopyWith<_StressDetectionResult> get copyWith => __$StressDetectionResultCopyWithImpl<_StressDetectionResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StressDetectionResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StressDetectionResult&&(identical(other.stressScore, stressScore) || other.stressScore == stressScore)&&(identical(other.burnoutRisk, burnoutRisk) || other.burnoutRisk == burnoutRisk)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&const DeepCollectionEquality().equals(other._keySignals, _keySignals)&&(identical(other.triggerAnalysis, triggerAnalysis) || other.triggerAnalysis == triggerAnalysis)&&(identical(other.interventionRecommendation, interventionRecommendation) || other.interventionRecommendation == interventionRecommendation)&&(identical(other.conversationalContext, conversationalContext) || other.conversationalContext == conversationalContext));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stressScore,burnoutRisk,confidence,const DeepCollectionEquality().hash(_keySignals),triggerAnalysis,interventionRecommendation,conversationalContext);

@override
String toString() {
  return 'StressDetectionResult(stressScore: $stressScore, burnoutRisk: $burnoutRisk, confidence: $confidence, keySignals: $keySignals, triggerAnalysis: $triggerAnalysis, interventionRecommendation: $interventionRecommendation, conversationalContext: $conversationalContext)';
}


}

/// @nodoc
abstract mixin class _$StressDetectionResultCopyWith<$Res> implements $StressDetectionResultCopyWith<$Res> {
  factory _$StressDetectionResultCopyWith(_StressDetectionResult value, $Res Function(_StressDetectionResult) _then) = __$StressDetectionResultCopyWithImpl;
@override @useResult
$Res call({
 int stressScore, BurnoutRisk burnoutRisk, double confidence, List<String> keySignals, TriggerAnalysis triggerAnalysis, InterventionRecommendation interventionRecommendation, ConversationalContext conversationalContext
});


@override $TriggerAnalysisCopyWith<$Res> get triggerAnalysis;@override $InterventionRecommendationCopyWith<$Res> get interventionRecommendation;@override $ConversationalContextCopyWith<$Res> get conversationalContext;

}
/// @nodoc
class __$StressDetectionResultCopyWithImpl<$Res>
    implements _$StressDetectionResultCopyWith<$Res> {
  __$StressDetectionResultCopyWithImpl(this._self, this._then);

  final _StressDetectionResult _self;
  final $Res Function(_StressDetectionResult) _then;

/// Create a copy of StressDetectionResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stressScore = null,Object? burnoutRisk = null,Object? confidence = null,Object? keySignals = null,Object? triggerAnalysis = null,Object? interventionRecommendation = null,Object? conversationalContext = null,}) {
  return _then(_StressDetectionResult(
stressScore: null == stressScore ? _self.stressScore : stressScore // ignore: cast_nullable_to_non_nullable
as int,burnoutRisk: null == burnoutRisk ? _self.burnoutRisk : burnoutRisk // ignore: cast_nullable_to_non_nullable
as BurnoutRisk,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,keySignals: null == keySignals ? _self._keySignals : keySignals // ignore: cast_nullable_to_non_nullable
as List<String>,triggerAnalysis: null == triggerAnalysis ? _self.triggerAnalysis : triggerAnalysis // ignore: cast_nullable_to_non_nullable
as TriggerAnalysis,interventionRecommendation: null == interventionRecommendation ? _self.interventionRecommendation : interventionRecommendation // ignore: cast_nullable_to_non_nullable
as InterventionRecommendation,conversationalContext: null == conversationalContext ? _self.conversationalContext : conversationalContext // ignore: cast_nullable_to_non_nullable
as ConversationalContext,
  ));
}

/// Create a copy of StressDetectionResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TriggerAnalysisCopyWith<$Res> get triggerAnalysis {
  
  return $TriggerAnalysisCopyWith<$Res>(_self.triggerAnalysis, (value) {
    return _then(_self.copyWith(triggerAnalysis: value));
  });
}/// Create a copy of StressDetectionResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InterventionRecommendationCopyWith<$Res> get interventionRecommendation {
  
  return $InterventionRecommendationCopyWith<$Res>(_self.interventionRecommendation, (value) {
    return _then(_self.copyWith(interventionRecommendation: value));
  });
}/// Create a copy of StressDetectionResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationalContextCopyWith<$Res> get conversationalContext {
  
  return $ConversationalContextCopyWith<$Res>(_self.conversationalContext, (value) {
    return _then(_self.copyWith(conversationalContext: value));
  });
}
}


/// @nodoc
mixin _$StressScoreResult {

 double get totalScore; double get calendarScore; double get healthScore; double get contextScore; List<String> get contributingFactors;
/// Create a copy of StressScoreResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StressScoreResultCopyWith<StressScoreResult> get copyWith => _$StressScoreResultCopyWithImpl<StressScoreResult>(this as StressScoreResult, _$identity);

  /// Serializes this StressScoreResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StressScoreResult&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.calendarScore, calendarScore) || other.calendarScore == calendarScore)&&(identical(other.healthScore, healthScore) || other.healthScore == healthScore)&&(identical(other.contextScore, contextScore) || other.contextScore == contextScore)&&const DeepCollectionEquality().equals(other.contributingFactors, contributingFactors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalScore,calendarScore,healthScore,contextScore,const DeepCollectionEquality().hash(contributingFactors));

@override
String toString() {
  return 'StressScoreResult(totalScore: $totalScore, calendarScore: $calendarScore, healthScore: $healthScore, contextScore: $contextScore, contributingFactors: $contributingFactors)';
}


}

/// @nodoc
abstract mixin class $StressScoreResultCopyWith<$Res>  {
  factory $StressScoreResultCopyWith(StressScoreResult value, $Res Function(StressScoreResult) _then) = _$StressScoreResultCopyWithImpl;
@useResult
$Res call({
 double totalScore, double calendarScore, double healthScore, double contextScore, List<String> contributingFactors
});




}
/// @nodoc
class _$StressScoreResultCopyWithImpl<$Res>
    implements $StressScoreResultCopyWith<$Res> {
  _$StressScoreResultCopyWithImpl(this._self, this._then);

  final StressScoreResult _self;
  final $Res Function(StressScoreResult) _then;

/// Create a copy of StressScoreResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalScore = null,Object? calendarScore = null,Object? healthScore = null,Object? contextScore = null,Object? contributingFactors = null,}) {
  return _then(_self.copyWith(
totalScore: null == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as double,calendarScore: null == calendarScore ? _self.calendarScore : calendarScore // ignore: cast_nullable_to_non_nullable
as double,healthScore: null == healthScore ? _self.healthScore : healthScore // ignore: cast_nullable_to_non_nullable
as double,contextScore: null == contextScore ? _self.contextScore : contextScore // ignore: cast_nullable_to_non_nullable
as double,contributingFactors: null == contributingFactors ? _self.contributingFactors : contributingFactors // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [StressScoreResult].
extension StressScoreResultPatterns on StressScoreResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StressScoreResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StressScoreResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StressScoreResult value)  $default,){
final _that = this;
switch (_that) {
case _StressScoreResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StressScoreResult value)?  $default,){
final _that = this;
switch (_that) {
case _StressScoreResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double totalScore,  double calendarScore,  double healthScore,  double contextScore,  List<String> contributingFactors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StressScoreResult() when $default != null:
return $default(_that.totalScore,_that.calendarScore,_that.healthScore,_that.contextScore,_that.contributingFactors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double totalScore,  double calendarScore,  double healthScore,  double contextScore,  List<String> contributingFactors)  $default,) {final _that = this;
switch (_that) {
case _StressScoreResult():
return $default(_that.totalScore,_that.calendarScore,_that.healthScore,_that.contextScore,_that.contributingFactors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double totalScore,  double calendarScore,  double healthScore,  double contextScore,  List<String> contributingFactors)?  $default,) {final _that = this;
switch (_that) {
case _StressScoreResult() when $default != null:
return $default(_that.totalScore,_that.calendarScore,_that.healthScore,_that.contextScore,_that.contributingFactors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StressScoreResult implements StressScoreResult {
  const _StressScoreResult({required this.totalScore, required this.calendarScore, required this.healthScore, required this.contextScore, final  List<String> contributingFactors = const []}): _contributingFactors = contributingFactors;
  factory _StressScoreResult.fromJson(Map<String, dynamic> json) => _$StressScoreResultFromJson(json);

@override final  double totalScore;
@override final  double calendarScore;
@override final  double healthScore;
@override final  double contextScore;
 final  List<String> _contributingFactors;
@override@JsonKey() List<String> get contributingFactors {
  if (_contributingFactors is EqualUnmodifiableListView) return _contributingFactors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contributingFactors);
}


/// Create a copy of StressScoreResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StressScoreResultCopyWith<_StressScoreResult> get copyWith => __$StressScoreResultCopyWithImpl<_StressScoreResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StressScoreResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StressScoreResult&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.calendarScore, calendarScore) || other.calendarScore == calendarScore)&&(identical(other.healthScore, healthScore) || other.healthScore == healthScore)&&(identical(other.contextScore, contextScore) || other.contextScore == contextScore)&&const DeepCollectionEquality().equals(other._contributingFactors, _contributingFactors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalScore,calendarScore,healthScore,contextScore,const DeepCollectionEquality().hash(_contributingFactors));

@override
String toString() {
  return 'StressScoreResult(totalScore: $totalScore, calendarScore: $calendarScore, healthScore: $healthScore, contextScore: $contextScore, contributingFactors: $contributingFactors)';
}


}

/// @nodoc
abstract mixin class _$StressScoreResultCopyWith<$Res> implements $StressScoreResultCopyWith<$Res> {
  factory _$StressScoreResultCopyWith(_StressScoreResult value, $Res Function(_StressScoreResult) _then) = __$StressScoreResultCopyWithImpl;
@override @useResult
$Res call({
 double totalScore, double calendarScore, double healthScore, double contextScore, List<String> contributingFactors
});




}
/// @nodoc
class __$StressScoreResultCopyWithImpl<$Res>
    implements _$StressScoreResultCopyWith<$Res> {
  __$StressScoreResultCopyWithImpl(this._self, this._then);

  final _StressScoreResult _self;
  final $Res Function(_StressScoreResult) _then;

/// Create a copy of StressScoreResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalScore = null,Object? calendarScore = null,Object? healthScore = null,Object? contextScore = null,Object? contributingFactors = null,}) {
  return _then(_StressScoreResult(
totalScore: null == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as double,calendarScore: null == calendarScore ? _self.calendarScore : calendarScore // ignore: cast_nullable_to_non_nullable
as double,healthScore: null == healthScore ? _self.healthScore : healthScore // ignore: cast_nullable_to_non_nullable
as double,contextScore: null == contextScore ? _self.contextScore : contextScore // ignore: cast_nullable_to_non_nullable
as double,contributingFactors: null == contributingFactors ? _self._contributingFactors : contributingFactors // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$BurnoutPrediction {

 BurnoutRisk get risk; double get confidence; int get daysUntilThreshold; String get explanation;
/// Create a copy of BurnoutPrediction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BurnoutPredictionCopyWith<BurnoutPrediction> get copyWith => _$BurnoutPredictionCopyWithImpl<BurnoutPrediction>(this as BurnoutPrediction, _$identity);

  /// Serializes this BurnoutPrediction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BurnoutPrediction&&(identical(other.risk, risk) || other.risk == risk)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.daysUntilThreshold, daysUntilThreshold) || other.daysUntilThreshold == daysUntilThreshold)&&(identical(other.explanation, explanation) || other.explanation == explanation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,risk,confidence,daysUntilThreshold,explanation);

@override
String toString() {
  return 'BurnoutPrediction(risk: $risk, confidence: $confidence, daysUntilThreshold: $daysUntilThreshold, explanation: $explanation)';
}


}

/// @nodoc
abstract mixin class $BurnoutPredictionCopyWith<$Res>  {
  factory $BurnoutPredictionCopyWith(BurnoutPrediction value, $Res Function(BurnoutPrediction) _then) = _$BurnoutPredictionCopyWithImpl;
@useResult
$Res call({
 BurnoutRisk risk, double confidence, int daysUntilThreshold, String explanation
});




}
/// @nodoc
class _$BurnoutPredictionCopyWithImpl<$Res>
    implements $BurnoutPredictionCopyWith<$Res> {
  _$BurnoutPredictionCopyWithImpl(this._self, this._then);

  final BurnoutPrediction _self;
  final $Res Function(BurnoutPrediction) _then;

/// Create a copy of BurnoutPrediction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? risk = null,Object? confidence = null,Object? daysUntilThreshold = null,Object? explanation = null,}) {
  return _then(_self.copyWith(
risk: null == risk ? _self.risk : risk // ignore: cast_nullable_to_non_nullable
as BurnoutRisk,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,daysUntilThreshold: null == daysUntilThreshold ? _self.daysUntilThreshold : daysUntilThreshold // ignore: cast_nullable_to_non_nullable
as int,explanation: null == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BurnoutPrediction].
extension BurnoutPredictionPatterns on BurnoutPrediction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BurnoutPrediction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BurnoutPrediction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BurnoutPrediction value)  $default,){
final _that = this;
switch (_that) {
case _BurnoutPrediction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BurnoutPrediction value)?  $default,){
final _that = this;
switch (_that) {
case _BurnoutPrediction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BurnoutRisk risk,  double confidence,  int daysUntilThreshold,  String explanation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BurnoutPrediction() when $default != null:
return $default(_that.risk,_that.confidence,_that.daysUntilThreshold,_that.explanation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BurnoutRisk risk,  double confidence,  int daysUntilThreshold,  String explanation)  $default,) {final _that = this;
switch (_that) {
case _BurnoutPrediction():
return $default(_that.risk,_that.confidence,_that.daysUntilThreshold,_that.explanation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BurnoutRisk risk,  double confidence,  int daysUntilThreshold,  String explanation)?  $default,) {final _that = this;
switch (_that) {
case _BurnoutPrediction() when $default != null:
return $default(_that.risk,_that.confidence,_that.daysUntilThreshold,_that.explanation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BurnoutPrediction implements BurnoutPrediction {
  const _BurnoutPrediction({required this.risk, required this.confidence, required this.daysUntilThreshold, required this.explanation});
  factory _BurnoutPrediction.fromJson(Map<String, dynamic> json) => _$BurnoutPredictionFromJson(json);

@override final  BurnoutRisk risk;
@override final  double confidence;
@override final  int daysUntilThreshold;
@override final  String explanation;

/// Create a copy of BurnoutPrediction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BurnoutPredictionCopyWith<_BurnoutPrediction> get copyWith => __$BurnoutPredictionCopyWithImpl<_BurnoutPrediction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BurnoutPredictionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BurnoutPrediction&&(identical(other.risk, risk) || other.risk == risk)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.daysUntilThreshold, daysUntilThreshold) || other.daysUntilThreshold == daysUntilThreshold)&&(identical(other.explanation, explanation) || other.explanation == explanation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,risk,confidence,daysUntilThreshold,explanation);

@override
String toString() {
  return 'BurnoutPrediction(risk: $risk, confidence: $confidence, daysUntilThreshold: $daysUntilThreshold, explanation: $explanation)';
}


}

/// @nodoc
abstract mixin class _$BurnoutPredictionCopyWith<$Res> implements $BurnoutPredictionCopyWith<$Res> {
  factory _$BurnoutPredictionCopyWith(_BurnoutPrediction value, $Res Function(_BurnoutPrediction) _then) = __$BurnoutPredictionCopyWithImpl;
@override @useResult
$Res call({
 BurnoutRisk risk, double confidence, int daysUntilThreshold, String explanation
});




}
/// @nodoc
class __$BurnoutPredictionCopyWithImpl<$Res>
    implements _$BurnoutPredictionCopyWith<$Res> {
  __$BurnoutPredictionCopyWithImpl(this._self, this._then);

  final _BurnoutPrediction _self;
  final $Res Function(_BurnoutPrediction) _then;

/// Create a copy of BurnoutPrediction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? risk = null,Object? confidence = null,Object? daysUntilThreshold = null,Object? explanation = null,}) {
  return _then(_BurnoutPrediction(
risk: null == risk ? _self.risk : risk // ignore: cast_nullable_to_non_nullable
as BurnoutRisk,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,daysUntilThreshold: null == daysUntilThreshold ? _self.daysUntilThreshold : daysUntilThreshold // ignore: cast_nullable_to_non_nullable
as int,explanation: null == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
