// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discovery_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Coordinates {

 double get latitude; double get longitude;
/// Create a copy of Coordinates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<Coordinates> get copyWith => _$CoordinatesCopyWithImpl<Coordinates>(this as Coordinates, _$identity);

  /// Serializes this Coordinates to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Coordinates&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'Coordinates(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $CoordinatesCopyWith<$Res>  {
  factory $CoordinatesCopyWith(Coordinates value, $Res Function(Coordinates) _then) = _$CoordinatesCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude
});




}
/// @nodoc
class _$CoordinatesCopyWithImpl<$Res>
    implements $CoordinatesCopyWith<$Res> {
  _$CoordinatesCopyWithImpl(this._self, this._then);

  final Coordinates _self;
  final $Res Function(Coordinates) _then;

/// Create a copy of Coordinates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Coordinates].
extension CoordinatesPatterns on Coordinates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Coordinates value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Coordinates() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Coordinates value)  $default,){
final _that = this;
switch (_that) {
case _Coordinates():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Coordinates value)?  $default,){
final _that = this;
switch (_that) {
case _Coordinates() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Coordinates() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude)  $default,) {final _that = this;
switch (_that) {
case _Coordinates():
return $default(_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude)?  $default,) {final _that = this;
switch (_that) {
case _Coordinates() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Coordinates implements Coordinates {
  const _Coordinates({required this.latitude, required this.longitude});
  factory _Coordinates.fromJson(Map<String, dynamic> json) => _$CoordinatesFromJson(json);

@override final  double latitude;
@override final  double longitude;

/// Create a copy of Coordinates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoordinatesCopyWith<_Coordinates> get copyWith => __$CoordinatesCopyWithImpl<_Coordinates>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoordinatesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Coordinates&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'Coordinates(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$CoordinatesCopyWith<$Res> implements $CoordinatesCopyWith<$Res> {
  factory _$CoordinatesCopyWith(_Coordinates value, $Res Function(_Coordinates) _then) = __$CoordinatesCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude
});




}
/// @nodoc
class __$CoordinatesCopyWithImpl<$Res>
    implements _$CoordinatesCopyWith<$Res> {
  __$CoordinatesCopyWithImpl(this._self, this._then);

  final _Coordinates _self;
  final $Res Function(_Coordinates) _then;

/// Create a copy of Coordinates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,}) {
  return _then(_Coordinates(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$UserLocation {

 String get city; Coordinates get coordinates; String get timezone;
/// Create a copy of UserLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserLocationCopyWith<UserLocation> get copyWith => _$UserLocationCopyWithImpl<UserLocation>(this as UserLocation, _$identity);

  /// Serializes this UserLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserLocation&&(identical(other.city, city) || other.city == city)&&(identical(other.coordinates, coordinates) || other.coordinates == coordinates)&&(identical(other.timezone, timezone) || other.timezone == timezone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,coordinates,timezone);

@override
String toString() {
  return 'UserLocation(city: $city, coordinates: $coordinates, timezone: $timezone)';
}


}

/// @nodoc
abstract mixin class $UserLocationCopyWith<$Res>  {
  factory $UserLocationCopyWith(UserLocation value, $Res Function(UserLocation) _then) = _$UserLocationCopyWithImpl;
@useResult
$Res call({
 String city, Coordinates coordinates, String timezone
});


$CoordinatesCopyWith<$Res> get coordinates;

}
/// @nodoc
class _$UserLocationCopyWithImpl<$Res>
    implements $UserLocationCopyWith<$Res> {
  _$UserLocationCopyWithImpl(this._self, this._then);

  final UserLocation _self;
  final $Res Function(UserLocation) _then;

/// Create a copy of UserLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? city = null,Object? coordinates = null,Object? timezone = null,}) {
  return _then(_self.copyWith(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,coordinates: null == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as Coordinates,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of UserLocation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<$Res> get coordinates {
  
  return $CoordinatesCopyWith<$Res>(_self.coordinates, (value) {
    return _then(_self.copyWith(coordinates: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserLocation].
extension UserLocationPatterns on UserLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserLocation value)  $default,){
final _that = this;
switch (_that) {
case _UserLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserLocation value)?  $default,){
final _that = this;
switch (_that) {
case _UserLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String city,  Coordinates coordinates,  String timezone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserLocation() when $default != null:
return $default(_that.city,_that.coordinates,_that.timezone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String city,  Coordinates coordinates,  String timezone)  $default,) {final _that = this;
switch (_that) {
case _UserLocation():
return $default(_that.city,_that.coordinates,_that.timezone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String city,  Coordinates coordinates,  String timezone)?  $default,) {final _that = this;
switch (_that) {
case _UserLocation() when $default != null:
return $default(_that.city,_that.coordinates,_that.timezone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserLocation implements UserLocation {
  const _UserLocation({required this.city, required this.coordinates, required this.timezone});
  factory _UserLocation.fromJson(Map<String, dynamic> json) => _$UserLocationFromJson(json);

@override final  String city;
@override final  Coordinates coordinates;
@override final  String timezone;

/// Create a copy of UserLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserLocationCopyWith<_UserLocation> get copyWith => __$UserLocationCopyWithImpl<_UserLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserLocation&&(identical(other.city, city) || other.city == city)&&(identical(other.coordinates, coordinates) || other.coordinates == coordinates)&&(identical(other.timezone, timezone) || other.timezone == timezone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,coordinates,timezone);

@override
String toString() {
  return 'UserLocation(city: $city, coordinates: $coordinates, timezone: $timezone)';
}


}

/// @nodoc
abstract mixin class _$UserLocationCopyWith<$Res> implements $UserLocationCopyWith<$Res> {
  factory _$UserLocationCopyWith(_UserLocation value, $Res Function(_UserLocation) _then) = __$UserLocationCopyWithImpl;
@override @useResult
$Res call({
 String city, Coordinates coordinates, String timezone
});


@override $CoordinatesCopyWith<$Res> get coordinates;

}
/// @nodoc
class __$UserLocationCopyWithImpl<$Res>
    implements _$UserLocationCopyWith<$Res> {
  __$UserLocationCopyWithImpl(this._self, this._then);

  final _UserLocation _self;
  final $Res Function(_UserLocation) _then;

/// Create a copy of UserLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? city = null,Object? coordinates = null,Object? timezone = null,}) {
  return _then(_UserLocation(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,coordinates: null == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as Coordinates,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UserLocation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<$Res> get coordinates {
  
  return $CoordinatesCopyWith<$Res>(_self.coordinates, (value) {
    return _then(_self.copyWith(coordinates: value));
  });
}
}


/// @nodoc
mixin _$UserBase {

 UserBaseType get type; String get name; String get address; Coordinates get coordinates;
/// Create a copy of UserBase
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserBaseCopyWith<UserBase> get copyWith => _$UserBaseCopyWithImpl<UserBase>(this as UserBase, _$identity);

  /// Serializes this UserBase to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserBase&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.coordinates, coordinates) || other.coordinates == coordinates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,address,coordinates);

@override
String toString() {
  return 'UserBase(type: $type, name: $name, address: $address, coordinates: $coordinates)';
}


}

/// @nodoc
abstract mixin class $UserBaseCopyWith<$Res>  {
  factory $UserBaseCopyWith(UserBase value, $Res Function(UserBase) _then) = _$UserBaseCopyWithImpl;
@useResult
$Res call({
 UserBaseType type, String name, String address, Coordinates coordinates
});


$CoordinatesCopyWith<$Res> get coordinates;

}
/// @nodoc
class _$UserBaseCopyWithImpl<$Res>
    implements $UserBaseCopyWith<$Res> {
  _$UserBaseCopyWithImpl(this._self, this._then);

  final UserBase _self;
  final $Res Function(UserBase) _then;

/// Create a copy of UserBase
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? name = null,Object? address = null,Object? coordinates = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as UserBaseType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,coordinates: null == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as Coordinates,
  ));
}
/// Create a copy of UserBase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<$Res> get coordinates {
  
  return $CoordinatesCopyWith<$Res>(_self.coordinates, (value) {
    return _then(_self.copyWith(coordinates: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserBase].
extension UserBasePatterns on UserBase {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserBase value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserBase() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserBase value)  $default,){
final _that = this;
switch (_that) {
case _UserBase():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserBase value)?  $default,){
final _that = this;
switch (_that) {
case _UserBase() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserBaseType type,  String name,  String address,  Coordinates coordinates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserBase() when $default != null:
return $default(_that.type,_that.name,_that.address,_that.coordinates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserBaseType type,  String name,  String address,  Coordinates coordinates)  $default,) {final _that = this;
switch (_that) {
case _UserBase():
return $default(_that.type,_that.name,_that.address,_that.coordinates);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserBaseType type,  String name,  String address,  Coordinates coordinates)?  $default,) {final _that = this;
switch (_that) {
case _UserBase() when $default != null:
return $default(_that.type,_that.name,_that.address,_that.coordinates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserBase implements UserBase {
  const _UserBase({required this.type, required this.name, required this.address, required this.coordinates});
  factory _UserBase.fromJson(Map<String, dynamic> json) => _$UserBaseFromJson(json);

@override final  UserBaseType type;
@override final  String name;
@override final  String address;
@override final  Coordinates coordinates;

/// Create a copy of UserBase
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserBaseCopyWith<_UserBase> get copyWith => __$UserBaseCopyWithImpl<_UserBase>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserBaseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserBase&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.coordinates, coordinates) || other.coordinates == coordinates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,address,coordinates);

@override
String toString() {
  return 'UserBase(type: $type, name: $name, address: $address, coordinates: $coordinates)';
}


}

/// @nodoc
abstract mixin class _$UserBaseCopyWith<$Res> implements $UserBaseCopyWith<$Res> {
  factory _$UserBaseCopyWith(_UserBase value, $Res Function(_UserBase) _then) = __$UserBaseCopyWithImpl;
@override @useResult
$Res call({
 UserBaseType type, String name, String address, Coordinates coordinates
});


@override $CoordinatesCopyWith<$Res> get coordinates;

}
/// @nodoc
class __$UserBaseCopyWithImpl<$Res>
    implements _$UserBaseCopyWith<$Res> {
  __$UserBaseCopyWithImpl(this._self, this._then);

  final _UserBase _self;
  final $Res Function(_UserBase) _then;

/// Create a copy of UserBase
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? name = null,Object? address = null,Object? coordinates = null,}) {
  return _then(_UserBase(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as UserBaseType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,coordinates: null == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as Coordinates,
  ));
}

/// Create a copy of UserBase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<$Res> get coordinates {
  
  return $CoordinatesCopyWith<$Res>(_self.coordinates, (value) {
    return _then(_self.copyWith(coordinates: value));
  });
}
}


/// @nodoc
mixin _$UpcomingLocation {

 String get city; DateTime get arrivalDate; DateTime get departureDate; String? get userBaseName; Coordinates? get coordinates;
/// Create a copy of UpcomingLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpcomingLocationCopyWith<UpcomingLocation> get copyWith => _$UpcomingLocationCopyWithImpl<UpcomingLocation>(this as UpcomingLocation, _$identity);

  /// Serializes this UpcomingLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpcomingLocation&&(identical(other.city, city) || other.city == city)&&(identical(other.arrivalDate, arrivalDate) || other.arrivalDate == arrivalDate)&&(identical(other.departureDate, departureDate) || other.departureDate == departureDate)&&(identical(other.userBaseName, userBaseName) || other.userBaseName == userBaseName)&&(identical(other.coordinates, coordinates) || other.coordinates == coordinates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,arrivalDate,departureDate,userBaseName,coordinates);

@override
String toString() {
  return 'UpcomingLocation(city: $city, arrivalDate: $arrivalDate, departureDate: $departureDate, userBaseName: $userBaseName, coordinates: $coordinates)';
}


}

/// @nodoc
abstract mixin class $UpcomingLocationCopyWith<$Res>  {
  factory $UpcomingLocationCopyWith(UpcomingLocation value, $Res Function(UpcomingLocation) _then) = _$UpcomingLocationCopyWithImpl;
@useResult
$Res call({
 String city, DateTime arrivalDate, DateTime departureDate, String? userBaseName, Coordinates? coordinates
});


$CoordinatesCopyWith<$Res>? get coordinates;

}
/// @nodoc
class _$UpcomingLocationCopyWithImpl<$Res>
    implements $UpcomingLocationCopyWith<$Res> {
  _$UpcomingLocationCopyWithImpl(this._self, this._then);

  final UpcomingLocation _self;
  final $Res Function(UpcomingLocation) _then;

/// Create a copy of UpcomingLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? city = null,Object? arrivalDate = null,Object? departureDate = null,Object? userBaseName = freezed,Object? coordinates = freezed,}) {
  return _then(_self.copyWith(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,arrivalDate: null == arrivalDate ? _self.arrivalDate : arrivalDate // ignore: cast_nullable_to_non_nullable
as DateTime,departureDate: null == departureDate ? _self.departureDate : departureDate // ignore: cast_nullable_to_non_nullable
as DateTime,userBaseName: freezed == userBaseName ? _self.userBaseName : userBaseName // ignore: cast_nullable_to_non_nullable
as String?,coordinates: freezed == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as Coordinates?,
  ));
}
/// Create a copy of UpcomingLocation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<$Res>? get coordinates {
    if (_self.coordinates == null) {
    return null;
  }

  return $CoordinatesCopyWith<$Res>(_self.coordinates!, (value) {
    return _then(_self.copyWith(coordinates: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpcomingLocation].
extension UpcomingLocationPatterns on UpcomingLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpcomingLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpcomingLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpcomingLocation value)  $default,){
final _that = this;
switch (_that) {
case _UpcomingLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpcomingLocation value)?  $default,){
final _that = this;
switch (_that) {
case _UpcomingLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String city,  DateTime arrivalDate,  DateTime departureDate,  String? userBaseName,  Coordinates? coordinates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpcomingLocation() when $default != null:
return $default(_that.city,_that.arrivalDate,_that.departureDate,_that.userBaseName,_that.coordinates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String city,  DateTime arrivalDate,  DateTime departureDate,  String? userBaseName,  Coordinates? coordinates)  $default,) {final _that = this;
switch (_that) {
case _UpcomingLocation():
return $default(_that.city,_that.arrivalDate,_that.departureDate,_that.userBaseName,_that.coordinates);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String city,  DateTime arrivalDate,  DateTime departureDate,  String? userBaseName,  Coordinates? coordinates)?  $default,) {final _that = this;
switch (_that) {
case _UpcomingLocation() when $default != null:
return $default(_that.city,_that.arrivalDate,_that.departureDate,_that.userBaseName,_that.coordinates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpcomingLocation implements UpcomingLocation {
  const _UpcomingLocation({required this.city, required this.arrivalDate, required this.departureDate, this.userBaseName, this.coordinates});
  factory _UpcomingLocation.fromJson(Map<String, dynamic> json) => _$UpcomingLocationFromJson(json);

@override final  String city;
@override final  DateTime arrivalDate;
@override final  DateTime departureDate;
@override final  String? userBaseName;
@override final  Coordinates? coordinates;

/// Create a copy of UpcomingLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpcomingLocationCopyWith<_UpcomingLocation> get copyWith => __$UpcomingLocationCopyWithImpl<_UpcomingLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpcomingLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpcomingLocation&&(identical(other.city, city) || other.city == city)&&(identical(other.arrivalDate, arrivalDate) || other.arrivalDate == arrivalDate)&&(identical(other.departureDate, departureDate) || other.departureDate == departureDate)&&(identical(other.userBaseName, userBaseName) || other.userBaseName == userBaseName)&&(identical(other.coordinates, coordinates) || other.coordinates == coordinates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,arrivalDate,departureDate,userBaseName,coordinates);

@override
String toString() {
  return 'UpcomingLocation(city: $city, arrivalDate: $arrivalDate, departureDate: $departureDate, userBaseName: $userBaseName, coordinates: $coordinates)';
}


}

/// @nodoc
abstract mixin class _$UpcomingLocationCopyWith<$Res> implements $UpcomingLocationCopyWith<$Res> {
  factory _$UpcomingLocationCopyWith(_UpcomingLocation value, $Res Function(_UpcomingLocation) _then) = __$UpcomingLocationCopyWithImpl;
@override @useResult
$Res call({
 String city, DateTime arrivalDate, DateTime departureDate, String? userBaseName, Coordinates? coordinates
});


@override $CoordinatesCopyWith<$Res>? get coordinates;

}
/// @nodoc
class __$UpcomingLocationCopyWithImpl<$Res>
    implements _$UpcomingLocationCopyWith<$Res> {
  __$UpcomingLocationCopyWithImpl(this._self, this._then);

  final _UpcomingLocation _self;
  final $Res Function(_UpcomingLocation) _then;

/// Create a copy of UpcomingLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? city = null,Object? arrivalDate = null,Object? departureDate = null,Object? userBaseName = freezed,Object? coordinates = freezed,}) {
  return _then(_UpcomingLocation(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,arrivalDate: null == arrivalDate ? _self.arrivalDate : arrivalDate // ignore: cast_nullable_to_non_nullable
as DateTime,departureDate: null == departureDate ? _self.departureDate : departureDate // ignore: cast_nullable_to_non_nullable
as DateTime,userBaseName: freezed == userBaseName ? _self.userBaseName : userBaseName // ignore: cast_nullable_to_non_nullable
as String?,coordinates: freezed == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as Coordinates?,
  ));
}

/// Create a copy of UpcomingLocation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<$Res>? get coordinates {
    if (_self.coordinates == null) {
    return null;
  }

  return $CoordinatesCopyWith<$Res>(_self.coordinates!, (value) {
    return _then(_self.copyWith(coordinates: value));
  });
}
}


/// @nodoc
mixin _$LocationContext {

 UserLocation get currentLocation; UserBase get userBase; List<UpcomingLocation> get upcomingLocations;
/// Create a copy of LocationContext
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationContextCopyWith<LocationContext> get copyWith => _$LocationContextCopyWithImpl<LocationContext>(this as LocationContext, _$identity);

  /// Serializes this LocationContext to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationContext&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.userBase, userBase) || other.userBase == userBase)&&const DeepCollectionEquality().equals(other.upcomingLocations, upcomingLocations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentLocation,userBase,const DeepCollectionEquality().hash(upcomingLocations));

@override
String toString() {
  return 'LocationContext(currentLocation: $currentLocation, userBase: $userBase, upcomingLocations: $upcomingLocations)';
}


}

/// @nodoc
abstract mixin class $LocationContextCopyWith<$Res>  {
  factory $LocationContextCopyWith(LocationContext value, $Res Function(LocationContext) _then) = _$LocationContextCopyWithImpl;
@useResult
$Res call({
 UserLocation currentLocation, UserBase userBase, List<UpcomingLocation> upcomingLocations
});


$UserLocationCopyWith<$Res> get currentLocation;$UserBaseCopyWith<$Res> get userBase;

}
/// @nodoc
class _$LocationContextCopyWithImpl<$Res>
    implements $LocationContextCopyWith<$Res> {
  _$LocationContextCopyWithImpl(this._self, this._then);

  final LocationContext _self;
  final $Res Function(LocationContext) _then;

/// Create a copy of LocationContext
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentLocation = null,Object? userBase = null,Object? upcomingLocations = null,}) {
  return _then(_self.copyWith(
currentLocation: null == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as UserLocation,userBase: null == userBase ? _self.userBase : userBase // ignore: cast_nullable_to_non_nullable
as UserBase,upcomingLocations: null == upcomingLocations ? _self.upcomingLocations : upcomingLocations // ignore: cast_nullable_to_non_nullable
as List<UpcomingLocation>,
  ));
}
/// Create a copy of LocationContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserLocationCopyWith<$Res> get currentLocation {
  
  return $UserLocationCopyWith<$Res>(_self.currentLocation, (value) {
    return _then(_self.copyWith(currentLocation: value));
  });
}/// Create a copy of LocationContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserBaseCopyWith<$Res> get userBase {
  
  return $UserBaseCopyWith<$Res>(_self.userBase, (value) {
    return _then(_self.copyWith(userBase: value));
  });
}
}


/// Adds pattern-matching-related methods to [LocationContext].
extension LocationContextPatterns on LocationContext {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationContext value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationContext() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationContext value)  $default,){
final _that = this;
switch (_that) {
case _LocationContext():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationContext value)?  $default,){
final _that = this;
switch (_that) {
case _LocationContext() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserLocation currentLocation,  UserBase userBase,  List<UpcomingLocation> upcomingLocations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationContext() when $default != null:
return $default(_that.currentLocation,_that.userBase,_that.upcomingLocations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserLocation currentLocation,  UserBase userBase,  List<UpcomingLocation> upcomingLocations)  $default,) {final _that = this;
switch (_that) {
case _LocationContext():
return $default(_that.currentLocation,_that.userBase,_that.upcomingLocations);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserLocation currentLocation,  UserBase userBase,  List<UpcomingLocation> upcomingLocations)?  $default,) {final _that = this;
switch (_that) {
case _LocationContext() when $default != null:
return $default(_that.currentLocation,_that.userBase,_that.upcomingLocations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocationContext implements LocationContext {
  const _LocationContext({required this.currentLocation, required this.userBase, final  List<UpcomingLocation> upcomingLocations = const []}): _upcomingLocations = upcomingLocations;
  factory _LocationContext.fromJson(Map<String, dynamic> json) => _$LocationContextFromJson(json);

@override final  UserLocation currentLocation;
@override final  UserBase userBase;
 final  List<UpcomingLocation> _upcomingLocations;
@override@JsonKey() List<UpcomingLocation> get upcomingLocations {
  if (_upcomingLocations is EqualUnmodifiableListView) return _upcomingLocations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_upcomingLocations);
}


/// Create a copy of LocationContext
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationContextCopyWith<_LocationContext> get copyWith => __$LocationContextCopyWithImpl<_LocationContext>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationContextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationContext&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&(identical(other.userBase, userBase) || other.userBase == userBase)&&const DeepCollectionEquality().equals(other._upcomingLocations, _upcomingLocations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentLocation,userBase,const DeepCollectionEquality().hash(_upcomingLocations));

@override
String toString() {
  return 'LocationContext(currentLocation: $currentLocation, userBase: $userBase, upcomingLocations: $upcomingLocations)';
}


}

/// @nodoc
abstract mixin class _$LocationContextCopyWith<$Res> implements $LocationContextCopyWith<$Res> {
  factory _$LocationContextCopyWith(_LocationContext value, $Res Function(_LocationContext) _then) = __$LocationContextCopyWithImpl;
@override @useResult
$Res call({
 UserLocation currentLocation, UserBase userBase, List<UpcomingLocation> upcomingLocations
});


@override $UserLocationCopyWith<$Res> get currentLocation;@override $UserBaseCopyWith<$Res> get userBase;

}
/// @nodoc
class __$LocationContextCopyWithImpl<$Res>
    implements _$LocationContextCopyWith<$Res> {
  __$LocationContextCopyWithImpl(this._self, this._then);

  final _LocationContext _self;
  final $Res Function(_LocationContext) _then;

/// Create a copy of LocationContext
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentLocation = null,Object? userBase = null,Object? upcomingLocations = null,}) {
  return _then(_LocationContext(
currentLocation: null == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as UserLocation,userBase: null == userBase ? _self.userBase : userBase // ignore: cast_nullable_to_non_nullable
as UserBase,upcomingLocations: null == upcomingLocations ? _self._upcomingLocations : upcomingLocations // ignore: cast_nullable_to_non_nullable
as List<UpcomingLocation>,
  ));
}

/// Create a copy of LocationContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserLocationCopyWith<$Res> get currentLocation {
  
  return $UserLocationCopyWith<$Res>(_self.currentLocation, (value) {
    return _then(_self.copyWith(currentLocation: value));
  });
}/// Create a copy of LocationContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserBaseCopyWith<$Res> get userBase {
  
  return $UserBaseCopyWith<$Res>(_self.userBase, (value) {
    return _then(_self.copyWith(userBase: value));
  });
}
}


/// @nodoc
mixin _$TimeWindow {

 DateTime get date; String get startTime; String get endTime; int get durationMinutes; String? get beforeEvent; String? get afterEvent; String get location;
/// Create a copy of TimeWindow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeWindowCopyWith<TimeWindow> get copyWith => _$TimeWindowCopyWithImpl<TimeWindow>(this as TimeWindow, _$identity);

  /// Serializes this TimeWindow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeWindow&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.beforeEvent, beforeEvent) || other.beforeEvent == beforeEvent)&&(identical(other.afterEvent, afterEvent) || other.afterEvent == afterEvent)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,startTime,endTime,durationMinutes,beforeEvent,afterEvent,location);

@override
String toString() {
  return 'TimeWindow(date: $date, startTime: $startTime, endTime: $endTime, durationMinutes: $durationMinutes, beforeEvent: $beforeEvent, afterEvent: $afterEvent, location: $location)';
}


}

/// @nodoc
abstract mixin class $TimeWindowCopyWith<$Res>  {
  factory $TimeWindowCopyWith(TimeWindow value, $Res Function(TimeWindow) _then) = _$TimeWindowCopyWithImpl;
@useResult
$Res call({
 DateTime date, String startTime, String endTime, int durationMinutes, String? beforeEvent, String? afterEvent, String location
});




}
/// @nodoc
class _$TimeWindowCopyWithImpl<$Res>
    implements $TimeWindowCopyWith<$Res> {
  _$TimeWindowCopyWithImpl(this._self, this._then);

  final TimeWindow _self;
  final $Res Function(TimeWindow) _then;

/// Create a copy of TimeWindow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? startTime = null,Object? endTime = null,Object? durationMinutes = null,Object? beforeEvent = freezed,Object? afterEvent = freezed,Object? location = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,beforeEvent: freezed == beforeEvent ? _self.beforeEvent : beforeEvent // ignore: cast_nullable_to_non_nullable
as String?,afterEvent: freezed == afterEvent ? _self.afterEvent : afterEvent // ignore: cast_nullable_to_non_nullable
as String?,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TimeWindow].
extension TimeWindowPatterns on TimeWindow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimeWindow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimeWindow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimeWindow value)  $default,){
final _that = this;
switch (_that) {
case _TimeWindow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimeWindow value)?  $default,){
final _that = this;
switch (_that) {
case _TimeWindow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  String startTime,  String endTime,  int durationMinutes,  String? beforeEvent,  String? afterEvent,  String location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimeWindow() when $default != null:
return $default(_that.date,_that.startTime,_that.endTime,_that.durationMinutes,_that.beforeEvent,_that.afterEvent,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  String startTime,  String endTime,  int durationMinutes,  String? beforeEvent,  String? afterEvent,  String location)  $default,) {final _that = this;
switch (_that) {
case _TimeWindow():
return $default(_that.date,_that.startTime,_that.endTime,_that.durationMinutes,_that.beforeEvent,_that.afterEvent,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  String startTime,  String endTime,  int durationMinutes,  String? beforeEvent,  String? afterEvent,  String location)?  $default,) {final _that = this;
switch (_that) {
case _TimeWindow() when $default != null:
return $default(_that.date,_that.startTime,_that.endTime,_that.durationMinutes,_that.beforeEvent,_that.afterEvent,_that.location);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TimeWindow implements TimeWindow {
  const _TimeWindow({required this.date, required this.startTime, required this.endTime, required this.durationMinutes, this.beforeEvent, this.afterEvent, required this.location});
  factory _TimeWindow.fromJson(Map<String, dynamic> json) => _$TimeWindowFromJson(json);

@override final  DateTime date;
@override final  String startTime;
@override final  String endTime;
@override final  int durationMinutes;
@override final  String? beforeEvent;
@override final  String? afterEvent;
@override final  String location;

/// Create a copy of TimeWindow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeWindowCopyWith<_TimeWindow> get copyWith => __$TimeWindowCopyWithImpl<_TimeWindow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeWindowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeWindow&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.beforeEvent, beforeEvent) || other.beforeEvent == beforeEvent)&&(identical(other.afterEvent, afterEvent) || other.afterEvent == afterEvent)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,startTime,endTime,durationMinutes,beforeEvent,afterEvent,location);

@override
String toString() {
  return 'TimeWindow(date: $date, startTime: $startTime, endTime: $endTime, durationMinutes: $durationMinutes, beforeEvent: $beforeEvent, afterEvent: $afterEvent, location: $location)';
}


}

/// @nodoc
abstract mixin class _$TimeWindowCopyWith<$Res> implements $TimeWindowCopyWith<$Res> {
  factory _$TimeWindowCopyWith(_TimeWindow value, $Res Function(_TimeWindow) _then) = __$TimeWindowCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, String startTime, String endTime, int durationMinutes, String? beforeEvent, String? afterEvent, String location
});




}
/// @nodoc
class __$TimeWindowCopyWithImpl<$Res>
    implements _$TimeWindowCopyWith<$Res> {
  __$TimeWindowCopyWithImpl(this._self, this._then);

  final _TimeWindow _self;
  final $Res Function(_TimeWindow) _then;

/// Create a copy of TimeWindow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? startTime = null,Object? endTime = null,Object? durationMinutes = null,Object? beforeEvent = freezed,Object? afterEvent = freezed,Object? location = null,}) {
  return _then(_TimeWindow(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,beforeEvent: freezed == beforeEvent ? _self.beforeEvent : beforeEvent // ignore: cast_nullable_to_non_nullable
as String?,afterEvent: freezed == afterEvent ? _self.afterEvent : afterEvent // ignore: cast_nullable_to_non_nullable
as String?,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AvailableWindows {

 List<TimeWindow> get windows;
/// Create a copy of AvailableWindows
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvailableWindowsCopyWith<AvailableWindows> get copyWith => _$AvailableWindowsCopyWithImpl<AvailableWindows>(this as AvailableWindows, _$identity);

  /// Serializes this AvailableWindows to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableWindows&&const DeepCollectionEquality().equals(other.windows, windows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(windows));

@override
String toString() {
  return 'AvailableWindows(windows: $windows)';
}


}

/// @nodoc
abstract mixin class $AvailableWindowsCopyWith<$Res>  {
  factory $AvailableWindowsCopyWith(AvailableWindows value, $Res Function(AvailableWindows) _then) = _$AvailableWindowsCopyWithImpl;
@useResult
$Res call({
 List<TimeWindow> windows
});




}
/// @nodoc
class _$AvailableWindowsCopyWithImpl<$Res>
    implements $AvailableWindowsCopyWith<$Res> {
  _$AvailableWindowsCopyWithImpl(this._self, this._then);

  final AvailableWindows _self;
  final $Res Function(AvailableWindows) _then;

/// Create a copy of AvailableWindows
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? windows = null,}) {
  return _then(_self.copyWith(
windows: null == windows ? _self.windows : windows // ignore: cast_nullable_to_non_nullable
as List<TimeWindow>,
  ));
}

}


/// Adds pattern-matching-related methods to [AvailableWindows].
extension AvailableWindowsPatterns on AvailableWindows {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AvailableWindows value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AvailableWindows() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AvailableWindows value)  $default,){
final _that = this;
switch (_that) {
case _AvailableWindows():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AvailableWindows value)?  $default,){
final _that = this;
switch (_that) {
case _AvailableWindows() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TimeWindow> windows)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AvailableWindows() when $default != null:
return $default(_that.windows);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TimeWindow> windows)  $default,) {final _that = this;
switch (_that) {
case _AvailableWindows():
return $default(_that.windows);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TimeWindow> windows)?  $default,) {final _that = this;
switch (_that) {
case _AvailableWindows() when $default != null:
return $default(_that.windows);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AvailableWindows implements AvailableWindows {
  const _AvailableWindows({final  List<TimeWindow> windows = const []}): _windows = windows;
  factory _AvailableWindows.fromJson(Map<String, dynamic> json) => _$AvailableWindowsFromJson(json);

 final  List<TimeWindow> _windows;
@override@JsonKey() List<TimeWindow> get windows {
  if (_windows is EqualUnmodifiableListView) return _windows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_windows);
}


/// Create a copy of AvailableWindows
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvailableWindowsCopyWith<_AvailableWindows> get copyWith => __$AvailableWindowsCopyWithImpl<_AvailableWindows>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AvailableWindowsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvailableWindows&&const DeepCollectionEquality().equals(other._windows, _windows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_windows));

@override
String toString() {
  return 'AvailableWindows(windows: $windows)';
}


}

/// @nodoc
abstract mixin class _$AvailableWindowsCopyWith<$Res> implements $AvailableWindowsCopyWith<$Res> {
  factory _$AvailableWindowsCopyWith(_AvailableWindows value, $Res Function(_AvailableWindows) _then) = __$AvailableWindowsCopyWithImpl;
@override @useResult
$Res call({
 List<TimeWindow> windows
});




}
/// @nodoc
class __$AvailableWindowsCopyWithImpl<$Res>
    implements _$AvailableWindowsCopyWith<$Res> {
  __$AvailableWindowsCopyWithImpl(this._self, this._then);

  final _AvailableWindows _self;
  final $Res Function(_AvailableWindows) _then;

/// Create a copy of AvailableWindows
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? windows = null,}) {
  return _then(_AvailableWindows(
windows: null == windows ? _self._windows : windows // ignore: cast_nullable_to_non_nullable
as List<TimeWindow>,
  ));
}


}


/// @nodoc
mixin _$LearnedPattern {

 String get activityType; String get context; String get effectivenessMetric; double get effectivenessValue; String get description;
/// Create a copy of LearnedPattern
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LearnedPatternCopyWith<LearnedPattern> get copyWith => _$LearnedPatternCopyWithImpl<LearnedPattern>(this as LearnedPattern, _$identity);

  /// Serializes this LearnedPattern to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LearnedPattern&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.context, context) || other.context == context)&&(identical(other.effectivenessMetric, effectivenessMetric) || other.effectivenessMetric == effectivenessMetric)&&(identical(other.effectivenessValue, effectivenessValue) || other.effectivenessValue == effectivenessValue)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activityType,context,effectivenessMetric,effectivenessValue,description);

@override
String toString() {
  return 'LearnedPattern(activityType: $activityType, context: $context, effectivenessMetric: $effectivenessMetric, effectivenessValue: $effectivenessValue, description: $description)';
}


}

/// @nodoc
abstract mixin class $LearnedPatternCopyWith<$Res>  {
  factory $LearnedPatternCopyWith(LearnedPattern value, $Res Function(LearnedPattern) _then) = _$LearnedPatternCopyWithImpl;
@useResult
$Res call({
 String activityType, String context, String effectivenessMetric, double effectivenessValue, String description
});




}
/// @nodoc
class _$LearnedPatternCopyWithImpl<$Res>
    implements $LearnedPatternCopyWith<$Res> {
  _$LearnedPatternCopyWithImpl(this._self, this._then);

  final LearnedPattern _self;
  final $Res Function(LearnedPattern) _then;

/// Create a copy of LearnedPattern
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activityType = null,Object? context = null,Object? effectivenessMetric = null,Object? effectivenessValue = null,Object? description = null,}) {
  return _then(_self.copyWith(
activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,effectivenessMetric: null == effectivenessMetric ? _self.effectivenessMetric : effectivenessMetric // ignore: cast_nullable_to_non_nullable
as String,effectivenessValue: null == effectivenessValue ? _self.effectivenessValue : effectivenessValue // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LearnedPattern].
extension LearnedPatternPatterns on LearnedPattern {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LearnedPattern value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LearnedPattern() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LearnedPattern value)  $default,){
final _that = this;
switch (_that) {
case _LearnedPattern():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LearnedPattern value)?  $default,){
final _that = this;
switch (_that) {
case _LearnedPattern() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String activityType,  String context,  String effectivenessMetric,  double effectivenessValue,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LearnedPattern() when $default != null:
return $default(_that.activityType,_that.context,_that.effectivenessMetric,_that.effectivenessValue,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String activityType,  String context,  String effectivenessMetric,  double effectivenessValue,  String description)  $default,) {final _that = this;
switch (_that) {
case _LearnedPattern():
return $default(_that.activityType,_that.context,_that.effectivenessMetric,_that.effectivenessValue,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String activityType,  String context,  String effectivenessMetric,  double effectivenessValue,  String description)?  $default,) {final _that = this;
switch (_that) {
case _LearnedPattern() when $default != null:
return $default(_that.activityType,_that.context,_that.effectivenessMetric,_that.effectivenessValue,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LearnedPattern implements LearnedPattern {
  const _LearnedPattern({required this.activityType, required this.context, required this.effectivenessMetric, required this.effectivenessValue, required this.description});
  factory _LearnedPattern.fromJson(Map<String, dynamic> json) => _$LearnedPatternFromJson(json);

@override final  String activityType;
@override final  String context;
@override final  String effectivenessMetric;
@override final  double effectivenessValue;
@override final  String description;

/// Create a copy of LearnedPattern
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LearnedPatternCopyWith<_LearnedPattern> get copyWith => __$LearnedPatternCopyWithImpl<_LearnedPattern>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LearnedPatternToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LearnedPattern&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.context, context) || other.context == context)&&(identical(other.effectivenessMetric, effectivenessMetric) || other.effectivenessMetric == effectivenessMetric)&&(identical(other.effectivenessValue, effectivenessValue) || other.effectivenessValue == effectivenessValue)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activityType,context,effectivenessMetric,effectivenessValue,description);

@override
String toString() {
  return 'LearnedPattern(activityType: $activityType, context: $context, effectivenessMetric: $effectivenessMetric, effectivenessValue: $effectivenessValue, description: $description)';
}


}

/// @nodoc
abstract mixin class _$LearnedPatternCopyWith<$Res> implements $LearnedPatternCopyWith<$Res> {
  factory _$LearnedPatternCopyWith(_LearnedPattern value, $Res Function(_LearnedPattern) _then) = __$LearnedPatternCopyWithImpl;
@override @useResult
$Res call({
 String activityType, String context, String effectivenessMetric, double effectivenessValue, String description
});




}
/// @nodoc
class __$LearnedPatternCopyWithImpl<$Res>
    implements _$LearnedPatternCopyWith<$Res> {
  __$LearnedPatternCopyWithImpl(this._self, this._then);

  final _LearnedPattern _self;
  final $Res Function(_LearnedPattern) _then;

/// Create a copy of LearnedPattern
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activityType = null,Object? context = null,Object? effectivenessMetric = null,Object? effectivenessValue = null,Object? description = null,}) {
  return _then(_LearnedPattern(
activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,effectivenessMetric: null == effectivenessMetric ? _self.effectivenessMetric : effectivenessMetric // ignore: cast_nullable_to_non_nullable
as String,effectivenessValue: null == effectivenessValue ? _self.effectivenessValue : effectivenessValue // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ActivityPreferences {

 List<String> get preferred; List<String> get neutral; List<String> get disliked;
/// Create a copy of ActivityPreferences
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityPreferencesCopyWith<ActivityPreferences> get copyWith => _$ActivityPreferencesCopyWithImpl<ActivityPreferences>(this as ActivityPreferences, _$identity);

  /// Serializes this ActivityPreferences to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityPreferences&&const DeepCollectionEquality().equals(other.preferred, preferred)&&const DeepCollectionEquality().equals(other.neutral, neutral)&&const DeepCollectionEquality().equals(other.disliked, disliked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(preferred),const DeepCollectionEquality().hash(neutral),const DeepCollectionEquality().hash(disliked));

@override
String toString() {
  return 'ActivityPreferences(preferred: $preferred, neutral: $neutral, disliked: $disliked)';
}


}

/// @nodoc
abstract mixin class $ActivityPreferencesCopyWith<$Res>  {
  factory $ActivityPreferencesCopyWith(ActivityPreferences value, $Res Function(ActivityPreferences) _then) = _$ActivityPreferencesCopyWithImpl;
@useResult
$Res call({
 List<String> preferred, List<String> neutral, List<String> disliked
});




}
/// @nodoc
class _$ActivityPreferencesCopyWithImpl<$Res>
    implements $ActivityPreferencesCopyWith<$Res> {
  _$ActivityPreferencesCopyWithImpl(this._self, this._then);

  final ActivityPreferences _self;
  final $Res Function(ActivityPreferences) _then;

/// Create a copy of ActivityPreferences
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? preferred = null,Object? neutral = null,Object? disliked = null,}) {
  return _then(_self.copyWith(
preferred: null == preferred ? _self.preferred : preferred // ignore: cast_nullable_to_non_nullable
as List<String>,neutral: null == neutral ? _self.neutral : neutral // ignore: cast_nullable_to_non_nullable
as List<String>,disliked: null == disliked ? _self.disliked : disliked // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityPreferences].
extension ActivityPreferencesPatterns on ActivityPreferences {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityPreferences value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityPreferences() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityPreferences value)  $default,){
final _that = this;
switch (_that) {
case _ActivityPreferences():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityPreferences value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityPreferences() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> preferred,  List<String> neutral,  List<String> disliked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityPreferences() when $default != null:
return $default(_that.preferred,_that.neutral,_that.disliked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> preferred,  List<String> neutral,  List<String> disliked)  $default,) {final _that = this;
switch (_that) {
case _ActivityPreferences():
return $default(_that.preferred,_that.neutral,_that.disliked);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> preferred,  List<String> neutral,  List<String> disliked)?  $default,) {final _that = this;
switch (_that) {
case _ActivityPreferences() when $default != null:
return $default(_that.preferred,_that.neutral,_that.disliked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityPreferences implements ActivityPreferences {
  const _ActivityPreferences({final  List<String> preferred = const [], final  List<String> neutral = const [], final  List<String> disliked = const []}): _preferred = preferred,_neutral = neutral,_disliked = disliked;
  factory _ActivityPreferences.fromJson(Map<String, dynamic> json) => _$ActivityPreferencesFromJson(json);

 final  List<String> _preferred;
@override@JsonKey() List<String> get preferred {
  if (_preferred is EqualUnmodifiableListView) return _preferred;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_preferred);
}

 final  List<String> _neutral;
@override@JsonKey() List<String> get neutral {
  if (_neutral is EqualUnmodifiableListView) return _neutral;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_neutral);
}

 final  List<String> _disliked;
@override@JsonKey() List<String> get disliked {
  if (_disliked is EqualUnmodifiableListView) return _disliked;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_disliked);
}


/// Create a copy of ActivityPreferences
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityPreferencesCopyWith<_ActivityPreferences> get copyWith => __$ActivityPreferencesCopyWithImpl<_ActivityPreferences>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityPreferencesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityPreferences&&const DeepCollectionEquality().equals(other._preferred, _preferred)&&const DeepCollectionEquality().equals(other._neutral, _neutral)&&const DeepCollectionEquality().equals(other._disliked, _disliked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_preferred),const DeepCollectionEquality().hash(_neutral),const DeepCollectionEquality().hash(_disliked));

@override
String toString() {
  return 'ActivityPreferences(preferred: $preferred, neutral: $neutral, disliked: $disliked)';
}


}

/// @nodoc
abstract mixin class _$ActivityPreferencesCopyWith<$Res> implements $ActivityPreferencesCopyWith<$Res> {
  factory _$ActivityPreferencesCopyWith(_ActivityPreferences value, $Res Function(_ActivityPreferences) _then) = __$ActivityPreferencesCopyWithImpl;
@override @useResult
$Res call({
 List<String> preferred, List<String> neutral, List<String> disliked
});




}
/// @nodoc
class __$ActivityPreferencesCopyWithImpl<$Res>
    implements _$ActivityPreferencesCopyWith<$Res> {
  __$ActivityPreferencesCopyWithImpl(this._self, this._then);

  final _ActivityPreferences _self;
  final $Res Function(_ActivityPreferences) _then;

/// Create a copy of ActivityPreferences
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? preferred = null,Object? neutral = null,Object? disliked = null,}) {
  return _then(_ActivityPreferences(
preferred: null == preferred ? _self._preferred : preferred // ignore: cast_nullable_to_non_nullable
as List<String>,neutral: null == neutral ? _self._neutral : neutral // ignore: cast_nullable_to_non_nullable
as List<String>,disliked: null == disliked ? _self._disliked : disliked // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$TimingPreferences {

 List<TimeOfDay> get preferredTimes; List<TimeOfDay> get avoidTimes;
/// Create a copy of TimingPreferences
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimingPreferencesCopyWith<TimingPreferences> get copyWith => _$TimingPreferencesCopyWithImpl<TimingPreferences>(this as TimingPreferences, _$identity);

  /// Serializes this TimingPreferences to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimingPreferences&&const DeepCollectionEquality().equals(other.preferredTimes, preferredTimes)&&const DeepCollectionEquality().equals(other.avoidTimes, avoidTimes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(preferredTimes),const DeepCollectionEquality().hash(avoidTimes));

@override
String toString() {
  return 'TimingPreferences(preferredTimes: $preferredTimes, avoidTimes: $avoidTimes)';
}


}

/// @nodoc
abstract mixin class $TimingPreferencesCopyWith<$Res>  {
  factory $TimingPreferencesCopyWith(TimingPreferences value, $Res Function(TimingPreferences) _then) = _$TimingPreferencesCopyWithImpl;
@useResult
$Res call({
 List<TimeOfDay> preferredTimes, List<TimeOfDay> avoidTimes
});




}
/// @nodoc
class _$TimingPreferencesCopyWithImpl<$Res>
    implements $TimingPreferencesCopyWith<$Res> {
  _$TimingPreferencesCopyWithImpl(this._self, this._then);

  final TimingPreferences _self;
  final $Res Function(TimingPreferences) _then;

/// Create a copy of TimingPreferences
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? preferredTimes = null,Object? avoidTimes = null,}) {
  return _then(_self.copyWith(
preferredTimes: null == preferredTimes ? _self.preferredTimes : preferredTimes // ignore: cast_nullable_to_non_nullable
as List<TimeOfDay>,avoidTimes: null == avoidTimes ? _self.avoidTimes : avoidTimes // ignore: cast_nullable_to_non_nullable
as List<TimeOfDay>,
  ));
}

}


/// Adds pattern-matching-related methods to [TimingPreferences].
extension TimingPreferencesPatterns on TimingPreferences {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimingPreferences value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimingPreferences() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimingPreferences value)  $default,){
final _that = this;
switch (_that) {
case _TimingPreferences():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimingPreferences value)?  $default,){
final _that = this;
switch (_that) {
case _TimingPreferences() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TimeOfDay> preferredTimes,  List<TimeOfDay> avoidTimes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimingPreferences() when $default != null:
return $default(_that.preferredTimes,_that.avoidTimes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TimeOfDay> preferredTimes,  List<TimeOfDay> avoidTimes)  $default,) {final _that = this;
switch (_that) {
case _TimingPreferences():
return $default(_that.preferredTimes,_that.avoidTimes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TimeOfDay> preferredTimes,  List<TimeOfDay> avoidTimes)?  $default,) {final _that = this;
switch (_that) {
case _TimingPreferences() when $default != null:
return $default(_that.preferredTimes,_that.avoidTimes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TimingPreferences implements TimingPreferences {
  const _TimingPreferences({final  List<TimeOfDay> preferredTimes = const [], final  List<TimeOfDay> avoidTimes = const []}): _preferredTimes = preferredTimes,_avoidTimes = avoidTimes;
  factory _TimingPreferences.fromJson(Map<String, dynamic> json) => _$TimingPreferencesFromJson(json);

 final  List<TimeOfDay> _preferredTimes;
@override@JsonKey() List<TimeOfDay> get preferredTimes {
  if (_preferredTimes is EqualUnmodifiableListView) return _preferredTimes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_preferredTimes);
}

 final  List<TimeOfDay> _avoidTimes;
@override@JsonKey() List<TimeOfDay> get avoidTimes {
  if (_avoidTimes is EqualUnmodifiableListView) return _avoidTimes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_avoidTimes);
}


/// Create a copy of TimingPreferences
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimingPreferencesCopyWith<_TimingPreferences> get copyWith => __$TimingPreferencesCopyWithImpl<_TimingPreferences>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimingPreferencesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimingPreferences&&const DeepCollectionEquality().equals(other._preferredTimes, _preferredTimes)&&const DeepCollectionEquality().equals(other._avoidTimes, _avoidTimes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_preferredTimes),const DeepCollectionEquality().hash(_avoidTimes));

@override
String toString() {
  return 'TimingPreferences(preferredTimes: $preferredTimes, avoidTimes: $avoidTimes)';
}


}

/// @nodoc
abstract mixin class _$TimingPreferencesCopyWith<$Res> implements $TimingPreferencesCopyWith<$Res> {
  factory _$TimingPreferencesCopyWith(_TimingPreferences value, $Res Function(_TimingPreferences) _then) = __$TimingPreferencesCopyWithImpl;
@override @useResult
$Res call({
 List<TimeOfDay> preferredTimes, List<TimeOfDay> avoidTimes
});




}
/// @nodoc
class __$TimingPreferencesCopyWithImpl<$Res>
    implements _$TimingPreferencesCopyWith<$Res> {
  __$TimingPreferencesCopyWithImpl(this._self, this._then);

  final _TimingPreferences _self;
  final $Res Function(_TimingPreferences) _then;

/// Create a copy of TimingPreferences
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? preferredTimes = null,Object? avoidTimes = null,}) {
  return _then(_TimingPreferences(
preferredTimes: null == preferredTimes ? _self._preferredTimes : preferredTimes // ignore: cast_nullable_to_non_nullable
as List<TimeOfDay>,avoidTimes: null == avoidTimes ? _self._avoidTimes : avoidTimes // ignore: cast_nullable_to_non_nullable
as List<TimeOfDay>,
  ));
}


}


/// @nodoc
mixin _$UserPreferences {

 ActivityPreferences get activities; TimingPreferences get timing; ActivityIntensity get intensity; String get maxDistance; double get maxPrice; List<LearnedPattern> get learnedPatterns;
/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPreferencesCopyWith<UserPreferences> get copyWith => _$UserPreferencesCopyWithImpl<UserPreferences>(this as UserPreferences, _$identity);

  /// Serializes this UserPreferences to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPreferences&&(identical(other.activities, activities) || other.activities == activities)&&(identical(other.timing, timing) || other.timing == timing)&&(identical(other.intensity, intensity) || other.intensity == intensity)&&(identical(other.maxDistance, maxDistance) || other.maxDistance == maxDistance)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&const DeepCollectionEquality().equals(other.learnedPatterns, learnedPatterns));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activities,timing,intensity,maxDistance,maxPrice,const DeepCollectionEquality().hash(learnedPatterns));

@override
String toString() {
  return 'UserPreferences(activities: $activities, timing: $timing, intensity: $intensity, maxDistance: $maxDistance, maxPrice: $maxPrice, learnedPatterns: $learnedPatterns)';
}


}

/// @nodoc
abstract mixin class $UserPreferencesCopyWith<$Res>  {
  factory $UserPreferencesCopyWith(UserPreferences value, $Res Function(UserPreferences) _then) = _$UserPreferencesCopyWithImpl;
@useResult
$Res call({
 ActivityPreferences activities, TimingPreferences timing, ActivityIntensity intensity, String maxDistance, double maxPrice, List<LearnedPattern> learnedPatterns
});


$ActivityPreferencesCopyWith<$Res> get activities;$TimingPreferencesCopyWith<$Res> get timing;

}
/// @nodoc
class _$UserPreferencesCopyWithImpl<$Res>
    implements $UserPreferencesCopyWith<$Res> {
  _$UserPreferencesCopyWithImpl(this._self, this._then);

  final UserPreferences _self;
  final $Res Function(UserPreferences) _then;

/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activities = null,Object? timing = null,Object? intensity = null,Object? maxDistance = null,Object? maxPrice = null,Object? learnedPatterns = null,}) {
  return _then(_self.copyWith(
activities: null == activities ? _self.activities : activities // ignore: cast_nullable_to_non_nullable
as ActivityPreferences,timing: null == timing ? _self.timing : timing // ignore: cast_nullable_to_non_nullable
as TimingPreferences,intensity: null == intensity ? _self.intensity : intensity // ignore: cast_nullable_to_non_nullable
as ActivityIntensity,maxDistance: null == maxDistance ? _self.maxDistance : maxDistance // ignore: cast_nullable_to_non_nullable
as String,maxPrice: null == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double,learnedPatterns: null == learnedPatterns ? _self.learnedPatterns : learnedPatterns // ignore: cast_nullable_to_non_nullable
as List<LearnedPattern>,
  ));
}
/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityPreferencesCopyWith<$Res> get activities {
  
  return $ActivityPreferencesCopyWith<$Res>(_self.activities, (value) {
    return _then(_self.copyWith(activities: value));
  });
}/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimingPreferencesCopyWith<$Res> get timing {
  
  return $TimingPreferencesCopyWith<$Res>(_self.timing, (value) {
    return _then(_self.copyWith(timing: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserPreferences].
extension UserPreferencesPatterns on UserPreferences {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPreferences value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPreferences() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPreferences value)  $default,){
final _that = this;
switch (_that) {
case _UserPreferences():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPreferences value)?  $default,){
final _that = this;
switch (_that) {
case _UserPreferences() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ActivityPreferences activities,  TimingPreferences timing,  ActivityIntensity intensity,  String maxDistance,  double maxPrice,  List<LearnedPattern> learnedPatterns)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPreferences() when $default != null:
return $default(_that.activities,_that.timing,_that.intensity,_that.maxDistance,_that.maxPrice,_that.learnedPatterns);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ActivityPreferences activities,  TimingPreferences timing,  ActivityIntensity intensity,  String maxDistance,  double maxPrice,  List<LearnedPattern> learnedPatterns)  $default,) {final _that = this;
switch (_that) {
case _UserPreferences():
return $default(_that.activities,_that.timing,_that.intensity,_that.maxDistance,_that.maxPrice,_that.learnedPatterns);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ActivityPreferences activities,  TimingPreferences timing,  ActivityIntensity intensity,  String maxDistance,  double maxPrice,  List<LearnedPattern> learnedPatterns)?  $default,) {final _that = this;
switch (_that) {
case _UserPreferences() when $default != null:
return $default(_that.activities,_that.timing,_that.intensity,_that.maxDistance,_that.maxPrice,_that.learnedPatterns);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPreferences implements UserPreferences {
  const _UserPreferences({required this.activities, required this.timing, required this.intensity, required this.maxDistance, required this.maxPrice, final  List<LearnedPattern> learnedPatterns = const []}): _learnedPatterns = learnedPatterns;
  factory _UserPreferences.fromJson(Map<String, dynamic> json) => _$UserPreferencesFromJson(json);

@override final  ActivityPreferences activities;
@override final  TimingPreferences timing;
@override final  ActivityIntensity intensity;
@override final  String maxDistance;
@override final  double maxPrice;
 final  List<LearnedPattern> _learnedPatterns;
@override@JsonKey() List<LearnedPattern> get learnedPatterns {
  if (_learnedPatterns is EqualUnmodifiableListView) return _learnedPatterns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_learnedPatterns);
}


/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPreferencesCopyWith<_UserPreferences> get copyWith => __$UserPreferencesCopyWithImpl<_UserPreferences>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPreferencesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPreferences&&(identical(other.activities, activities) || other.activities == activities)&&(identical(other.timing, timing) || other.timing == timing)&&(identical(other.intensity, intensity) || other.intensity == intensity)&&(identical(other.maxDistance, maxDistance) || other.maxDistance == maxDistance)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&const DeepCollectionEquality().equals(other._learnedPatterns, _learnedPatterns));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activities,timing,intensity,maxDistance,maxPrice,const DeepCollectionEquality().hash(_learnedPatterns));

@override
String toString() {
  return 'UserPreferences(activities: $activities, timing: $timing, intensity: $intensity, maxDistance: $maxDistance, maxPrice: $maxPrice, learnedPatterns: $learnedPatterns)';
}


}

/// @nodoc
abstract mixin class _$UserPreferencesCopyWith<$Res> implements $UserPreferencesCopyWith<$Res> {
  factory _$UserPreferencesCopyWith(_UserPreferences value, $Res Function(_UserPreferences) _then) = __$UserPreferencesCopyWithImpl;
@override @useResult
$Res call({
 ActivityPreferences activities, TimingPreferences timing, ActivityIntensity intensity, String maxDistance, double maxPrice, List<LearnedPattern> learnedPatterns
});


@override $ActivityPreferencesCopyWith<$Res> get activities;@override $TimingPreferencesCopyWith<$Res> get timing;

}
/// @nodoc
class __$UserPreferencesCopyWithImpl<$Res>
    implements _$UserPreferencesCopyWith<$Res> {
  __$UserPreferencesCopyWithImpl(this._self, this._then);

  final _UserPreferences _self;
  final $Res Function(_UserPreferences) _then;

/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activities = null,Object? timing = null,Object? intensity = null,Object? maxDistance = null,Object? maxPrice = null,Object? learnedPatterns = null,}) {
  return _then(_UserPreferences(
activities: null == activities ? _self.activities : activities // ignore: cast_nullable_to_non_nullable
as ActivityPreferences,timing: null == timing ? _self.timing : timing // ignore: cast_nullable_to_non_nullable
as TimingPreferences,intensity: null == intensity ? _self.intensity : intensity // ignore: cast_nullable_to_non_nullable
as ActivityIntensity,maxDistance: null == maxDistance ? _self.maxDistance : maxDistance // ignore: cast_nullable_to_non_nullable
as String,maxPrice: null == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double,learnedPatterns: null == learnedPatterns ? _self._learnedPatterns : learnedPatterns // ignore: cast_nullable_to_non_nullable
as List<LearnedPattern>,
  ));
}

/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityPreferencesCopyWith<$Res> get activities {
  
  return $ActivityPreferencesCopyWith<$Res>(_self.activities, (value) {
    return _then(_self.copyWith(activities: value));
  });
}/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimingPreferencesCopyWith<$Res> get timing {
  
  return $TimingPreferencesCopyWith<$Res>(_self.timing, (value) {
    return _then(_self.copyWith(timing: value));
  });
}
}


/// @nodoc
mixin _$ProviderInfo {

 ProviderType get type; bool get available; bool get userHasAccount;
/// Create a copy of ProviderInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProviderInfoCopyWith<ProviderInfo> get copyWith => _$ProviderInfoCopyWithImpl<ProviderInfo>(this as ProviderInfo, _$identity);

  /// Serializes this ProviderInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProviderInfo&&(identical(other.type, type) || other.type == type)&&(identical(other.available, available) || other.available == available)&&(identical(other.userHasAccount, userHasAccount) || other.userHasAccount == userHasAccount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,available,userHasAccount);

@override
String toString() {
  return 'ProviderInfo(type: $type, available: $available, userHasAccount: $userHasAccount)';
}


}

/// @nodoc
abstract mixin class $ProviderInfoCopyWith<$Res>  {
  factory $ProviderInfoCopyWith(ProviderInfo value, $Res Function(ProviderInfo) _then) = _$ProviderInfoCopyWithImpl;
@useResult
$Res call({
 ProviderType type, bool available, bool userHasAccount
});




}
/// @nodoc
class _$ProviderInfoCopyWithImpl<$Res>
    implements $ProviderInfoCopyWith<$Res> {
  _$ProviderInfoCopyWithImpl(this._self, this._then);

  final ProviderInfo _self;
  final $Res Function(ProviderInfo) _then;

/// Create a copy of ProviderInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? available = null,Object? userHasAccount = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProviderType,available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,userHasAccount: null == userHasAccount ? _self.userHasAccount : userHasAccount // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProviderInfo].
extension ProviderInfoPatterns on ProviderInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProviderInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProviderInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProviderInfo value)  $default,){
final _that = this;
switch (_that) {
case _ProviderInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProviderInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ProviderInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProviderType type,  bool available,  bool userHasAccount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProviderInfo() when $default != null:
return $default(_that.type,_that.available,_that.userHasAccount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProviderType type,  bool available,  bool userHasAccount)  $default,) {final _that = this;
switch (_that) {
case _ProviderInfo():
return $default(_that.type,_that.available,_that.userHasAccount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProviderType type,  bool available,  bool userHasAccount)?  $default,) {final _that = this;
switch (_that) {
case _ProviderInfo() when $default != null:
return $default(_that.type,_that.available,_that.userHasAccount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProviderInfo implements ProviderInfo {
  const _ProviderInfo({required this.type, required this.available, required this.userHasAccount});
  factory _ProviderInfo.fromJson(Map<String, dynamic> json) => _$ProviderInfoFromJson(json);

@override final  ProviderType type;
@override final  bool available;
@override final  bool userHasAccount;

/// Create a copy of ProviderInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProviderInfoCopyWith<_ProviderInfo> get copyWith => __$ProviderInfoCopyWithImpl<_ProviderInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProviderInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProviderInfo&&(identical(other.type, type) || other.type == type)&&(identical(other.available, available) || other.available == available)&&(identical(other.userHasAccount, userHasAccount) || other.userHasAccount == userHasAccount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,available,userHasAccount);

@override
String toString() {
  return 'ProviderInfo(type: $type, available: $available, userHasAccount: $userHasAccount)';
}


}

/// @nodoc
abstract mixin class _$ProviderInfoCopyWith<$Res> implements $ProviderInfoCopyWith<$Res> {
  factory _$ProviderInfoCopyWith(_ProviderInfo value, $Res Function(_ProviderInfo) _then) = __$ProviderInfoCopyWithImpl;
@override @useResult
$Res call({
 ProviderType type, bool available, bool userHasAccount
});




}
/// @nodoc
class __$ProviderInfoCopyWithImpl<$Res>
    implements _$ProviderInfoCopyWith<$Res> {
  __$ProviderInfoCopyWithImpl(this._self, this._then);

  final _ProviderInfo _self;
  final $Res Function(_ProviderInfo) _then;

/// Create a copy of ProviderInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? available = null,Object? userHasAccount = null,}) {
  return _then(_ProviderInfo(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProviderType,available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,userHasAccount: null == userHasAccount ? _self.userHasAccount : userHasAccount // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$AvailableProviders {

 List<ProviderInfo> get providers;
/// Create a copy of AvailableProviders
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvailableProvidersCopyWith<AvailableProviders> get copyWith => _$AvailableProvidersCopyWithImpl<AvailableProviders>(this as AvailableProviders, _$identity);

  /// Serializes this AvailableProviders to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableProviders&&const DeepCollectionEquality().equals(other.providers, providers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(providers));

@override
String toString() {
  return 'AvailableProviders(providers: $providers)';
}


}

/// @nodoc
abstract mixin class $AvailableProvidersCopyWith<$Res>  {
  factory $AvailableProvidersCopyWith(AvailableProviders value, $Res Function(AvailableProviders) _then) = _$AvailableProvidersCopyWithImpl;
@useResult
$Res call({
 List<ProviderInfo> providers
});




}
/// @nodoc
class _$AvailableProvidersCopyWithImpl<$Res>
    implements $AvailableProvidersCopyWith<$Res> {
  _$AvailableProvidersCopyWithImpl(this._self, this._then);

  final AvailableProviders _self;
  final $Res Function(AvailableProviders) _then;

/// Create a copy of AvailableProviders
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? providers = null,}) {
  return _then(_self.copyWith(
providers: null == providers ? _self.providers : providers // ignore: cast_nullable_to_non_nullable
as List<ProviderInfo>,
  ));
}

}


/// Adds pattern-matching-related methods to [AvailableProviders].
extension AvailableProvidersPatterns on AvailableProviders {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AvailableProviders value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AvailableProviders() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AvailableProviders value)  $default,){
final _that = this;
switch (_that) {
case _AvailableProviders():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AvailableProviders value)?  $default,){
final _that = this;
switch (_that) {
case _AvailableProviders() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProviderInfo> providers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AvailableProviders() when $default != null:
return $default(_that.providers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProviderInfo> providers)  $default,) {final _that = this;
switch (_that) {
case _AvailableProviders():
return $default(_that.providers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProviderInfo> providers)?  $default,) {final _that = this;
switch (_that) {
case _AvailableProviders() when $default != null:
return $default(_that.providers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AvailableProviders implements AvailableProviders {
  const _AvailableProviders({final  List<ProviderInfo> providers = const []}): _providers = providers;
  factory _AvailableProviders.fromJson(Map<String, dynamic> json) => _$AvailableProvidersFromJson(json);

 final  List<ProviderInfo> _providers;
@override@JsonKey() List<ProviderInfo> get providers {
  if (_providers is EqualUnmodifiableListView) return _providers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_providers);
}


/// Create a copy of AvailableProviders
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvailableProvidersCopyWith<_AvailableProviders> get copyWith => __$AvailableProvidersCopyWithImpl<_AvailableProviders>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AvailableProvidersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvailableProviders&&const DeepCollectionEquality().equals(other._providers, _providers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_providers));

@override
String toString() {
  return 'AvailableProviders(providers: $providers)';
}


}

/// @nodoc
abstract mixin class _$AvailableProvidersCopyWith<$Res> implements $AvailableProvidersCopyWith<$Res> {
  factory _$AvailableProvidersCopyWith(_AvailableProviders value, $Res Function(_AvailableProviders) _then) = __$AvailableProvidersCopyWithImpl;
@override @useResult
$Res call({
 List<ProviderInfo> providers
});




}
/// @nodoc
class __$AvailableProvidersCopyWithImpl<$Res>
    implements _$AvailableProvidersCopyWith<$Res> {
  __$AvailableProvidersCopyWithImpl(this._self, this._then);

  final _AvailableProviders _self;
  final $Res Function(_AvailableProviders) _then;

/// Create a copy of AvailableProviders
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? providers = null,}) {
  return _then(_AvailableProviders(
providers: null == providers ? _self._providers : providers // ignore: cast_nullable_to_non_nullable
as List<ProviderInfo>,
  ));
}


}


/// @nodoc
mixin _$WellnessOptionDetails {

 String get address; String get distance; String get time; int get durationMinutes; String get price; double? get rating; int? get spotsAvailable; List<String> get amenities; bool? get weatherDependent; String? get weatherForecast; String? get suggestedRoute;
/// Create a copy of WellnessOptionDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WellnessOptionDetailsCopyWith<WellnessOptionDetails> get copyWith => _$WellnessOptionDetailsCopyWithImpl<WellnessOptionDetails>(this as WellnessOptionDetails, _$identity);

  /// Serializes this WellnessOptionDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WellnessOptionDetails&&(identical(other.address, address) || other.address == address)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.time, time) || other.time == time)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.price, price) || other.price == price)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.spotsAvailable, spotsAvailable) || other.spotsAvailable == spotsAvailable)&&const DeepCollectionEquality().equals(other.amenities, amenities)&&(identical(other.weatherDependent, weatherDependent) || other.weatherDependent == weatherDependent)&&(identical(other.weatherForecast, weatherForecast) || other.weatherForecast == weatherForecast)&&(identical(other.suggestedRoute, suggestedRoute) || other.suggestedRoute == suggestedRoute));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,distance,time,durationMinutes,price,rating,spotsAvailable,const DeepCollectionEquality().hash(amenities),weatherDependent,weatherForecast,suggestedRoute);

@override
String toString() {
  return 'WellnessOptionDetails(address: $address, distance: $distance, time: $time, durationMinutes: $durationMinutes, price: $price, rating: $rating, spotsAvailable: $spotsAvailable, amenities: $amenities, weatherDependent: $weatherDependent, weatherForecast: $weatherForecast, suggestedRoute: $suggestedRoute)';
}


}

/// @nodoc
abstract mixin class $WellnessOptionDetailsCopyWith<$Res>  {
  factory $WellnessOptionDetailsCopyWith(WellnessOptionDetails value, $Res Function(WellnessOptionDetails) _then) = _$WellnessOptionDetailsCopyWithImpl;
@useResult
$Res call({
 String address, String distance, String time, int durationMinutes, String price, double? rating, int? spotsAvailable, List<String> amenities, bool? weatherDependent, String? weatherForecast, String? suggestedRoute
});




}
/// @nodoc
class _$WellnessOptionDetailsCopyWithImpl<$Res>
    implements $WellnessOptionDetailsCopyWith<$Res> {
  _$WellnessOptionDetailsCopyWithImpl(this._self, this._then);

  final WellnessOptionDetails _self;
  final $Res Function(WellnessOptionDetails) _then;

/// Create a copy of WellnessOptionDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? distance = null,Object? time = null,Object? durationMinutes = null,Object? price = null,Object? rating = freezed,Object? spotsAvailable = freezed,Object? amenities = null,Object? weatherDependent = freezed,Object? weatherForecast = freezed,Object? suggestedRoute = freezed,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,spotsAvailable: freezed == spotsAvailable ? _self.spotsAvailable : spotsAvailable // ignore: cast_nullable_to_non_nullable
as int?,amenities: null == amenities ? _self.amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<String>,weatherDependent: freezed == weatherDependent ? _self.weatherDependent : weatherDependent // ignore: cast_nullable_to_non_nullable
as bool?,weatherForecast: freezed == weatherForecast ? _self.weatherForecast : weatherForecast // ignore: cast_nullable_to_non_nullable
as String?,suggestedRoute: freezed == suggestedRoute ? _self.suggestedRoute : suggestedRoute // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WellnessOptionDetails].
extension WellnessOptionDetailsPatterns on WellnessOptionDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WellnessOptionDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WellnessOptionDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WellnessOptionDetails value)  $default,){
final _that = this;
switch (_that) {
case _WellnessOptionDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WellnessOptionDetails value)?  $default,){
final _that = this;
switch (_that) {
case _WellnessOptionDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String address,  String distance,  String time,  int durationMinutes,  String price,  double? rating,  int? spotsAvailable,  List<String> amenities,  bool? weatherDependent,  String? weatherForecast,  String? suggestedRoute)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WellnessOptionDetails() when $default != null:
return $default(_that.address,_that.distance,_that.time,_that.durationMinutes,_that.price,_that.rating,_that.spotsAvailable,_that.amenities,_that.weatherDependent,_that.weatherForecast,_that.suggestedRoute);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String address,  String distance,  String time,  int durationMinutes,  String price,  double? rating,  int? spotsAvailable,  List<String> amenities,  bool? weatherDependent,  String? weatherForecast,  String? suggestedRoute)  $default,) {final _that = this;
switch (_that) {
case _WellnessOptionDetails():
return $default(_that.address,_that.distance,_that.time,_that.durationMinutes,_that.price,_that.rating,_that.spotsAvailable,_that.amenities,_that.weatherDependent,_that.weatherForecast,_that.suggestedRoute);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String address,  String distance,  String time,  int durationMinutes,  String price,  double? rating,  int? spotsAvailable,  List<String> amenities,  bool? weatherDependent,  String? weatherForecast,  String? suggestedRoute)?  $default,) {final _that = this;
switch (_that) {
case _WellnessOptionDetails() when $default != null:
return $default(_that.address,_that.distance,_that.time,_that.durationMinutes,_that.price,_that.rating,_that.spotsAvailable,_that.amenities,_that.weatherDependent,_that.weatherForecast,_that.suggestedRoute);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WellnessOptionDetails implements WellnessOptionDetails {
  const _WellnessOptionDetails({required this.address, required this.distance, required this.time, required this.durationMinutes, required this.price, this.rating, this.spotsAvailable, final  List<String> amenities = const [], this.weatherDependent, this.weatherForecast, this.suggestedRoute}): _amenities = amenities;
  factory _WellnessOptionDetails.fromJson(Map<String, dynamic> json) => _$WellnessOptionDetailsFromJson(json);

@override final  String address;
@override final  String distance;
@override final  String time;
@override final  int durationMinutes;
@override final  String price;
@override final  double? rating;
@override final  int? spotsAvailable;
 final  List<String> _amenities;
@override@JsonKey() List<String> get amenities {
  if (_amenities is EqualUnmodifiableListView) return _amenities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_amenities);
}

@override final  bool? weatherDependent;
@override final  String? weatherForecast;
@override final  String? suggestedRoute;

/// Create a copy of WellnessOptionDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WellnessOptionDetailsCopyWith<_WellnessOptionDetails> get copyWith => __$WellnessOptionDetailsCopyWithImpl<_WellnessOptionDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WellnessOptionDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WellnessOptionDetails&&(identical(other.address, address) || other.address == address)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.time, time) || other.time == time)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.price, price) || other.price == price)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.spotsAvailable, spotsAvailable) || other.spotsAvailable == spotsAvailable)&&const DeepCollectionEquality().equals(other._amenities, _amenities)&&(identical(other.weatherDependent, weatherDependent) || other.weatherDependent == weatherDependent)&&(identical(other.weatherForecast, weatherForecast) || other.weatherForecast == weatherForecast)&&(identical(other.suggestedRoute, suggestedRoute) || other.suggestedRoute == suggestedRoute));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,distance,time,durationMinutes,price,rating,spotsAvailable,const DeepCollectionEquality().hash(_amenities),weatherDependent,weatherForecast,suggestedRoute);

@override
String toString() {
  return 'WellnessOptionDetails(address: $address, distance: $distance, time: $time, durationMinutes: $durationMinutes, price: $price, rating: $rating, spotsAvailable: $spotsAvailable, amenities: $amenities, weatherDependent: $weatherDependent, weatherForecast: $weatherForecast, suggestedRoute: $suggestedRoute)';
}


}

/// @nodoc
abstract mixin class _$WellnessOptionDetailsCopyWith<$Res> implements $WellnessOptionDetailsCopyWith<$Res> {
  factory _$WellnessOptionDetailsCopyWith(_WellnessOptionDetails value, $Res Function(_WellnessOptionDetails) _then) = __$WellnessOptionDetailsCopyWithImpl;
@override @useResult
$Res call({
 String address, String distance, String time, int durationMinutes, String price, double? rating, int? spotsAvailable, List<String> amenities, bool? weatherDependent, String? weatherForecast, String? suggestedRoute
});




}
/// @nodoc
class __$WellnessOptionDetailsCopyWithImpl<$Res>
    implements _$WellnessOptionDetailsCopyWith<$Res> {
  __$WellnessOptionDetailsCopyWithImpl(this._self, this._then);

  final _WellnessOptionDetails _self;
  final $Res Function(_WellnessOptionDetails) _then;

/// Create a copy of WellnessOptionDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? distance = null,Object? time = null,Object? durationMinutes = null,Object? price = null,Object? rating = freezed,Object? spotsAvailable = freezed,Object? amenities = null,Object? weatherDependent = freezed,Object? weatherForecast = freezed,Object? suggestedRoute = freezed,}) {
  return _then(_WellnessOptionDetails(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,spotsAvailable: freezed == spotsAvailable ? _self.spotsAvailable : spotsAvailable // ignore: cast_nullable_to_non_nullable
as int?,amenities: null == amenities ? _self._amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<String>,weatherDependent: freezed == weatherDependent ? _self.weatherDependent : weatherDependent // ignore: cast_nullable_to_non_nullable
as bool?,weatherForecast: freezed == weatherForecast ? _self.weatherForecast : weatherForecast // ignore: cast_nullable_to_non_nullable
as String?,suggestedRoute: freezed == suggestedRoute ? _self.suggestedRoute : suggestedRoute // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BookingInfo {

 bool get canBookNow; String get requiresAction; String? get cancellationPolicy; String? get note;
/// Create a copy of BookingInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingInfoCopyWith<BookingInfo> get copyWith => _$BookingInfoCopyWithImpl<BookingInfo>(this as BookingInfo, _$identity);

  /// Serializes this BookingInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingInfo&&(identical(other.canBookNow, canBookNow) || other.canBookNow == canBookNow)&&(identical(other.requiresAction, requiresAction) || other.requiresAction == requiresAction)&&(identical(other.cancellationPolicy, cancellationPolicy) || other.cancellationPolicy == cancellationPolicy)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,canBookNow,requiresAction,cancellationPolicy,note);

@override
String toString() {
  return 'BookingInfo(canBookNow: $canBookNow, requiresAction: $requiresAction, cancellationPolicy: $cancellationPolicy, note: $note)';
}


}

/// @nodoc
abstract mixin class $BookingInfoCopyWith<$Res>  {
  factory $BookingInfoCopyWith(BookingInfo value, $Res Function(BookingInfo) _then) = _$BookingInfoCopyWithImpl;
@useResult
$Res call({
 bool canBookNow, String requiresAction, String? cancellationPolicy, String? note
});




}
/// @nodoc
class _$BookingInfoCopyWithImpl<$Res>
    implements $BookingInfoCopyWith<$Res> {
  _$BookingInfoCopyWithImpl(this._self, this._then);

  final BookingInfo _self;
  final $Res Function(BookingInfo) _then;

/// Create a copy of BookingInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? canBookNow = null,Object? requiresAction = null,Object? cancellationPolicy = freezed,Object? note = freezed,}) {
  return _then(_self.copyWith(
canBookNow: null == canBookNow ? _self.canBookNow : canBookNow // ignore: cast_nullable_to_non_nullable
as bool,requiresAction: null == requiresAction ? _self.requiresAction : requiresAction // ignore: cast_nullable_to_non_nullable
as String,cancellationPolicy: freezed == cancellationPolicy ? _self.cancellationPolicy : cancellationPolicy // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingInfo].
extension BookingInfoPatterns on BookingInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingInfo value)  $default,){
final _that = this;
switch (_that) {
case _BookingInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingInfo value)?  $default,){
final _that = this;
switch (_that) {
case _BookingInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool canBookNow,  String requiresAction,  String? cancellationPolicy,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingInfo() when $default != null:
return $default(_that.canBookNow,_that.requiresAction,_that.cancellationPolicy,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool canBookNow,  String requiresAction,  String? cancellationPolicy,  String? note)  $default,) {final _that = this;
switch (_that) {
case _BookingInfo():
return $default(_that.canBookNow,_that.requiresAction,_that.cancellationPolicy,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool canBookNow,  String requiresAction,  String? cancellationPolicy,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _BookingInfo() when $default != null:
return $default(_that.canBookNow,_that.requiresAction,_that.cancellationPolicy,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingInfo implements BookingInfo {
  const _BookingInfo({required this.canBookNow, required this.requiresAction, this.cancellationPolicy, this.note});
  factory _BookingInfo.fromJson(Map<String, dynamic> json) => _$BookingInfoFromJson(json);

@override final  bool canBookNow;
@override final  String requiresAction;
@override final  String? cancellationPolicy;
@override final  String? note;

/// Create a copy of BookingInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingInfoCopyWith<_BookingInfo> get copyWith => __$BookingInfoCopyWithImpl<_BookingInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingInfo&&(identical(other.canBookNow, canBookNow) || other.canBookNow == canBookNow)&&(identical(other.requiresAction, requiresAction) || other.requiresAction == requiresAction)&&(identical(other.cancellationPolicy, cancellationPolicy) || other.cancellationPolicy == cancellationPolicy)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,canBookNow,requiresAction,cancellationPolicy,note);

@override
String toString() {
  return 'BookingInfo(canBookNow: $canBookNow, requiresAction: $requiresAction, cancellationPolicy: $cancellationPolicy, note: $note)';
}


}

/// @nodoc
abstract mixin class _$BookingInfoCopyWith<$Res> implements $BookingInfoCopyWith<$Res> {
  factory _$BookingInfoCopyWith(_BookingInfo value, $Res Function(_BookingInfo) _then) = __$BookingInfoCopyWithImpl;
@override @useResult
$Res call({
 bool canBookNow, String requiresAction, String? cancellationPolicy, String? note
});




}
/// @nodoc
class __$BookingInfoCopyWithImpl<$Res>
    implements _$BookingInfoCopyWith<$Res> {
  __$BookingInfoCopyWithImpl(this._self, this._then);

  final _BookingInfo _self;
  final $Res Function(_BookingInfo) _then;

/// Create a copy of BookingInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? canBookNow = null,Object? requiresAction = null,Object? cancellationPolicy = freezed,Object? note = freezed,}) {
  return _then(_BookingInfo(
canBookNow: null == canBookNow ? _self.canBookNow : canBookNow // ignore: cast_nullable_to_non_nullable
as bool,requiresAction: null == requiresAction ? _self.requiresAction : requiresAction // ignore: cast_nullable_to_non_nullable
as String,cancellationPolicy: freezed == cancellationPolicy ? _self.cancellationPolicy : cancellationPolicy // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WhyRecommended {

 String get primary; String? get secondary; String? get convenience; String? get caveat;
/// Create a copy of WhyRecommended
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WhyRecommendedCopyWith<WhyRecommended> get copyWith => _$WhyRecommendedCopyWithImpl<WhyRecommended>(this as WhyRecommended, _$identity);

  /// Serializes this WhyRecommended to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WhyRecommended&&(identical(other.primary, primary) || other.primary == primary)&&(identical(other.secondary, secondary) || other.secondary == secondary)&&(identical(other.convenience, convenience) || other.convenience == convenience)&&(identical(other.caveat, caveat) || other.caveat == caveat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,primary,secondary,convenience,caveat);

@override
String toString() {
  return 'WhyRecommended(primary: $primary, secondary: $secondary, convenience: $convenience, caveat: $caveat)';
}


}

/// @nodoc
abstract mixin class $WhyRecommendedCopyWith<$Res>  {
  factory $WhyRecommendedCopyWith(WhyRecommended value, $Res Function(WhyRecommended) _then) = _$WhyRecommendedCopyWithImpl;
@useResult
$Res call({
 String primary, String? secondary, String? convenience, String? caveat
});




}
/// @nodoc
class _$WhyRecommendedCopyWithImpl<$Res>
    implements $WhyRecommendedCopyWith<$Res> {
  _$WhyRecommendedCopyWithImpl(this._self, this._then);

  final WhyRecommended _self;
  final $Res Function(WhyRecommended) _then;

/// Create a copy of WhyRecommended
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? primary = null,Object? secondary = freezed,Object? convenience = freezed,Object? caveat = freezed,}) {
  return _then(_self.copyWith(
primary: null == primary ? _self.primary : primary // ignore: cast_nullable_to_non_nullable
as String,secondary: freezed == secondary ? _self.secondary : secondary // ignore: cast_nullable_to_non_nullable
as String?,convenience: freezed == convenience ? _self.convenience : convenience // ignore: cast_nullable_to_non_nullable
as String?,caveat: freezed == caveat ? _self.caveat : caveat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WhyRecommended].
extension WhyRecommendedPatterns on WhyRecommended {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WhyRecommended value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WhyRecommended() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WhyRecommended value)  $default,){
final _that = this;
switch (_that) {
case _WhyRecommended():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WhyRecommended value)?  $default,){
final _that = this;
switch (_that) {
case _WhyRecommended() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String primary,  String? secondary,  String? convenience,  String? caveat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WhyRecommended() when $default != null:
return $default(_that.primary,_that.secondary,_that.convenience,_that.caveat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String primary,  String? secondary,  String? convenience,  String? caveat)  $default,) {final _that = this;
switch (_that) {
case _WhyRecommended():
return $default(_that.primary,_that.secondary,_that.convenience,_that.caveat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String primary,  String? secondary,  String? convenience,  String? caveat)?  $default,) {final _that = this;
switch (_that) {
case _WhyRecommended() when $default != null:
return $default(_that.primary,_that.secondary,_that.convenience,_that.caveat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WhyRecommended implements WhyRecommended {
  const _WhyRecommended({required this.primary, this.secondary, this.convenience, this.caveat});
  factory _WhyRecommended.fromJson(Map<String, dynamic> json) => _$WhyRecommendedFromJson(json);

@override final  String primary;
@override final  String? secondary;
@override final  String? convenience;
@override final  String? caveat;

/// Create a copy of WhyRecommended
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WhyRecommendedCopyWith<_WhyRecommended> get copyWith => __$WhyRecommendedCopyWithImpl<_WhyRecommended>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WhyRecommendedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WhyRecommended&&(identical(other.primary, primary) || other.primary == primary)&&(identical(other.secondary, secondary) || other.secondary == secondary)&&(identical(other.convenience, convenience) || other.convenience == convenience)&&(identical(other.caveat, caveat) || other.caveat == caveat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,primary,secondary,convenience,caveat);

@override
String toString() {
  return 'WhyRecommended(primary: $primary, secondary: $secondary, convenience: $convenience, caveat: $caveat)';
}


}

/// @nodoc
abstract mixin class _$WhyRecommendedCopyWith<$Res> implements $WhyRecommendedCopyWith<$Res> {
  factory _$WhyRecommendedCopyWith(_WhyRecommended value, $Res Function(_WhyRecommended) _then) = __$WhyRecommendedCopyWithImpl;
@override @useResult
$Res call({
 String primary, String? secondary, String? convenience, String? caveat
});




}
/// @nodoc
class __$WhyRecommendedCopyWithImpl<$Res>
    implements _$WhyRecommendedCopyWith<$Res> {
  __$WhyRecommendedCopyWithImpl(this._self, this._then);

  final _WhyRecommended _self;
  final $Res Function(_WhyRecommended) _then;

/// Create a copy of WhyRecommended
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? primary = null,Object? secondary = freezed,Object? convenience = freezed,Object? caveat = freezed,}) {
  return _then(_WhyRecommended(
primary: null == primary ? _self.primary : primary // ignore: cast_nullable_to_non_nullable
as String,secondary: freezed == secondary ? _self.secondary : secondary // ignore: cast_nullable_to_non_nullable
as String?,convenience: freezed == convenience ? _self.convenience : convenience // ignore: cast_nullable_to_non_nullable
as String?,caveat: freezed == caveat ? _self.caveat : caveat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ScoreBreakdown {

 double get preferenceMatch; double get contextualFit; double get historicalEffectiveness; double get convenience; double get availability;
/// Create a copy of ScoreBreakdown
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScoreBreakdownCopyWith<ScoreBreakdown> get copyWith => _$ScoreBreakdownCopyWithImpl<ScoreBreakdown>(this as ScoreBreakdown, _$identity);

  /// Serializes this ScoreBreakdown to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScoreBreakdown&&(identical(other.preferenceMatch, preferenceMatch) || other.preferenceMatch == preferenceMatch)&&(identical(other.contextualFit, contextualFit) || other.contextualFit == contextualFit)&&(identical(other.historicalEffectiveness, historicalEffectiveness) || other.historicalEffectiveness == historicalEffectiveness)&&(identical(other.convenience, convenience) || other.convenience == convenience)&&(identical(other.availability, availability) || other.availability == availability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,preferenceMatch,contextualFit,historicalEffectiveness,convenience,availability);

@override
String toString() {
  return 'ScoreBreakdown(preferenceMatch: $preferenceMatch, contextualFit: $contextualFit, historicalEffectiveness: $historicalEffectiveness, convenience: $convenience, availability: $availability)';
}


}

/// @nodoc
abstract mixin class $ScoreBreakdownCopyWith<$Res>  {
  factory $ScoreBreakdownCopyWith(ScoreBreakdown value, $Res Function(ScoreBreakdown) _then) = _$ScoreBreakdownCopyWithImpl;
@useResult
$Res call({
 double preferenceMatch, double contextualFit, double historicalEffectiveness, double convenience, double availability
});




}
/// @nodoc
class _$ScoreBreakdownCopyWithImpl<$Res>
    implements $ScoreBreakdownCopyWith<$Res> {
  _$ScoreBreakdownCopyWithImpl(this._self, this._then);

  final ScoreBreakdown _self;
  final $Res Function(ScoreBreakdown) _then;

/// Create a copy of ScoreBreakdown
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? preferenceMatch = null,Object? contextualFit = null,Object? historicalEffectiveness = null,Object? convenience = null,Object? availability = null,}) {
  return _then(_self.copyWith(
preferenceMatch: null == preferenceMatch ? _self.preferenceMatch : preferenceMatch // ignore: cast_nullable_to_non_nullable
as double,contextualFit: null == contextualFit ? _self.contextualFit : contextualFit // ignore: cast_nullable_to_non_nullable
as double,historicalEffectiveness: null == historicalEffectiveness ? _self.historicalEffectiveness : historicalEffectiveness // ignore: cast_nullable_to_non_nullable
as double,convenience: null == convenience ? _self.convenience : convenience // ignore: cast_nullable_to_non_nullable
as double,availability: null == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ScoreBreakdown].
extension ScoreBreakdownPatterns on ScoreBreakdown {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScoreBreakdown value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScoreBreakdown() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScoreBreakdown value)  $default,){
final _that = this;
switch (_that) {
case _ScoreBreakdown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScoreBreakdown value)?  $default,){
final _that = this;
switch (_that) {
case _ScoreBreakdown() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double preferenceMatch,  double contextualFit,  double historicalEffectiveness,  double convenience,  double availability)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScoreBreakdown() when $default != null:
return $default(_that.preferenceMatch,_that.contextualFit,_that.historicalEffectiveness,_that.convenience,_that.availability);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double preferenceMatch,  double contextualFit,  double historicalEffectiveness,  double convenience,  double availability)  $default,) {final _that = this;
switch (_that) {
case _ScoreBreakdown():
return $default(_that.preferenceMatch,_that.contextualFit,_that.historicalEffectiveness,_that.convenience,_that.availability);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double preferenceMatch,  double contextualFit,  double historicalEffectiveness,  double convenience,  double availability)?  $default,) {final _that = this;
switch (_that) {
case _ScoreBreakdown() when $default != null:
return $default(_that.preferenceMatch,_that.contextualFit,_that.historicalEffectiveness,_that.convenience,_that.availability);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScoreBreakdown implements ScoreBreakdown {
  const _ScoreBreakdown({required this.preferenceMatch, required this.contextualFit, required this.historicalEffectiveness, required this.convenience, required this.availability});
  factory _ScoreBreakdown.fromJson(Map<String, dynamic> json) => _$ScoreBreakdownFromJson(json);

@override final  double preferenceMatch;
@override final  double contextualFit;
@override final  double historicalEffectiveness;
@override final  double convenience;
@override final  double availability;

/// Create a copy of ScoreBreakdown
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScoreBreakdownCopyWith<_ScoreBreakdown> get copyWith => __$ScoreBreakdownCopyWithImpl<_ScoreBreakdown>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScoreBreakdownToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScoreBreakdown&&(identical(other.preferenceMatch, preferenceMatch) || other.preferenceMatch == preferenceMatch)&&(identical(other.contextualFit, contextualFit) || other.contextualFit == contextualFit)&&(identical(other.historicalEffectiveness, historicalEffectiveness) || other.historicalEffectiveness == historicalEffectiveness)&&(identical(other.convenience, convenience) || other.convenience == convenience)&&(identical(other.availability, availability) || other.availability == availability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,preferenceMatch,contextualFit,historicalEffectiveness,convenience,availability);

@override
String toString() {
  return 'ScoreBreakdown(preferenceMatch: $preferenceMatch, contextualFit: $contextualFit, historicalEffectiveness: $historicalEffectiveness, convenience: $convenience, availability: $availability)';
}


}

/// @nodoc
abstract mixin class _$ScoreBreakdownCopyWith<$Res> implements $ScoreBreakdownCopyWith<$Res> {
  factory _$ScoreBreakdownCopyWith(_ScoreBreakdown value, $Res Function(_ScoreBreakdown) _then) = __$ScoreBreakdownCopyWithImpl;
@override @useResult
$Res call({
 double preferenceMatch, double contextualFit, double historicalEffectiveness, double convenience, double availability
});




}
/// @nodoc
class __$ScoreBreakdownCopyWithImpl<$Res>
    implements _$ScoreBreakdownCopyWith<$Res> {
  __$ScoreBreakdownCopyWithImpl(this._self, this._then);

  final _ScoreBreakdown _self;
  final $Res Function(_ScoreBreakdown) _then;

/// Create a copy of ScoreBreakdown
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? preferenceMatch = null,Object? contextualFit = null,Object? historicalEffectiveness = null,Object? convenience = null,Object? availability = null,}) {
  return _then(_ScoreBreakdown(
preferenceMatch: null == preferenceMatch ? _self.preferenceMatch : preferenceMatch // ignore: cast_nullable_to_non_nullable
as double,contextualFit: null == contextualFit ? _self.contextualFit : contextualFit // ignore: cast_nullable_to_non_nullable
as double,historicalEffectiveness: null == historicalEffectiveness ? _self.historicalEffectiveness : historicalEffectiveness // ignore: cast_nullable_to_non_nullable
as double,convenience: null == convenience ? _self.convenience : convenience // ignore: cast_nullable_to_non_nullable
as double,availability: null == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$WellnessOption {

 int get rank; double get score; String get type; String get name; ProviderType get provider; WellnessOptionDetails get details; WhyRecommended get whyThisOption; BookingInfo get bookingInfo; ScoreBreakdown get scoreBreakdown;
/// Create a copy of WellnessOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WellnessOptionCopyWith<WellnessOption> get copyWith => _$WellnessOptionCopyWithImpl<WellnessOption>(this as WellnessOption, _$identity);

  /// Serializes this WellnessOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WellnessOption&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.score, score) || other.score == score)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.details, details) || other.details == details)&&(identical(other.whyThisOption, whyThisOption) || other.whyThisOption == whyThisOption)&&(identical(other.bookingInfo, bookingInfo) || other.bookingInfo == bookingInfo)&&(identical(other.scoreBreakdown, scoreBreakdown) || other.scoreBreakdown == scoreBreakdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rank,score,type,name,provider,details,whyThisOption,bookingInfo,scoreBreakdown);

@override
String toString() {
  return 'WellnessOption(rank: $rank, score: $score, type: $type, name: $name, provider: $provider, details: $details, whyThisOption: $whyThisOption, bookingInfo: $bookingInfo, scoreBreakdown: $scoreBreakdown)';
}


}

/// @nodoc
abstract mixin class $WellnessOptionCopyWith<$Res>  {
  factory $WellnessOptionCopyWith(WellnessOption value, $Res Function(WellnessOption) _then) = _$WellnessOptionCopyWithImpl;
@useResult
$Res call({
 int rank, double score, String type, String name, ProviderType provider, WellnessOptionDetails details, WhyRecommended whyThisOption, BookingInfo bookingInfo, ScoreBreakdown scoreBreakdown
});


$WellnessOptionDetailsCopyWith<$Res> get details;$WhyRecommendedCopyWith<$Res> get whyThisOption;$BookingInfoCopyWith<$Res> get bookingInfo;$ScoreBreakdownCopyWith<$Res> get scoreBreakdown;

}
/// @nodoc
class _$WellnessOptionCopyWithImpl<$Res>
    implements $WellnessOptionCopyWith<$Res> {
  _$WellnessOptionCopyWithImpl(this._self, this._then);

  final WellnessOption _self;
  final $Res Function(WellnessOption) _then;

/// Create a copy of WellnessOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rank = null,Object? score = null,Object? type = null,Object? name = null,Object? provider = null,Object? details = null,Object? whyThisOption = null,Object? bookingInfo = null,Object? scoreBreakdown = null,}) {
  return _then(_self.copyWith(
rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as ProviderType,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as WellnessOptionDetails,whyThisOption: null == whyThisOption ? _self.whyThisOption : whyThisOption // ignore: cast_nullable_to_non_nullable
as WhyRecommended,bookingInfo: null == bookingInfo ? _self.bookingInfo : bookingInfo // ignore: cast_nullable_to_non_nullable
as BookingInfo,scoreBreakdown: null == scoreBreakdown ? _self.scoreBreakdown : scoreBreakdown // ignore: cast_nullable_to_non_nullable
as ScoreBreakdown,
  ));
}
/// Create a copy of WellnessOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WellnessOptionDetailsCopyWith<$Res> get details {
  
  return $WellnessOptionDetailsCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}/// Create a copy of WellnessOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WhyRecommendedCopyWith<$Res> get whyThisOption {
  
  return $WhyRecommendedCopyWith<$Res>(_self.whyThisOption, (value) {
    return _then(_self.copyWith(whyThisOption: value));
  });
}/// Create a copy of WellnessOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingInfoCopyWith<$Res> get bookingInfo {
  
  return $BookingInfoCopyWith<$Res>(_self.bookingInfo, (value) {
    return _then(_self.copyWith(bookingInfo: value));
  });
}/// Create a copy of WellnessOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScoreBreakdownCopyWith<$Res> get scoreBreakdown {
  
  return $ScoreBreakdownCopyWith<$Res>(_self.scoreBreakdown, (value) {
    return _then(_self.copyWith(scoreBreakdown: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int rank,  double score,  String type,  String name,  ProviderType provider,  WellnessOptionDetails details,  WhyRecommended whyThisOption,  BookingInfo bookingInfo,  ScoreBreakdown scoreBreakdown)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WellnessOption() when $default != null:
return $default(_that.rank,_that.score,_that.type,_that.name,_that.provider,_that.details,_that.whyThisOption,_that.bookingInfo,_that.scoreBreakdown);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int rank,  double score,  String type,  String name,  ProviderType provider,  WellnessOptionDetails details,  WhyRecommended whyThisOption,  BookingInfo bookingInfo,  ScoreBreakdown scoreBreakdown)  $default,) {final _that = this;
switch (_that) {
case _WellnessOption():
return $default(_that.rank,_that.score,_that.type,_that.name,_that.provider,_that.details,_that.whyThisOption,_that.bookingInfo,_that.scoreBreakdown);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int rank,  double score,  String type,  String name,  ProviderType provider,  WellnessOptionDetails details,  WhyRecommended whyThisOption,  BookingInfo bookingInfo,  ScoreBreakdown scoreBreakdown)?  $default,) {final _that = this;
switch (_that) {
case _WellnessOption() when $default != null:
return $default(_that.rank,_that.score,_that.type,_that.name,_that.provider,_that.details,_that.whyThisOption,_that.bookingInfo,_that.scoreBreakdown);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WellnessOption implements WellnessOption {
  const _WellnessOption({required this.rank, required this.score, required this.type, required this.name, required this.provider, required this.details, required this.whyThisOption, required this.bookingInfo, required this.scoreBreakdown});
  factory _WellnessOption.fromJson(Map<String, dynamic> json) => _$WellnessOptionFromJson(json);

@override final  int rank;
@override final  double score;
@override final  String type;
@override final  String name;
@override final  ProviderType provider;
@override final  WellnessOptionDetails details;
@override final  WhyRecommended whyThisOption;
@override final  BookingInfo bookingInfo;
@override final  ScoreBreakdown scoreBreakdown;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WellnessOption&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.score, score) || other.score == score)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.details, details) || other.details == details)&&(identical(other.whyThisOption, whyThisOption) || other.whyThisOption == whyThisOption)&&(identical(other.bookingInfo, bookingInfo) || other.bookingInfo == bookingInfo)&&(identical(other.scoreBreakdown, scoreBreakdown) || other.scoreBreakdown == scoreBreakdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rank,score,type,name,provider,details,whyThisOption,bookingInfo,scoreBreakdown);

@override
String toString() {
  return 'WellnessOption(rank: $rank, score: $score, type: $type, name: $name, provider: $provider, details: $details, whyThisOption: $whyThisOption, bookingInfo: $bookingInfo, scoreBreakdown: $scoreBreakdown)';
}


}

/// @nodoc
abstract mixin class _$WellnessOptionCopyWith<$Res> implements $WellnessOptionCopyWith<$Res> {
  factory _$WellnessOptionCopyWith(_WellnessOption value, $Res Function(_WellnessOption) _then) = __$WellnessOptionCopyWithImpl;
@override @useResult
$Res call({
 int rank, double score, String type, String name, ProviderType provider, WellnessOptionDetails details, WhyRecommended whyThisOption, BookingInfo bookingInfo, ScoreBreakdown scoreBreakdown
});


@override $WellnessOptionDetailsCopyWith<$Res> get details;@override $WhyRecommendedCopyWith<$Res> get whyThisOption;@override $BookingInfoCopyWith<$Res> get bookingInfo;@override $ScoreBreakdownCopyWith<$Res> get scoreBreakdown;

}
/// @nodoc
class __$WellnessOptionCopyWithImpl<$Res>
    implements _$WellnessOptionCopyWith<$Res> {
  __$WellnessOptionCopyWithImpl(this._self, this._then);

  final _WellnessOption _self;
  final $Res Function(_WellnessOption) _then;

/// Create a copy of WellnessOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rank = null,Object? score = null,Object? type = null,Object? name = null,Object? provider = null,Object? details = null,Object? whyThisOption = null,Object? bookingInfo = null,Object? scoreBreakdown = null,}) {
  return _then(_WellnessOption(
rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as ProviderType,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as WellnessOptionDetails,whyThisOption: null == whyThisOption ? _self.whyThisOption : whyThisOption // ignore: cast_nullable_to_non_nullable
as WhyRecommended,bookingInfo: null == bookingInfo ? _self.bookingInfo : bookingInfo // ignore: cast_nullable_to_non_nullable
as BookingInfo,scoreBreakdown: null == scoreBreakdown ? _self.scoreBreakdown : scoreBreakdown // ignore: cast_nullable_to_non_nullable
as ScoreBreakdown,
  ));
}

/// Create a copy of WellnessOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WellnessOptionDetailsCopyWith<$Res> get details {
  
  return $WellnessOptionDetailsCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}/// Create a copy of WellnessOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WhyRecommendedCopyWith<$Res> get whyThisOption {
  
  return $WhyRecommendedCopyWith<$Res>(_self.whyThisOption, (value) {
    return _then(_self.copyWith(whyThisOption: value));
  });
}/// Create a copy of WellnessOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingInfoCopyWith<$Res> get bookingInfo {
  
  return $BookingInfoCopyWith<$Res>(_self.bookingInfo, (value) {
    return _then(_self.copyWith(bookingInfo: value));
  });
}/// Create a copy of WellnessOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScoreBreakdownCopyWith<$Res> get scoreBreakdown {
  
  return $ScoreBreakdownCopyWith<$Res>(_self.scoreBreakdown, (value) {
    return _then(_self.copyWith(scoreBreakdown: value));
  });
}
}


/// @nodoc
mixin _$SearchContext {

 DateTime get date; String get window; String get location; ContextType get contextType; EnergyLevel get userEnergyEstimate; String? get weatherForecast;
/// Create a copy of SearchContext
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchContextCopyWith<SearchContext> get copyWith => _$SearchContextCopyWithImpl<SearchContext>(this as SearchContext, _$identity);

  /// Serializes this SearchContext to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchContext&&(identical(other.date, date) || other.date == date)&&(identical(other.window, window) || other.window == window)&&(identical(other.location, location) || other.location == location)&&(identical(other.contextType, contextType) || other.contextType == contextType)&&(identical(other.userEnergyEstimate, userEnergyEstimate) || other.userEnergyEstimate == userEnergyEstimate)&&(identical(other.weatherForecast, weatherForecast) || other.weatherForecast == weatherForecast));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,window,location,contextType,userEnergyEstimate,weatherForecast);

@override
String toString() {
  return 'SearchContext(date: $date, window: $window, location: $location, contextType: $contextType, userEnergyEstimate: $userEnergyEstimate, weatherForecast: $weatherForecast)';
}


}

/// @nodoc
abstract mixin class $SearchContextCopyWith<$Res>  {
  factory $SearchContextCopyWith(SearchContext value, $Res Function(SearchContext) _then) = _$SearchContextCopyWithImpl;
@useResult
$Res call({
 DateTime date, String window, String location, ContextType contextType, EnergyLevel userEnergyEstimate, String? weatherForecast
});




}
/// @nodoc
class _$SearchContextCopyWithImpl<$Res>
    implements $SearchContextCopyWith<$Res> {
  _$SearchContextCopyWithImpl(this._self, this._then);

  final SearchContext _self;
  final $Res Function(SearchContext) _then;

/// Create a copy of SearchContext
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? window = null,Object? location = null,Object? contextType = null,Object? userEnergyEstimate = null,Object? weatherForecast = freezed,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,window: null == window ? _self.window : window // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,contextType: null == contextType ? _self.contextType : contextType // ignore: cast_nullable_to_non_nullable
as ContextType,userEnergyEstimate: null == userEnergyEstimate ? _self.userEnergyEstimate : userEnergyEstimate // ignore: cast_nullable_to_non_nullable
as EnergyLevel,weatherForecast: freezed == weatherForecast ? _self.weatherForecast : weatherForecast // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchContext].
extension SearchContextPatterns on SearchContext {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchContext value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchContext() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchContext value)  $default,){
final _that = this;
switch (_that) {
case _SearchContext():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchContext value)?  $default,){
final _that = this;
switch (_that) {
case _SearchContext() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  String window,  String location,  ContextType contextType,  EnergyLevel userEnergyEstimate,  String? weatherForecast)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchContext() when $default != null:
return $default(_that.date,_that.window,_that.location,_that.contextType,_that.userEnergyEstimate,_that.weatherForecast);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  String window,  String location,  ContextType contextType,  EnergyLevel userEnergyEstimate,  String? weatherForecast)  $default,) {final _that = this;
switch (_that) {
case _SearchContext():
return $default(_that.date,_that.window,_that.location,_that.contextType,_that.userEnergyEstimate,_that.weatherForecast);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  String window,  String location,  ContextType contextType,  EnergyLevel userEnergyEstimate,  String? weatherForecast)?  $default,) {final _that = this;
switch (_that) {
case _SearchContext() when $default != null:
return $default(_that.date,_that.window,_that.location,_that.contextType,_that.userEnergyEstimate,_that.weatherForecast);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchContext implements SearchContext {
  const _SearchContext({required this.date, required this.window, required this.location, required this.contextType, required this.userEnergyEstimate, this.weatherForecast});
  factory _SearchContext.fromJson(Map<String, dynamic> json) => _$SearchContextFromJson(json);

@override final  DateTime date;
@override final  String window;
@override final  String location;
@override final  ContextType contextType;
@override final  EnergyLevel userEnergyEstimate;
@override final  String? weatherForecast;

/// Create a copy of SearchContext
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchContextCopyWith<_SearchContext> get copyWith => __$SearchContextCopyWithImpl<_SearchContext>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchContextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchContext&&(identical(other.date, date) || other.date == date)&&(identical(other.window, window) || other.window == window)&&(identical(other.location, location) || other.location == location)&&(identical(other.contextType, contextType) || other.contextType == contextType)&&(identical(other.userEnergyEstimate, userEnergyEstimate) || other.userEnergyEstimate == userEnergyEstimate)&&(identical(other.weatherForecast, weatherForecast) || other.weatherForecast == weatherForecast));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,window,location,contextType,userEnergyEstimate,weatherForecast);

@override
String toString() {
  return 'SearchContext(date: $date, window: $window, location: $location, contextType: $contextType, userEnergyEstimate: $userEnergyEstimate, weatherForecast: $weatherForecast)';
}


}

/// @nodoc
abstract mixin class _$SearchContextCopyWith<$Res> implements $SearchContextCopyWith<$Res> {
  factory _$SearchContextCopyWith(_SearchContext value, $Res Function(_SearchContext) _then) = __$SearchContextCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, String window, String location, ContextType contextType, EnergyLevel userEnergyEstimate, String? weatherForecast
});




}
/// @nodoc
class __$SearchContextCopyWithImpl<$Res>
    implements _$SearchContextCopyWith<$Res> {
  __$SearchContextCopyWithImpl(this._self, this._then);

  final _SearchContext _self;
  final $Res Function(_SearchContext) _then;

/// Create a copy of SearchContext
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? window = null,Object? location = null,Object? contextType = null,Object? userEnergyEstimate = null,Object? weatherForecast = freezed,}) {
  return _then(_SearchContext(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,window: null == window ? _self.window : window // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,contextType: null == contextType ? _self.contextType : contextType // ignore: cast_nullable_to_non_nullable
as ContextType,userEnergyEstimate: null == userEnergyEstimate ? _self.userEnergyEstimate : userEnergyEstimate // ignore: cast_nullable_to_non_nullable
as EnergyLevel,weatherForecast: freezed == weatherForecast ? _self.weatherForecast : weatherForecast // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Recommendation {

 String get topPick; String get reasoning; String? get alternativeIfPreferred;
/// Create a copy of Recommendation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecommendationCopyWith<Recommendation> get copyWith => _$RecommendationCopyWithImpl<Recommendation>(this as Recommendation, _$identity);

  /// Serializes this Recommendation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Recommendation&&(identical(other.topPick, topPick) || other.topPick == topPick)&&(identical(other.reasoning, reasoning) || other.reasoning == reasoning)&&(identical(other.alternativeIfPreferred, alternativeIfPreferred) || other.alternativeIfPreferred == alternativeIfPreferred));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,topPick,reasoning,alternativeIfPreferred);

@override
String toString() {
  return 'Recommendation(topPick: $topPick, reasoning: $reasoning, alternativeIfPreferred: $alternativeIfPreferred)';
}


}

/// @nodoc
abstract mixin class $RecommendationCopyWith<$Res>  {
  factory $RecommendationCopyWith(Recommendation value, $Res Function(Recommendation) _then) = _$RecommendationCopyWithImpl;
@useResult
$Res call({
 String topPick, String reasoning, String? alternativeIfPreferred
});




}
/// @nodoc
class _$RecommendationCopyWithImpl<$Res>
    implements $RecommendationCopyWith<$Res> {
  _$RecommendationCopyWithImpl(this._self, this._then);

  final Recommendation _self;
  final $Res Function(Recommendation) _then;

/// Create a copy of Recommendation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? topPick = null,Object? reasoning = null,Object? alternativeIfPreferred = freezed,}) {
  return _then(_self.copyWith(
topPick: null == topPick ? _self.topPick : topPick // ignore: cast_nullable_to_non_nullable
as String,reasoning: null == reasoning ? _self.reasoning : reasoning // ignore: cast_nullable_to_non_nullable
as String,alternativeIfPreferred: freezed == alternativeIfPreferred ? _self.alternativeIfPreferred : alternativeIfPreferred // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Recommendation].
extension RecommendationPatterns on Recommendation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Recommendation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Recommendation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Recommendation value)  $default,){
final _that = this;
switch (_that) {
case _Recommendation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Recommendation value)?  $default,){
final _that = this;
switch (_that) {
case _Recommendation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String topPick,  String reasoning,  String? alternativeIfPreferred)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Recommendation() when $default != null:
return $default(_that.topPick,_that.reasoning,_that.alternativeIfPreferred);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String topPick,  String reasoning,  String? alternativeIfPreferred)  $default,) {final _that = this;
switch (_that) {
case _Recommendation():
return $default(_that.topPick,_that.reasoning,_that.alternativeIfPreferred);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String topPick,  String reasoning,  String? alternativeIfPreferred)?  $default,) {final _that = this;
switch (_that) {
case _Recommendation() when $default != null:
return $default(_that.topPick,_that.reasoning,_that.alternativeIfPreferred);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Recommendation implements Recommendation {
  const _Recommendation({required this.topPick, required this.reasoning, this.alternativeIfPreferred});
  factory _Recommendation.fromJson(Map<String, dynamic> json) => _$RecommendationFromJson(json);

@override final  String topPick;
@override final  String reasoning;
@override final  String? alternativeIfPreferred;

/// Create a copy of Recommendation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecommendationCopyWith<_Recommendation> get copyWith => __$RecommendationCopyWithImpl<_Recommendation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecommendationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Recommendation&&(identical(other.topPick, topPick) || other.topPick == topPick)&&(identical(other.reasoning, reasoning) || other.reasoning == reasoning)&&(identical(other.alternativeIfPreferred, alternativeIfPreferred) || other.alternativeIfPreferred == alternativeIfPreferred));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,topPick,reasoning,alternativeIfPreferred);

@override
String toString() {
  return 'Recommendation(topPick: $topPick, reasoning: $reasoning, alternativeIfPreferred: $alternativeIfPreferred)';
}


}

/// @nodoc
abstract mixin class _$RecommendationCopyWith<$Res> implements $RecommendationCopyWith<$Res> {
  factory _$RecommendationCopyWith(_Recommendation value, $Res Function(_Recommendation) _then) = __$RecommendationCopyWithImpl;
@override @useResult
$Res call({
 String topPick, String reasoning, String? alternativeIfPreferred
});




}
/// @nodoc
class __$RecommendationCopyWithImpl<$Res>
    implements _$RecommendationCopyWith<$Res> {
  __$RecommendationCopyWithImpl(this._self, this._then);

  final _Recommendation _self;
  final $Res Function(_Recommendation) _then;

/// Create a copy of Recommendation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? topPick = null,Object? reasoning = null,Object? alternativeIfPreferred = freezed,}) {
  return _then(_Recommendation(
topPick: null == topPick ? _self.topPick : topPick // ignore: cast_nullable_to_non_nullable
as String,reasoning: null == reasoning ? _self.reasoning : reasoning // ignore: cast_nullable_to_non_nullable
as String,alternativeIfPreferred: freezed == alternativeIfPreferred ? _self.alternativeIfPreferred : alternativeIfPreferred // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DiscoveryResult {

 SearchContext get searchContext; List<WellnessOption> get options; Recommendation get recommendation; String get conversationalPresentation;
/// Create a copy of DiscoveryResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiscoveryResultCopyWith<DiscoveryResult> get copyWith => _$DiscoveryResultCopyWithImpl<DiscoveryResult>(this as DiscoveryResult, _$identity);

  /// Serializes this DiscoveryResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiscoveryResult&&(identical(other.searchContext, searchContext) || other.searchContext == searchContext)&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation)&&(identical(other.conversationalPresentation, conversationalPresentation) || other.conversationalPresentation == conversationalPresentation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchContext,const DeepCollectionEquality().hash(options),recommendation,conversationalPresentation);

@override
String toString() {
  return 'DiscoveryResult(searchContext: $searchContext, options: $options, recommendation: $recommendation, conversationalPresentation: $conversationalPresentation)';
}


}

/// @nodoc
abstract mixin class $DiscoveryResultCopyWith<$Res>  {
  factory $DiscoveryResultCopyWith(DiscoveryResult value, $Res Function(DiscoveryResult) _then) = _$DiscoveryResultCopyWithImpl;
@useResult
$Res call({
 SearchContext searchContext, List<WellnessOption> options, Recommendation recommendation, String conversationalPresentation
});


$SearchContextCopyWith<$Res> get searchContext;$RecommendationCopyWith<$Res> get recommendation;

}
/// @nodoc
class _$DiscoveryResultCopyWithImpl<$Res>
    implements $DiscoveryResultCopyWith<$Res> {
  _$DiscoveryResultCopyWithImpl(this._self, this._then);

  final DiscoveryResult _self;
  final $Res Function(DiscoveryResult) _then;

/// Create a copy of DiscoveryResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchContext = null,Object? options = null,Object? recommendation = null,Object? conversationalPresentation = null,}) {
  return _then(_self.copyWith(
searchContext: null == searchContext ? _self.searchContext : searchContext // ignore: cast_nullable_to_non_nullable
as SearchContext,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<WellnessOption>,recommendation: null == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as Recommendation,conversationalPresentation: null == conversationalPresentation ? _self.conversationalPresentation : conversationalPresentation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of DiscoveryResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchContextCopyWith<$Res> get searchContext {
  
  return $SearchContextCopyWith<$Res>(_self.searchContext, (value) {
    return _then(_self.copyWith(searchContext: value));
  });
}/// Create a copy of DiscoveryResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecommendationCopyWith<$Res> get recommendation {
  
  return $RecommendationCopyWith<$Res>(_self.recommendation, (value) {
    return _then(_self.copyWith(recommendation: value));
  });
}
}


/// Adds pattern-matching-related methods to [DiscoveryResult].
extension DiscoveryResultPatterns on DiscoveryResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiscoveryResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiscoveryResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiscoveryResult value)  $default,){
final _that = this;
switch (_that) {
case _DiscoveryResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiscoveryResult value)?  $default,){
final _that = this;
switch (_that) {
case _DiscoveryResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SearchContext searchContext,  List<WellnessOption> options,  Recommendation recommendation,  String conversationalPresentation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiscoveryResult() when $default != null:
return $default(_that.searchContext,_that.options,_that.recommendation,_that.conversationalPresentation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SearchContext searchContext,  List<WellnessOption> options,  Recommendation recommendation,  String conversationalPresentation)  $default,) {final _that = this;
switch (_that) {
case _DiscoveryResult():
return $default(_that.searchContext,_that.options,_that.recommendation,_that.conversationalPresentation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SearchContext searchContext,  List<WellnessOption> options,  Recommendation recommendation,  String conversationalPresentation)?  $default,) {final _that = this;
switch (_that) {
case _DiscoveryResult() when $default != null:
return $default(_that.searchContext,_that.options,_that.recommendation,_that.conversationalPresentation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiscoveryResult implements DiscoveryResult {
  const _DiscoveryResult({required this.searchContext, required final  List<WellnessOption> options, required this.recommendation, required this.conversationalPresentation}): _options = options;
  factory _DiscoveryResult.fromJson(Map<String, dynamic> json) => _$DiscoveryResultFromJson(json);

@override final  SearchContext searchContext;
 final  List<WellnessOption> _options;
@override List<WellnessOption> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

@override final  Recommendation recommendation;
@override final  String conversationalPresentation;

/// Create a copy of DiscoveryResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiscoveryResultCopyWith<_DiscoveryResult> get copyWith => __$DiscoveryResultCopyWithImpl<_DiscoveryResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiscoveryResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiscoveryResult&&(identical(other.searchContext, searchContext) || other.searchContext == searchContext)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation)&&(identical(other.conversationalPresentation, conversationalPresentation) || other.conversationalPresentation == conversationalPresentation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,searchContext,const DeepCollectionEquality().hash(_options),recommendation,conversationalPresentation);

@override
String toString() {
  return 'DiscoveryResult(searchContext: $searchContext, options: $options, recommendation: $recommendation, conversationalPresentation: $conversationalPresentation)';
}


}

/// @nodoc
abstract mixin class _$DiscoveryResultCopyWith<$Res> implements $DiscoveryResultCopyWith<$Res> {
  factory _$DiscoveryResultCopyWith(_DiscoveryResult value, $Res Function(_DiscoveryResult) _then) = __$DiscoveryResultCopyWithImpl;
@override @useResult
$Res call({
 SearchContext searchContext, List<WellnessOption> options, Recommendation recommendation, String conversationalPresentation
});


@override $SearchContextCopyWith<$Res> get searchContext;@override $RecommendationCopyWith<$Res> get recommendation;

}
/// @nodoc
class __$DiscoveryResultCopyWithImpl<$Res>
    implements _$DiscoveryResultCopyWith<$Res> {
  __$DiscoveryResultCopyWithImpl(this._self, this._then);

  final _DiscoveryResult _self;
  final $Res Function(_DiscoveryResult) _then;

/// Create a copy of DiscoveryResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchContext = null,Object? options = null,Object? recommendation = null,Object? conversationalPresentation = null,}) {
  return _then(_DiscoveryResult(
searchContext: null == searchContext ? _self.searchContext : searchContext // ignore: cast_nullable_to_non_nullable
as SearchContext,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<WellnessOption>,recommendation: null == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as Recommendation,conversationalPresentation: null == conversationalPresentation ? _self.conversationalPresentation : conversationalPresentation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of DiscoveryResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchContextCopyWith<$Res> get searchContext {
  
  return $SearchContextCopyWith<$Res>(_self.searchContext, (value) {
    return _then(_self.copyWith(searchContext: value));
  });
}/// Create a copy of DiscoveryResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecommendationCopyWith<$Res> get recommendation {
  
  return $RecommendationCopyWith<$Res>(_self.recommendation, (value) {
    return _then(_self.copyWith(recommendation: value));
  });
}
}


/// @nodoc
mixin _$RawWellnessOption {

 String get type; String get name; ProviderType get provider; WellnessOptionDetails get details; BookingInfo get bookingInfo;
/// Create a copy of RawWellnessOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RawWellnessOptionCopyWith<RawWellnessOption> get copyWith => _$RawWellnessOptionCopyWithImpl<RawWellnessOption>(this as RawWellnessOption, _$identity);

  /// Serializes this RawWellnessOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RawWellnessOption&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.details, details) || other.details == details)&&(identical(other.bookingInfo, bookingInfo) || other.bookingInfo == bookingInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,provider,details,bookingInfo);

@override
String toString() {
  return 'RawWellnessOption(type: $type, name: $name, provider: $provider, details: $details, bookingInfo: $bookingInfo)';
}


}

/// @nodoc
abstract mixin class $RawWellnessOptionCopyWith<$Res>  {
  factory $RawWellnessOptionCopyWith(RawWellnessOption value, $Res Function(RawWellnessOption) _then) = _$RawWellnessOptionCopyWithImpl;
@useResult
$Res call({
 String type, String name, ProviderType provider, WellnessOptionDetails details, BookingInfo bookingInfo
});


$WellnessOptionDetailsCopyWith<$Res> get details;$BookingInfoCopyWith<$Res> get bookingInfo;

}
/// @nodoc
class _$RawWellnessOptionCopyWithImpl<$Res>
    implements $RawWellnessOptionCopyWith<$Res> {
  _$RawWellnessOptionCopyWithImpl(this._self, this._then);

  final RawWellnessOption _self;
  final $Res Function(RawWellnessOption) _then;

/// Create a copy of RawWellnessOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? name = null,Object? provider = null,Object? details = null,Object? bookingInfo = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as ProviderType,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as WellnessOptionDetails,bookingInfo: null == bookingInfo ? _self.bookingInfo : bookingInfo // ignore: cast_nullable_to_non_nullable
as BookingInfo,
  ));
}
/// Create a copy of RawWellnessOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WellnessOptionDetailsCopyWith<$Res> get details {
  
  return $WellnessOptionDetailsCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}/// Create a copy of RawWellnessOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingInfoCopyWith<$Res> get bookingInfo {
  
  return $BookingInfoCopyWith<$Res>(_self.bookingInfo, (value) {
    return _then(_self.copyWith(bookingInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [RawWellnessOption].
extension RawWellnessOptionPatterns on RawWellnessOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RawWellnessOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RawWellnessOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RawWellnessOption value)  $default,){
final _that = this;
switch (_that) {
case _RawWellnessOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RawWellnessOption value)?  $default,){
final _that = this;
switch (_that) {
case _RawWellnessOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String name,  ProviderType provider,  WellnessOptionDetails details,  BookingInfo bookingInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RawWellnessOption() when $default != null:
return $default(_that.type,_that.name,_that.provider,_that.details,_that.bookingInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String name,  ProviderType provider,  WellnessOptionDetails details,  BookingInfo bookingInfo)  $default,) {final _that = this;
switch (_that) {
case _RawWellnessOption():
return $default(_that.type,_that.name,_that.provider,_that.details,_that.bookingInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String name,  ProviderType provider,  WellnessOptionDetails details,  BookingInfo bookingInfo)?  $default,) {final _that = this;
switch (_that) {
case _RawWellnessOption() when $default != null:
return $default(_that.type,_that.name,_that.provider,_that.details,_that.bookingInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RawWellnessOption implements RawWellnessOption {
  const _RawWellnessOption({required this.type, required this.name, required this.provider, required this.details, required this.bookingInfo});
  factory _RawWellnessOption.fromJson(Map<String, dynamic> json) => _$RawWellnessOptionFromJson(json);

@override final  String type;
@override final  String name;
@override final  ProviderType provider;
@override final  WellnessOptionDetails details;
@override final  BookingInfo bookingInfo;

/// Create a copy of RawWellnessOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RawWellnessOptionCopyWith<_RawWellnessOption> get copyWith => __$RawWellnessOptionCopyWithImpl<_RawWellnessOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RawWellnessOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RawWellnessOption&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.details, details) || other.details == details)&&(identical(other.bookingInfo, bookingInfo) || other.bookingInfo == bookingInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,provider,details,bookingInfo);

@override
String toString() {
  return 'RawWellnessOption(type: $type, name: $name, provider: $provider, details: $details, bookingInfo: $bookingInfo)';
}


}

/// @nodoc
abstract mixin class _$RawWellnessOptionCopyWith<$Res> implements $RawWellnessOptionCopyWith<$Res> {
  factory _$RawWellnessOptionCopyWith(_RawWellnessOption value, $Res Function(_RawWellnessOption) _then) = __$RawWellnessOptionCopyWithImpl;
@override @useResult
$Res call({
 String type, String name, ProviderType provider, WellnessOptionDetails details, BookingInfo bookingInfo
});


@override $WellnessOptionDetailsCopyWith<$Res> get details;@override $BookingInfoCopyWith<$Res> get bookingInfo;

}
/// @nodoc
class __$RawWellnessOptionCopyWithImpl<$Res>
    implements _$RawWellnessOptionCopyWith<$Res> {
  __$RawWellnessOptionCopyWithImpl(this._self, this._then);

  final _RawWellnessOption _self;
  final $Res Function(_RawWellnessOption) _then;

/// Create a copy of RawWellnessOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? name = null,Object? provider = null,Object? details = null,Object? bookingInfo = null,}) {
  return _then(_RawWellnessOption(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as ProviderType,details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as WellnessOptionDetails,bookingInfo: null == bookingInfo ? _self.bookingInfo : bookingInfo // ignore: cast_nullable_to_non_nullable
as BookingInfo,
  ));
}

/// Create a copy of RawWellnessOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WellnessOptionDetailsCopyWith<$Res> get details {
  
  return $WellnessOptionDetailsCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}/// Create a copy of RawWellnessOption
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingInfoCopyWith<$Res> get bookingInfo {
  
  return $BookingInfoCopyWith<$Res>(_self.bookingInfo, (value) {
    return _then(_self.copyWith(bookingInfo: value));
  });
}
}

// dart format on
