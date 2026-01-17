// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wellness_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WellnessOption {

 String get id; String get name; WellnessType get type; String get time; String get distance; String get price; String get whyRecommended; String get address; double get rating; String? get imageUrl; String? get bookingUrl;
/// Create a copy of WellnessOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WellnessOptionCopyWith<WellnessOption> get copyWith => _$WellnessOptionCopyWithImpl<WellnessOption>(this as WellnessOption, _$identity);

  /// Serializes this WellnessOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WellnessOption&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.time, time) || other.time == time)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.price, price) || other.price == price)&&(identical(other.whyRecommended, whyRecommended) || other.whyRecommended == whyRecommended)&&(identical(other.address, address) || other.address == address)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.bookingUrl, bookingUrl) || other.bookingUrl == bookingUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,time,distance,price,whyRecommended,address,rating,imageUrl,bookingUrl);

@override
String toString() {
  return 'WellnessOption(id: $id, name: $name, type: $type, time: $time, distance: $distance, price: $price, whyRecommended: $whyRecommended, address: $address, rating: $rating, imageUrl: $imageUrl, bookingUrl: $bookingUrl)';
}


}

/// @nodoc
abstract mixin class $WellnessOptionCopyWith<$Res>  {
  factory $WellnessOptionCopyWith(WellnessOption value, $Res Function(WellnessOption) _then) = _$WellnessOptionCopyWithImpl;
@useResult
$Res call({
 String id, String name, WellnessType type, String time, String distance, String price, String whyRecommended, String address, double rating, String? imageUrl, String? bookingUrl
});




}
/// @nodoc
class _$WellnessOptionCopyWithImpl<$Res>
    implements $WellnessOptionCopyWith<$Res> {
  _$WellnessOptionCopyWithImpl(this._self, this._then);

  final WellnessOption _self;
  final $Res Function(WellnessOption) _then;

/// Create a copy of WellnessOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? time = null,Object? distance = null,Object? price = null,Object? whyRecommended = null,Object? address = null,Object? rating = null,Object? imageUrl = freezed,Object? bookingUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WellnessType,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,whyRecommended: null == whyRecommended ? _self.whyRecommended : whyRecommended // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,bookingUrl: freezed == bookingUrl ? _self.bookingUrl : bookingUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WellnessOption].
extension WellnessOptionPatterns on WellnessOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WellnessOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WellnessOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WellnessOption value)  $default,){
final _that = this;
switch (_that) {
case _WellnessOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WellnessOption value)?  $default,){
final _that = this;
switch (_that) {
case _WellnessOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  WellnessType type,  String time,  String distance,  String price,  String whyRecommended,  String address,  double rating,  String? imageUrl,  String? bookingUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WellnessOption() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.time,_that.distance,_that.price,_that.whyRecommended,_that.address,_that.rating,_that.imageUrl,_that.bookingUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  WellnessType type,  String time,  String distance,  String price,  String whyRecommended,  String address,  double rating,  String? imageUrl,  String? bookingUrl)  $default,) {final _that = this;
switch (_that) {
case _WellnessOption():
return $default(_that.id,_that.name,_that.type,_that.time,_that.distance,_that.price,_that.whyRecommended,_that.address,_that.rating,_that.imageUrl,_that.bookingUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  WellnessType type,  String time,  String distance,  String price,  String whyRecommended,  String address,  double rating,  String? imageUrl,  String? bookingUrl)?  $default,) {final _that = this;
switch (_that) {
case _WellnessOption() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.time,_that.distance,_that.price,_that.whyRecommended,_that.address,_that.rating,_that.imageUrl,_that.bookingUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WellnessOption implements WellnessOption {
  const _WellnessOption({required this.id, required this.name, required this.type, required this.time, required this.distance, required this.price, required this.whyRecommended, required this.address, required this.rating, this.imageUrl, this.bookingUrl});
  factory _WellnessOption.fromJson(Map<String, dynamic> json) => _$WellnessOptionFromJson(json);

@override final  String id;
@override final  String name;
@override final  WellnessType type;
@override final  String time;
@override final  String distance;
@override final  String price;
@override final  String whyRecommended;
@override final  String address;
@override final  double rating;
@override final  String? imageUrl;
@override final  String? bookingUrl;

/// Create a copy of WellnessOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WellnessOptionCopyWith<_WellnessOption> get copyWith => __$WellnessOptionCopyWithImpl<_WellnessOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WellnessOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WellnessOption&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.time, time) || other.time == time)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.price, price) || other.price == price)&&(identical(other.whyRecommended, whyRecommended) || other.whyRecommended == whyRecommended)&&(identical(other.address, address) || other.address == address)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.bookingUrl, bookingUrl) || other.bookingUrl == bookingUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,time,distance,price,whyRecommended,address,rating,imageUrl,bookingUrl);

@override
String toString() {
  return 'WellnessOption(id: $id, name: $name, type: $type, time: $time, distance: $distance, price: $price, whyRecommended: $whyRecommended, address: $address, rating: $rating, imageUrl: $imageUrl, bookingUrl: $bookingUrl)';
}


}

/// @nodoc
abstract mixin class _$WellnessOptionCopyWith<$Res> implements $WellnessOptionCopyWith<$Res> {
  factory _$WellnessOptionCopyWith(_WellnessOption value, $Res Function(_WellnessOption) _then) = __$WellnessOptionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, WellnessType type, String time, String distance, String price, String whyRecommended, String address, double rating, String? imageUrl, String? bookingUrl
});




}
/// @nodoc
class __$WellnessOptionCopyWithImpl<$Res>
    implements _$WellnessOptionCopyWith<$Res> {
  __$WellnessOptionCopyWithImpl(this._self, this._then);

  final _WellnessOption _self;
  final $Res Function(_WellnessOption) _then;

/// Create a copy of WellnessOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? time = null,Object? distance = null,Object? price = null,Object? whyRecommended = null,Object? address = null,Object? rating = null,Object? imageUrl = freezed,Object? bookingUrl = freezed,}) {
  return _then(_WellnessOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WellnessType,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,whyRecommended: null == whyRecommended ? _self.whyRecommended : whyRecommended // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,bookingUrl: freezed == bookingUrl ? _self.bookingUrl : bookingUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WellnessWindow {

 DateTime get date; DateTime get startTime; DateTime get endTime; String get location; Duration get duration; bool get isBlocked;
/// Create a copy of WellnessWindow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WellnessWindowCopyWith<WellnessWindow> get copyWith => _$WellnessWindowCopyWithImpl<WellnessWindow>(this as WellnessWindow, _$identity);

  /// Serializes this WellnessWindow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WellnessWindow&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.location, location) || other.location == location)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.isBlocked, isBlocked) || other.isBlocked == isBlocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,startTime,endTime,location,duration,isBlocked);

@override
String toString() {
  return 'WellnessWindow(date: $date, startTime: $startTime, endTime: $endTime, location: $location, duration: $duration, isBlocked: $isBlocked)';
}


}

/// @nodoc
abstract mixin class $WellnessWindowCopyWith<$Res>  {
  factory $WellnessWindowCopyWith(WellnessWindow value, $Res Function(WellnessWindow) _then) = _$WellnessWindowCopyWithImpl;
@useResult
$Res call({
 DateTime date, DateTime startTime, DateTime endTime, String location, Duration duration, bool isBlocked
});




}
/// @nodoc
class _$WellnessWindowCopyWithImpl<$Res>
    implements $WellnessWindowCopyWith<$Res> {
  _$WellnessWindowCopyWithImpl(this._self, this._then);

  final WellnessWindow _self;
  final $Res Function(WellnessWindow) _then;

/// Create a copy of WellnessWindow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? startTime = null,Object? endTime = null,Object? location = null,Object? duration = null,Object? isBlocked = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,isBlocked: null == isBlocked ? _self.isBlocked : isBlocked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WellnessWindow].
extension WellnessWindowPatterns on WellnessWindow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WellnessWindow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WellnessWindow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WellnessWindow value)  $default,){
final _that = this;
switch (_that) {
case _WellnessWindow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WellnessWindow value)?  $default,){
final _that = this;
switch (_that) {
case _WellnessWindow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  DateTime startTime,  DateTime endTime,  String location,  Duration duration,  bool isBlocked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WellnessWindow() when $default != null:
return $default(_that.date,_that.startTime,_that.endTime,_that.location,_that.duration,_that.isBlocked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  DateTime startTime,  DateTime endTime,  String location,  Duration duration,  bool isBlocked)  $default,) {final _that = this;
switch (_that) {
case _WellnessWindow():
return $default(_that.date,_that.startTime,_that.endTime,_that.location,_that.duration,_that.isBlocked);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  DateTime startTime,  DateTime endTime,  String location,  Duration duration,  bool isBlocked)?  $default,) {final _that = this;
switch (_that) {
case _WellnessWindow() when $default != null:
return $default(_that.date,_that.startTime,_that.endTime,_that.location,_that.duration,_that.isBlocked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WellnessWindow implements WellnessWindow {
  const _WellnessWindow({required this.date, required this.startTime, required this.endTime, required this.location, required this.duration, this.isBlocked = false});
  factory _WellnessWindow.fromJson(Map<String, dynamic> json) => _$WellnessWindowFromJson(json);

@override final  DateTime date;
@override final  DateTime startTime;
@override final  DateTime endTime;
@override final  String location;
@override final  Duration duration;
@override@JsonKey() final  bool isBlocked;

/// Create a copy of WellnessWindow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WellnessWindowCopyWith<_WellnessWindow> get copyWith => __$WellnessWindowCopyWithImpl<_WellnessWindow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WellnessWindowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WellnessWindow&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.location, location) || other.location == location)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.isBlocked, isBlocked) || other.isBlocked == isBlocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,startTime,endTime,location,duration,isBlocked);

@override
String toString() {
  return 'WellnessWindow(date: $date, startTime: $startTime, endTime: $endTime, location: $location, duration: $duration, isBlocked: $isBlocked)';
}


}

/// @nodoc
abstract mixin class _$WellnessWindowCopyWith<$Res> implements $WellnessWindowCopyWith<$Res> {
  factory _$WellnessWindowCopyWith(_WellnessWindow value, $Res Function(_WellnessWindow) _then) = __$WellnessWindowCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, DateTime startTime, DateTime endTime, String location, Duration duration, bool isBlocked
});




}
/// @nodoc
class __$WellnessWindowCopyWithImpl<$Res>
    implements _$WellnessWindowCopyWith<$Res> {
  __$WellnessWindowCopyWithImpl(this._self, this._then);

  final _WellnessWindow _self;
  final $Res Function(_WellnessWindow) _then;

/// Create a copy of WellnessWindow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? startTime = null,Object? endTime = null,Object? location = null,Object? duration = null,Object? isBlocked = null,}) {
  return _then(_WellnessWindow(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,isBlocked: null == isBlocked ? _self.isBlocked : isBlocked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$BookingRequest {

 String get optionId; String get userId; DateTime get selectedTime; String? get notes;
/// Create a copy of BookingRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingRequestCopyWith<BookingRequest> get copyWith => _$BookingRequestCopyWithImpl<BookingRequest>(this as BookingRequest, _$identity);

  /// Serializes this BookingRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingRequest&&(identical(other.optionId, optionId) || other.optionId == optionId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.selectedTime, selectedTime) || other.selectedTime == selectedTime)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,optionId,userId,selectedTime,notes);

@override
String toString() {
  return 'BookingRequest(optionId: $optionId, userId: $userId, selectedTime: $selectedTime, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $BookingRequestCopyWith<$Res>  {
  factory $BookingRequestCopyWith(BookingRequest value, $Res Function(BookingRequest) _then) = _$BookingRequestCopyWithImpl;
@useResult
$Res call({
 String optionId, String userId, DateTime selectedTime, String? notes
});




}
/// @nodoc
class _$BookingRequestCopyWithImpl<$Res>
    implements $BookingRequestCopyWith<$Res> {
  _$BookingRequestCopyWithImpl(this._self, this._then);

  final BookingRequest _self;
  final $Res Function(BookingRequest) _then;

/// Create a copy of BookingRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? optionId = null,Object? userId = null,Object? selectedTime = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
optionId: null == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,selectedTime: null == selectedTime ? _self.selectedTime : selectedTime // ignore: cast_nullable_to_non_nullable
as DateTime,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingRequest].
extension BookingRequestPatterns on BookingRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingRequest value)  $default,){
final _that = this;
switch (_that) {
case _BookingRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingRequest value)?  $default,){
final _that = this;
switch (_that) {
case _BookingRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String optionId,  String userId,  DateTime selectedTime,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingRequest() when $default != null:
return $default(_that.optionId,_that.userId,_that.selectedTime,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String optionId,  String userId,  DateTime selectedTime,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _BookingRequest():
return $default(_that.optionId,_that.userId,_that.selectedTime,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String optionId,  String userId,  DateTime selectedTime,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _BookingRequest() when $default != null:
return $default(_that.optionId,_that.userId,_that.selectedTime,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingRequest implements BookingRequest {
  const _BookingRequest({required this.optionId, required this.userId, required this.selectedTime, this.notes});
  factory _BookingRequest.fromJson(Map<String, dynamic> json) => _$BookingRequestFromJson(json);

@override final  String optionId;
@override final  String userId;
@override final  DateTime selectedTime;
@override final  String? notes;

/// Create a copy of BookingRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingRequestCopyWith<_BookingRequest> get copyWith => __$BookingRequestCopyWithImpl<_BookingRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingRequest&&(identical(other.optionId, optionId) || other.optionId == optionId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.selectedTime, selectedTime) || other.selectedTime == selectedTime)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,optionId,userId,selectedTime,notes);

@override
String toString() {
  return 'BookingRequest(optionId: $optionId, userId: $userId, selectedTime: $selectedTime, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$BookingRequestCopyWith<$Res> implements $BookingRequestCopyWith<$Res> {
  factory _$BookingRequestCopyWith(_BookingRequest value, $Res Function(_BookingRequest) _then) = __$BookingRequestCopyWithImpl;
@override @useResult
$Res call({
 String optionId, String userId, DateTime selectedTime, String? notes
});




}
/// @nodoc
class __$BookingRequestCopyWithImpl<$Res>
    implements _$BookingRequestCopyWith<$Res> {
  __$BookingRequestCopyWithImpl(this._self, this._then);

  final _BookingRequest _self;
  final $Res Function(_BookingRequest) _then;

/// Create a copy of BookingRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? optionId = null,Object? userId = null,Object? selectedTime = null,Object? notes = freezed,}) {
  return _then(_BookingRequest(
optionId: null == optionId ? _self.optionId : optionId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,selectedTime: null == selectedTime ? _self.selectedTime : selectedTime // ignore: cast_nullable_to_non_nullable
as DateTime,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BookingConfirmation {

 bool get success; String get confirmationCode; String? get calendarEventId; String? get errorMessage; DateTime get timestamp;
/// Create a copy of BookingConfirmation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingConfirmationCopyWith<BookingConfirmation> get copyWith => _$BookingConfirmationCopyWithImpl<BookingConfirmation>(this as BookingConfirmation, _$identity);

  /// Serializes this BookingConfirmation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingConfirmation&&(identical(other.success, success) || other.success == success)&&(identical(other.confirmationCode, confirmationCode) || other.confirmationCode == confirmationCode)&&(identical(other.calendarEventId, calendarEventId) || other.calendarEventId == calendarEventId)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,confirmationCode,calendarEventId,errorMessage,timestamp);

@override
String toString() {
  return 'BookingConfirmation(success: $success, confirmationCode: $confirmationCode, calendarEventId: $calendarEventId, errorMessage: $errorMessage, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $BookingConfirmationCopyWith<$Res>  {
  factory $BookingConfirmationCopyWith(BookingConfirmation value, $Res Function(BookingConfirmation) _then) = _$BookingConfirmationCopyWithImpl;
@useResult
$Res call({
 bool success, String confirmationCode, String? calendarEventId, String? errorMessage, DateTime timestamp
});




}
/// @nodoc
class _$BookingConfirmationCopyWithImpl<$Res>
    implements $BookingConfirmationCopyWith<$Res> {
  _$BookingConfirmationCopyWithImpl(this._self, this._then);

  final BookingConfirmation _self;
  final $Res Function(BookingConfirmation) _then;

/// Create a copy of BookingConfirmation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? confirmationCode = null,Object? calendarEventId = freezed,Object? errorMessage = freezed,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,confirmationCode: null == confirmationCode ? _self.confirmationCode : confirmationCode // ignore: cast_nullable_to_non_nullable
as String,calendarEventId: freezed == calendarEventId ? _self.calendarEventId : calendarEventId // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingConfirmation].
extension BookingConfirmationPatterns on BookingConfirmation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingConfirmation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingConfirmation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingConfirmation value)  $default,){
final _that = this;
switch (_that) {
case _BookingConfirmation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingConfirmation value)?  $default,){
final _that = this;
switch (_that) {
case _BookingConfirmation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String confirmationCode,  String? calendarEventId,  String? errorMessage,  DateTime timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingConfirmation() when $default != null:
return $default(_that.success,_that.confirmationCode,_that.calendarEventId,_that.errorMessage,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String confirmationCode,  String? calendarEventId,  String? errorMessage,  DateTime timestamp)  $default,) {final _that = this;
switch (_that) {
case _BookingConfirmation():
return $default(_that.success,_that.confirmationCode,_that.calendarEventId,_that.errorMessage,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String confirmationCode,  String? calendarEventId,  String? errorMessage,  DateTime timestamp)?  $default,) {final _that = this;
switch (_that) {
case _BookingConfirmation() when $default != null:
return $default(_that.success,_that.confirmationCode,_that.calendarEventId,_that.errorMessage,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingConfirmation implements BookingConfirmation {
  const _BookingConfirmation({required this.success, required this.confirmationCode, this.calendarEventId, this.errorMessage, required this.timestamp});
  factory _BookingConfirmation.fromJson(Map<String, dynamic> json) => _$BookingConfirmationFromJson(json);

@override final  bool success;
@override final  String confirmationCode;
@override final  String? calendarEventId;
@override final  String? errorMessage;
@override final  DateTime timestamp;

/// Create a copy of BookingConfirmation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingConfirmationCopyWith<_BookingConfirmation> get copyWith => __$BookingConfirmationCopyWithImpl<_BookingConfirmation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingConfirmationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingConfirmation&&(identical(other.success, success) || other.success == success)&&(identical(other.confirmationCode, confirmationCode) || other.confirmationCode == confirmationCode)&&(identical(other.calendarEventId, calendarEventId) || other.calendarEventId == calendarEventId)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,confirmationCode,calendarEventId,errorMessage,timestamp);

@override
String toString() {
  return 'BookingConfirmation(success: $success, confirmationCode: $confirmationCode, calendarEventId: $calendarEventId, errorMessage: $errorMessage, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$BookingConfirmationCopyWith<$Res> implements $BookingConfirmationCopyWith<$Res> {
  factory _$BookingConfirmationCopyWith(_BookingConfirmation value, $Res Function(_BookingConfirmation) _then) = __$BookingConfirmationCopyWithImpl;
@override @useResult
$Res call({
 bool success, String confirmationCode, String? calendarEventId, String? errorMessage, DateTime timestamp
});




}
/// @nodoc
class __$BookingConfirmationCopyWithImpl<$Res>
    implements _$BookingConfirmationCopyWith<$Res> {
  __$BookingConfirmationCopyWithImpl(this._self, this._then);

  final _BookingConfirmation _self;
  final $Res Function(_BookingConfirmation) _then;

/// Create a copy of BookingConfirmation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? confirmationCode = null,Object? calendarEventId = freezed,Object? errorMessage = freezed,Object? timestamp = null,}) {
  return _then(_BookingConfirmation(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,confirmationCode: null == confirmationCode ? _self.confirmationCode : confirmationCode // ignore: cast_nullable_to_non_nullable
as String,calendarEventId: freezed == calendarEventId ? _self.calendarEventId : calendarEventId // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
