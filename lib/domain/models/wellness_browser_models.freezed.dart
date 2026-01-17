// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wellness_browser_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocationContext {

 UserLocation get current; List<FutureLocation> get upcoming;
/// Create a copy of LocationContext
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationContextCopyWith<LocationContext> get copyWith => _$LocationContextCopyWithImpl<LocationContext>(this as LocationContext, _$identity);

  /// Serializes this LocationContext to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationContext&&(identical(other.current, current) || other.current == current)&&const DeepCollectionEquality().equals(other.upcoming, upcoming));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,const DeepCollectionEquality().hash(upcoming));

@override
String toString() {
  return 'LocationContext(current: $current, upcoming: $upcoming)';
}


}

/// @nodoc
abstract mixin class $LocationContextCopyWith<$Res>  {
  factory $LocationContextCopyWith(LocationContext value, $Res Function(LocationContext) _then) = _$LocationContextCopyWithImpl;
@useResult
$Res call({
 UserLocation current, List<FutureLocation> upcoming
});


$UserLocationCopyWith<$Res> get current;

}
/// @nodoc
class _$LocationContextCopyWithImpl<$Res>
    implements $LocationContextCopyWith<$Res> {
  _$LocationContextCopyWithImpl(this._self, this._then);

  final LocationContext _self;
  final $Res Function(LocationContext) _then;

/// Create a copy of LocationContext
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current = null,Object? upcoming = null,}) {
  return _then(_self.copyWith(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as UserLocation,upcoming: null == upcoming ? _self.upcoming : upcoming // ignore: cast_nullable_to_non_nullable
as List<FutureLocation>,
  ));
}
/// Create a copy of LocationContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserLocationCopyWith<$Res> get current {
  
  return $UserLocationCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserLocation current,  List<FutureLocation> upcoming)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationContext() when $default != null:
return $default(_that.current,_that.upcoming);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserLocation current,  List<FutureLocation> upcoming)  $default,) {final _that = this;
switch (_that) {
case _LocationContext():
return $default(_that.current,_that.upcoming);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserLocation current,  List<FutureLocation> upcoming)?  $default,) {final _that = this;
switch (_that) {
case _LocationContext() when $default != null:
return $default(_that.current,_that.upcoming);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocationContext implements LocationContext {
  const _LocationContext({required this.current, final  List<FutureLocation> upcoming = const []}): _upcoming = upcoming;
  factory _LocationContext.fromJson(Map<String, dynamic> json) => _$LocationContextFromJson(json);

@override final  UserLocation current;
 final  List<FutureLocation> _upcoming;
@override@JsonKey() List<FutureLocation> get upcoming {
  if (_upcoming is EqualUnmodifiableListView) return _upcoming;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_upcoming);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationContext&&(identical(other.current, current) || other.current == current)&&const DeepCollectionEquality().equals(other._upcoming, _upcoming));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,const DeepCollectionEquality().hash(_upcoming));

@override
String toString() {
  return 'LocationContext(current: $current, upcoming: $upcoming)';
}


}

/// @nodoc
abstract mixin class _$LocationContextCopyWith<$Res> implements $LocationContextCopyWith<$Res> {
  factory _$LocationContextCopyWith(_LocationContext value, $Res Function(_LocationContext) _then) = __$LocationContextCopyWithImpl;
@override @useResult
$Res call({
 UserLocation current, List<FutureLocation> upcoming
});


@override $UserLocationCopyWith<$Res> get current;

}
/// @nodoc
class __$LocationContextCopyWithImpl<$Res>
    implements _$LocationContextCopyWith<$Res> {
  __$LocationContextCopyWithImpl(this._self, this._then);

  final _LocationContext _self;
  final $Res Function(_LocationContext) _then;

/// Create a copy of LocationContext
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? current = null,Object? upcoming = null,}) {
  return _then(_LocationContext(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as UserLocation,upcoming: null == upcoming ? _self._upcoming : upcoming // ignore: cast_nullable_to_non_nullable
as List<FutureLocation>,
  ));
}

/// Create a copy of LocationContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserLocationCopyWith<$Res> get current {
  
  return $UserLocationCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}


/// @nodoc
mixin _$UserLocation {

 String get city; List<double> get coordinates;// [lat, lng]
 String get userBase;
/// Create a copy of UserLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserLocationCopyWith<UserLocation> get copyWith => _$UserLocationCopyWithImpl<UserLocation>(this as UserLocation, _$identity);

  /// Serializes this UserLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserLocation&&(identical(other.city, city) || other.city == city)&&const DeepCollectionEquality().equals(other.coordinates, coordinates)&&(identical(other.userBase, userBase) || other.userBase == userBase));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,const DeepCollectionEquality().hash(coordinates),userBase);

@override
String toString() {
  return 'UserLocation(city: $city, coordinates: $coordinates, userBase: $userBase)';
}


}

/// @nodoc
abstract mixin class $UserLocationCopyWith<$Res>  {
  factory $UserLocationCopyWith(UserLocation value, $Res Function(UserLocation) _then) = _$UserLocationCopyWithImpl;
@useResult
$Res call({
 String city, List<double> coordinates, String userBase
});




}
/// @nodoc
class _$UserLocationCopyWithImpl<$Res>
    implements $UserLocationCopyWith<$Res> {
  _$UserLocationCopyWithImpl(this._self, this._then);

  final UserLocation _self;
  final $Res Function(UserLocation) _then;

/// Create a copy of UserLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? city = null,Object? coordinates = null,Object? userBase = null,}) {
  return _then(_self.copyWith(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,coordinates: null == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as List<double>,userBase: null == userBase ? _self.userBase : userBase // ignore: cast_nullable_to_non_nullable
as String,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String city,  List<double> coordinates,  String userBase)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserLocation() when $default != null:
return $default(_that.city,_that.coordinates,_that.userBase);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String city,  List<double> coordinates,  String userBase)  $default,) {final _that = this;
switch (_that) {
case _UserLocation():
return $default(_that.city,_that.coordinates,_that.userBase);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String city,  List<double> coordinates,  String userBase)?  $default,) {final _that = this;
switch (_that) {
case _UserLocation() when $default != null:
return $default(_that.city,_that.coordinates,_that.userBase);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserLocation implements UserLocation {
  const _UserLocation({required this.city, required final  List<double> coordinates, required this.userBase}): _coordinates = coordinates;
  factory _UserLocation.fromJson(Map<String, dynamic> json) => _$UserLocationFromJson(json);

@override final  String city;
 final  List<double> _coordinates;
@override List<double> get coordinates {
  if (_coordinates is EqualUnmodifiableListView) return _coordinates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_coordinates);
}

// [lat, lng]
@override final  String userBase;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserLocation&&(identical(other.city, city) || other.city == city)&&const DeepCollectionEquality().equals(other._coordinates, _coordinates)&&(identical(other.userBase, userBase) || other.userBase == userBase));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,const DeepCollectionEquality().hash(_coordinates),userBase);

@override
String toString() {
  return 'UserLocation(city: $city, coordinates: $coordinates, userBase: $userBase)';
}


}

/// @nodoc
abstract mixin class _$UserLocationCopyWith<$Res> implements $UserLocationCopyWith<$Res> {
  factory _$UserLocationCopyWith(_UserLocation value, $Res Function(_UserLocation) _then) = __$UserLocationCopyWithImpl;
@override @useResult
$Res call({
 String city, List<double> coordinates, String userBase
});




}
/// @nodoc
class __$UserLocationCopyWithImpl<$Res>
    implements _$UserLocationCopyWith<$Res> {
  __$UserLocationCopyWithImpl(this._self, this._then);

  final _UserLocation _self;
  final $Res Function(_UserLocation) _then;

/// Create a copy of UserLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? city = null,Object? coordinates = null,Object? userBase = null,}) {
  return _then(_UserLocation(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,coordinates: null == coordinates ? _self._coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as List<double>,userBase: null == userBase ? _self.userBase : userBase // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FutureLocation {

 String get city; String get dates; String get userBase; List<double>? get coordinates;
/// Create a copy of FutureLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FutureLocationCopyWith<FutureLocation> get copyWith => _$FutureLocationCopyWithImpl<FutureLocation>(this as FutureLocation, _$identity);

  /// Serializes this FutureLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FutureLocation&&(identical(other.city, city) || other.city == city)&&(identical(other.dates, dates) || other.dates == dates)&&(identical(other.userBase, userBase) || other.userBase == userBase)&&const DeepCollectionEquality().equals(other.coordinates, coordinates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,dates,userBase,const DeepCollectionEquality().hash(coordinates));

@override
String toString() {
  return 'FutureLocation(city: $city, dates: $dates, userBase: $userBase, coordinates: $coordinates)';
}


}

/// @nodoc
abstract mixin class $FutureLocationCopyWith<$Res>  {
  factory $FutureLocationCopyWith(FutureLocation value, $Res Function(FutureLocation) _then) = _$FutureLocationCopyWithImpl;
@useResult
$Res call({
 String city, String dates, String userBase, List<double>? coordinates
});




}
/// @nodoc
class _$FutureLocationCopyWithImpl<$Res>
    implements $FutureLocationCopyWith<$Res> {
  _$FutureLocationCopyWithImpl(this._self, this._then);

  final FutureLocation _self;
  final $Res Function(FutureLocation) _then;

/// Create a copy of FutureLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? city = null,Object? dates = null,Object? userBase = null,Object? coordinates = freezed,}) {
  return _then(_self.copyWith(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,dates: null == dates ? _self.dates : dates // ignore: cast_nullable_to_non_nullable
as String,userBase: null == userBase ? _self.userBase : userBase // ignore: cast_nullable_to_non_nullable
as String,coordinates: freezed == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as List<double>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FutureLocation].
extension FutureLocationPatterns on FutureLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FutureLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FutureLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FutureLocation value)  $default,){
final _that = this;
switch (_that) {
case _FutureLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FutureLocation value)?  $default,){
final _that = this;
switch (_that) {
case _FutureLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String city,  String dates,  String userBase,  List<double>? coordinates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FutureLocation() when $default != null:
return $default(_that.city,_that.dates,_that.userBase,_that.coordinates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String city,  String dates,  String userBase,  List<double>? coordinates)  $default,) {final _that = this;
switch (_that) {
case _FutureLocation():
return $default(_that.city,_that.dates,_that.userBase,_that.coordinates);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String city,  String dates,  String userBase,  List<double>? coordinates)?  $default,) {final _that = this;
switch (_that) {
case _FutureLocation() when $default != null:
return $default(_that.city,_that.dates,_that.userBase,_that.coordinates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FutureLocation implements FutureLocation {
  const _FutureLocation({required this.city, required this.dates, required this.userBase, final  List<double>? coordinates}): _coordinates = coordinates;
  factory _FutureLocation.fromJson(Map<String, dynamic> json) => _$FutureLocationFromJson(json);

@override final  String city;
@override final  String dates;
@override final  String userBase;
 final  List<double>? _coordinates;
@override List<double>? get coordinates {
  final value = _coordinates;
  if (value == null) return null;
  if (_coordinates is EqualUnmodifiableListView) return _coordinates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FutureLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FutureLocationCopyWith<_FutureLocation> get copyWith => __$FutureLocationCopyWithImpl<_FutureLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FutureLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FutureLocation&&(identical(other.city, city) || other.city == city)&&(identical(other.dates, dates) || other.dates == dates)&&(identical(other.userBase, userBase) || other.userBase == userBase)&&const DeepCollectionEquality().equals(other._coordinates, _coordinates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,dates,userBase,const DeepCollectionEquality().hash(_coordinates));

@override
String toString() {
  return 'FutureLocation(city: $city, dates: $dates, userBase: $userBase, coordinates: $coordinates)';
}


}

/// @nodoc
abstract mixin class _$FutureLocationCopyWith<$Res> implements $FutureLocationCopyWith<$Res> {
  factory _$FutureLocationCopyWith(_FutureLocation value, $Res Function(_FutureLocation) _then) = __$FutureLocationCopyWithImpl;
@override @useResult
$Res call({
 String city, String dates, String userBase, List<double>? coordinates
});




}
/// @nodoc
class __$FutureLocationCopyWithImpl<$Res>
    implements _$FutureLocationCopyWith<$Res> {
  __$FutureLocationCopyWithImpl(this._self, this._then);

  final _FutureLocation _self;
  final $Res Function(_FutureLocation) _then;

/// Create a copy of FutureLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? city = null,Object? dates = null,Object? userBase = null,Object? coordinates = freezed,}) {
  return _then(_FutureLocation(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,dates: null == dates ? _self.dates : dates // ignore: cast_nullable_to_non_nullable
as String,userBase: null == userBase ? _self.userBase : userBase // ignore: cast_nullable_to_non_nullable
as String,coordinates: freezed == coordinates ? _self._coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as List<double>?,
  ));
}


}


/// @nodoc
mixin _$TimeContext {

 DateTime get currentTime; List<AvailabilityWindow> get todayAvailability; List<AvailabilityWindow> get tomorrowAvailability;
/// Create a copy of TimeContext
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeContextCopyWith<TimeContext> get copyWith => _$TimeContextCopyWithImpl<TimeContext>(this as TimeContext, _$identity);

  /// Serializes this TimeContext to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeContext&&(identical(other.currentTime, currentTime) || other.currentTime == currentTime)&&const DeepCollectionEquality().equals(other.todayAvailability, todayAvailability)&&const DeepCollectionEquality().equals(other.tomorrowAvailability, tomorrowAvailability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentTime,const DeepCollectionEquality().hash(todayAvailability),const DeepCollectionEquality().hash(tomorrowAvailability));

@override
String toString() {
  return 'TimeContext(currentTime: $currentTime, todayAvailability: $todayAvailability, tomorrowAvailability: $tomorrowAvailability)';
}


}

/// @nodoc
abstract mixin class $TimeContextCopyWith<$Res>  {
  factory $TimeContextCopyWith(TimeContext value, $Res Function(TimeContext) _then) = _$TimeContextCopyWithImpl;
@useResult
$Res call({
 DateTime currentTime, List<AvailabilityWindow> todayAvailability, List<AvailabilityWindow> tomorrowAvailability
});




}
/// @nodoc
class _$TimeContextCopyWithImpl<$Res>
    implements $TimeContextCopyWith<$Res> {
  _$TimeContextCopyWithImpl(this._self, this._then);

  final TimeContext _self;
  final $Res Function(TimeContext) _then;

/// Create a copy of TimeContext
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentTime = null,Object? todayAvailability = null,Object? tomorrowAvailability = null,}) {
  return _then(_self.copyWith(
currentTime: null == currentTime ? _self.currentTime : currentTime // ignore: cast_nullable_to_non_nullable
as DateTime,todayAvailability: null == todayAvailability ? _self.todayAvailability : todayAvailability // ignore: cast_nullable_to_non_nullable
as List<AvailabilityWindow>,tomorrowAvailability: null == tomorrowAvailability ? _self.tomorrowAvailability : tomorrowAvailability // ignore: cast_nullable_to_non_nullable
as List<AvailabilityWindow>,
  ));
}

}


/// Adds pattern-matching-related methods to [TimeContext].
extension TimeContextPatterns on TimeContext {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimeContext value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimeContext() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimeContext value)  $default,){
final _that = this;
switch (_that) {
case _TimeContext():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimeContext value)?  $default,){
final _that = this;
switch (_that) {
case _TimeContext() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime currentTime,  List<AvailabilityWindow> todayAvailability,  List<AvailabilityWindow> tomorrowAvailability)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimeContext() when $default != null:
return $default(_that.currentTime,_that.todayAvailability,_that.tomorrowAvailability);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime currentTime,  List<AvailabilityWindow> todayAvailability,  List<AvailabilityWindow> tomorrowAvailability)  $default,) {final _that = this;
switch (_that) {
case _TimeContext():
return $default(_that.currentTime,_that.todayAvailability,_that.tomorrowAvailability);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime currentTime,  List<AvailabilityWindow> todayAvailability,  List<AvailabilityWindow> tomorrowAvailability)?  $default,) {final _that = this;
switch (_that) {
case _TimeContext() when $default != null:
return $default(_that.currentTime,_that.todayAvailability,_that.tomorrowAvailability);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TimeContext implements TimeContext {
  const _TimeContext({required this.currentTime, final  List<AvailabilityWindow> todayAvailability = const [], final  List<AvailabilityWindow> tomorrowAvailability = const []}): _todayAvailability = todayAvailability,_tomorrowAvailability = tomorrowAvailability;
  factory _TimeContext.fromJson(Map<String, dynamic> json) => _$TimeContextFromJson(json);

@override final  DateTime currentTime;
 final  List<AvailabilityWindow> _todayAvailability;
@override@JsonKey() List<AvailabilityWindow> get todayAvailability {
  if (_todayAvailability is EqualUnmodifiableListView) return _todayAvailability;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todayAvailability);
}

 final  List<AvailabilityWindow> _tomorrowAvailability;
@override@JsonKey() List<AvailabilityWindow> get tomorrowAvailability {
  if (_tomorrowAvailability is EqualUnmodifiableListView) return _tomorrowAvailability;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tomorrowAvailability);
}


/// Create a copy of TimeContext
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeContextCopyWith<_TimeContext> get copyWith => __$TimeContextCopyWithImpl<_TimeContext>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeContextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeContext&&(identical(other.currentTime, currentTime) || other.currentTime == currentTime)&&const DeepCollectionEquality().equals(other._todayAvailability, _todayAvailability)&&const DeepCollectionEquality().equals(other._tomorrowAvailability, _tomorrowAvailability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentTime,const DeepCollectionEquality().hash(_todayAvailability),const DeepCollectionEquality().hash(_tomorrowAvailability));

@override
String toString() {
  return 'TimeContext(currentTime: $currentTime, todayAvailability: $todayAvailability, tomorrowAvailability: $tomorrowAvailability)';
}


}

/// @nodoc
abstract mixin class _$TimeContextCopyWith<$Res> implements $TimeContextCopyWith<$Res> {
  factory _$TimeContextCopyWith(_TimeContext value, $Res Function(_TimeContext) _then) = __$TimeContextCopyWithImpl;
@override @useResult
$Res call({
 DateTime currentTime, List<AvailabilityWindow> todayAvailability, List<AvailabilityWindow> tomorrowAvailability
});




}
/// @nodoc
class __$TimeContextCopyWithImpl<$Res>
    implements _$TimeContextCopyWith<$Res> {
  __$TimeContextCopyWithImpl(this._self, this._then);

  final _TimeContext _self;
  final $Res Function(_TimeContext) _then;

/// Create a copy of TimeContext
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentTime = null,Object? todayAvailability = null,Object? tomorrowAvailability = null,}) {
  return _then(_TimeContext(
currentTime: null == currentTime ? _self.currentTime : currentTime // ignore: cast_nullable_to_non_nullable
as DateTime,todayAvailability: null == todayAvailability ? _self._todayAvailability : todayAvailability // ignore: cast_nullable_to_non_nullable
as List<AvailabilityWindow>,tomorrowAvailability: null == tomorrowAvailability ? _self._tomorrowAvailability : tomorrowAvailability // ignore: cast_nullable_to_non_nullable
as List<AvailabilityWindow>,
  ));
}


}


/// @nodoc
mixin _$AvailabilityWindow {

 String get start;// "18:00"
 String get end;
/// Create a copy of AvailabilityWindow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvailabilityWindowCopyWith<AvailabilityWindow> get copyWith => _$AvailabilityWindowCopyWithImpl<AvailabilityWindow>(this as AvailabilityWindow, _$identity);

  /// Serializes this AvailabilityWindow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailabilityWindow&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end);

@override
String toString() {
  return 'AvailabilityWindow(start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class $AvailabilityWindowCopyWith<$Res>  {
  factory $AvailabilityWindowCopyWith(AvailabilityWindow value, $Res Function(AvailabilityWindow) _then) = _$AvailabilityWindowCopyWithImpl;
@useResult
$Res call({
 String start, String end
});




}
/// @nodoc
class _$AvailabilityWindowCopyWithImpl<$Res>
    implements $AvailabilityWindowCopyWith<$Res> {
  _$AvailabilityWindowCopyWithImpl(this._self, this._then);

  final AvailabilityWindow _self;
  final $Res Function(AvailabilityWindow) _then;

/// Create a copy of AvailabilityWindow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start = null,Object? end = null,}) {
  return _then(_self.copyWith(
start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AvailabilityWindow].
extension AvailabilityWindowPatterns on AvailabilityWindow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AvailabilityWindow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AvailabilityWindow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AvailabilityWindow value)  $default,){
final _that = this;
switch (_that) {
case _AvailabilityWindow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AvailabilityWindow value)?  $default,){
final _that = this;
switch (_that) {
case _AvailabilityWindow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String start,  String end)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AvailabilityWindow() when $default != null:
return $default(_that.start,_that.end);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String start,  String end)  $default,) {final _that = this;
switch (_that) {
case _AvailabilityWindow():
return $default(_that.start,_that.end);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String start,  String end)?  $default,) {final _that = this;
switch (_that) {
case _AvailabilityWindow() when $default != null:
return $default(_that.start,_that.end);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AvailabilityWindow implements AvailabilityWindow {
  const _AvailabilityWindow({required this.start, required this.end});
  factory _AvailabilityWindow.fromJson(Map<String, dynamic> json) => _$AvailabilityWindowFromJson(json);

@override final  String start;
// "18:00"
@override final  String end;

/// Create a copy of AvailabilityWindow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvailabilityWindowCopyWith<_AvailabilityWindow> get copyWith => __$AvailabilityWindowCopyWithImpl<_AvailabilityWindow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AvailabilityWindowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvailabilityWindow&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end);

@override
String toString() {
  return 'AvailabilityWindow(start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class _$AvailabilityWindowCopyWith<$Res> implements $AvailabilityWindowCopyWith<$Res> {
  factory _$AvailabilityWindowCopyWith(_AvailabilityWindow value, $Res Function(_AvailabilityWindow) _then) = __$AvailabilityWindowCopyWithImpl;
@override @useResult
$Res call({
 String start, String end
});




}
/// @nodoc
class __$AvailabilityWindowCopyWithImpl<$Res>
    implements _$AvailabilityWindowCopyWith<$Res> {
  __$AvailabilityWindowCopyWithImpl(this._self, this._then);

  final _AvailabilityWindow _self;
  final $Res Function(_AvailabilityWindow) _then;

/// Create a copy of AvailabilityWindow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start = null,Object? end = null,}) {
  return _then(_AvailabilityWindow(
start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UserPreferences {

 List<String> get favoriteActivities; List<String> get recentSearches; List<String> get savedVenues; List<String> get dislikedActivities;
/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPreferencesCopyWith<UserPreferences> get copyWith => _$UserPreferencesCopyWithImpl<UserPreferences>(this as UserPreferences, _$identity);

  /// Serializes this UserPreferences to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPreferences&&const DeepCollectionEquality().equals(other.favoriteActivities, favoriteActivities)&&const DeepCollectionEquality().equals(other.recentSearches, recentSearches)&&const DeepCollectionEquality().equals(other.savedVenues, savedVenues)&&const DeepCollectionEquality().equals(other.dislikedActivities, dislikedActivities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(favoriteActivities),const DeepCollectionEquality().hash(recentSearches),const DeepCollectionEquality().hash(savedVenues),const DeepCollectionEquality().hash(dislikedActivities));

@override
String toString() {
  return 'UserPreferences(favoriteActivities: $favoriteActivities, recentSearches: $recentSearches, savedVenues: $savedVenues, dislikedActivities: $dislikedActivities)';
}


}

/// @nodoc
abstract mixin class $UserPreferencesCopyWith<$Res>  {
  factory $UserPreferencesCopyWith(UserPreferences value, $Res Function(UserPreferences) _then) = _$UserPreferencesCopyWithImpl;
@useResult
$Res call({
 List<String> favoriteActivities, List<String> recentSearches, List<String> savedVenues, List<String> dislikedActivities
});




}
/// @nodoc
class _$UserPreferencesCopyWithImpl<$Res>
    implements $UserPreferencesCopyWith<$Res> {
  _$UserPreferencesCopyWithImpl(this._self, this._then);

  final UserPreferences _self;
  final $Res Function(UserPreferences) _then;

/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? favoriteActivities = null,Object? recentSearches = null,Object? savedVenues = null,Object? dislikedActivities = null,}) {
  return _then(_self.copyWith(
favoriteActivities: null == favoriteActivities ? _self.favoriteActivities : favoriteActivities // ignore: cast_nullable_to_non_nullable
as List<String>,recentSearches: null == recentSearches ? _self.recentSearches : recentSearches // ignore: cast_nullable_to_non_nullable
as List<String>,savedVenues: null == savedVenues ? _self.savedVenues : savedVenues // ignore: cast_nullable_to_non_nullable
as List<String>,dislikedActivities: null == dislikedActivities ? _self.dislikedActivities : dislikedActivities // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> favoriteActivities,  List<String> recentSearches,  List<String> savedVenues,  List<String> dislikedActivities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPreferences() when $default != null:
return $default(_that.favoriteActivities,_that.recentSearches,_that.savedVenues,_that.dislikedActivities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> favoriteActivities,  List<String> recentSearches,  List<String> savedVenues,  List<String> dislikedActivities)  $default,) {final _that = this;
switch (_that) {
case _UserPreferences():
return $default(_that.favoriteActivities,_that.recentSearches,_that.savedVenues,_that.dislikedActivities);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> favoriteActivities,  List<String> recentSearches,  List<String> savedVenues,  List<String> dislikedActivities)?  $default,) {final _that = this;
switch (_that) {
case _UserPreferences() when $default != null:
return $default(_that.favoriteActivities,_that.recentSearches,_that.savedVenues,_that.dislikedActivities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPreferences implements UserPreferences {
  const _UserPreferences({final  List<String> favoriteActivities = const [], final  List<String> recentSearches = const [], final  List<String> savedVenues = const [], final  List<String> dislikedActivities = const []}): _favoriteActivities = favoriteActivities,_recentSearches = recentSearches,_savedVenues = savedVenues,_dislikedActivities = dislikedActivities;
  factory _UserPreferences.fromJson(Map<String, dynamic> json) => _$UserPreferencesFromJson(json);

 final  List<String> _favoriteActivities;
@override@JsonKey() List<String> get favoriteActivities {
  if (_favoriteActivities is EqualUnmodifiableListView) return _favoriteActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_favoriteActivities);
}

 final  List<String> _recentSearches;
@override@JsonKey() List<String> get recentSearches {
  if (_recentSearches is EqualUnmodifiableListView) return _recentSearches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentSearches);
}

 final  List<String> _savedVenues;
@override@JsonKey() List<String> get savedVenues {
  if (_savedVenues is EqualUnmodifiableListView) return _savedVenues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_savedVenues);
}

 final  List<String> _dislikedActivities;
@override@JsonKey() List<String> get dislikedActivities {
  if (_dislikedActivities is EqualUnmodifiableListView) return _dislikedActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dislikedActivities);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPreferences&&const DeepCollectionEquality().equals(other._favoriteActivities, _favoriteActivities)&&const DeepCollectionEquality().equals(other._recentSearches, _recentSearches)&&const DeepCollectionEquality().equals(other._savedVenues, _savedVenues)&&const DeepCollectionEquality().equals(other._dislikedActivities, _dislikedActivities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_favoriteActivities),const DeepCollectionEquality().hash(_recentSearches),const DeepCollectionEquality().hash(_savedVenues),const DeepCollectionEquality().hash(_dislikedActivities));

@override
String toString() {
  return 'UserPreferences(favoriteActivities: $favoriteActivities, recentSearches: $recentSearches, savedVenues: $savedVenues, dislikedActivities: $dislikedActivities)';
}


}

/// @nodoc
abstract mixin class _$UserPreferencesCopyWith<$Res> implements $UserPreferencesCopyWith<$Res> {
  factory _$UserPreferencesCopyWith(_UserPreferences value, $Res Function(_UserPreferences) _then) = __$UserPreferencesCopyWithImpl;
@override @useResult
$Res call({
 List<String> favoriteActivities, List<String> recentSearches, List<String> savedVenues, List<String> dislikedActivities
});




}
/// @nodoc
class __$UserPreferencesCopyWithImpl<$Res>
    implements _$UserPreferencesCopyWith<$Res> {
  __$UserPreferencesCopyWithImpl(this._self, this._then);

  final _UserPreferences _self;
  final $Res Function(_UserPreferences) _then;

/// Create a copy of UserPreferences
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? favoriteActivities = null,Object? recentSearches = null,Object? savedVenues = null,Object? dislikedActivities = null,}) {
  return _then(_UserPreferences(
favoriteActivities: null == favoriteActivities ? _self._favoriteActivities : favoriteActivities // ignore: cast_nullable_to_non_nullable
as List<String>,recentSearches: null == recentSearches ? _self._recentSearches : recentSearches // ignore: cast_nullable_to_non_nullable
as List<String>,savedVenues: null == savedVenues ? _self._savedVenues : savedVenues // ignore: cast_nullable_to_non_nullable
as List<String>,dislikedActivities: null == dislikedActivities ? _self._dislikedActivities : dislikedActivities // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$WellnessBrowsingContext {

 LocationContext get location; TimeContext get timeContext; UserPreferences get userPreferences;
/// Create a copy of WellnessBrowsingContext
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WellnessBrowsingContextCopyWith<WellnessBrowsingContext> get copyWith => _$WellnessBrowsingContextCopyWithImpl<WellnessBrowsingContext>(this as WellnessBrowsingContext, _$identity);

  /// Serializes this WellnessBrowsingContext to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WellnessBrowsingContext&&(identical(other.location, location) || other.location == location)&&(identical(other.timeContext, timeContext) || other.timeContext == timeContext)&&(identical(other.userPreferences, userPreferences) || other.userPreferences == userPreferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,location,timeContext,userPreferences);

@override
String toString() {
  return 'WellnessBrowsingContext(location: $location, timeContext: $timeContext, userPreferences: $userPreferences)';
}


}

/// @nodoc
abstract mixin class $WellnessBrowsingContextCopyWith<$Res>  {
  factory $WellnessBrowsingContextCopyWith(WellnessBrowsingContext value, $Res Function(WellnessBrowsingContext) _then) = _$WellnessBrowsingContextCopyWithImpl;
@useResult
$Res call({
 LocationContext location, TimeContext timeContext, UserPreferences userPreferences
});


$LocationContextCopyWith<$Res> get location;$TimeContextCopyWith<$Res> get timeContext;$UserPreferencesCopyWith<$Res> get userPreferences;

}
/// @nodoc
class _$WellnessBrowsingContextCopyWithImpl<$Res>
    implements $WellnessBrowsingContextCopyWith<$Res> {
  _$WellnessBrowsingContextCopyWithImpl(this._self, this._then);

  final WellnessBrowsingContext _self;
  final $Res Function(WellnessBrowsingContext) _then;

/// Create a copy of WellnessBrowsingContext
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? location = null,Object? timeContext = null,Object? userPreferences = null,}) {
  return _then(_self.copyWith(
location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationContext,timeContext: null == timeContext ? _self.timeContext : timeContext // ignore: cast_nullable_to_non_nullable
as TimeContext,userPreferences: null == userPreferences ? _self.userPreferences : userPreferences // ignore: cast_nullable_to_non_nullable
as UserPreferences,
  ));
}
/// Create a copy of WellnessBrowsingContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationContextCopyWith<$Res> get location {
  
  return $LocationContextCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of WellnessBrowsingContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeContextCopyWith<$Res> get timeContext {
  
  return $TimeContextCopyWith<$Res>(_self.timeContext, (value) {
    return _then(_self.copyWith(timeContext: value));
  });
}/// Create a copy of WellnessBrowsingContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserPreferencesCopyWith<$Res> get userPreferences {
  
  return $UserPreferencesCopyWith<$Res>(_self.userPreferences, (value) {
    return _then(_self.copyWith(userPreferences: value));
  });
}
}


/// Adds pattern-matching-related methods to [WellnessBrowsingContext].
extension WellnessBrowsingContextPatterns on WellnessBrowsingContext {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WellnessBrowsingContext value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WellnessBrowsingContext() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WellnessBrowsingContext value)  $default,){
final _that = this;
switch (_that) {
case _WellnessBrowsingContext():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WellnessBrowsingContext value)?  $default,){
final _that = this;
switch (_that) {
case _WellnessBrowsingContext() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LocationContext location,  TimeContext timeContext,  UserPreferences userPreferences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WellnessBrowsingContext() when $default != null:
return $default(_that.location,_that.timeContext,_that.userPreferences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LocationContext location,  TimeContext timeContext,  UserPreferences userPreferences)  $default,) {final _that = this;
switch (_that) {
case _WellnessBrowsingContext():
return $default(_that.location,_that.timeContext,_that.userPreferences);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LocationContext location,  TimeContext timeContext,  UserPreferences userPreferences)?  $default,) {final _that = this;
switch (_that) {
case _WellnessBrowsingContext() when $default != null:
return $default(_that.location,_that.timeContext,_that.userPreferences);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WellnessBrowsingContext implements WellnessBrowsingContext {
  const _WellnessBrowsingContext({required this.location, required this.timeContext, required this.userPreferences});
  factory _WellnessBrowsingContext.fromJson(Map<String, dynamic> json) => _$WellnessBrowsingContextFromJson(json);

@override final  LocationContext location;
@override final  TimeContext timeContext;
@override final  UserPreferences userPreferences;

/// Create a copy of WellnessBrowsingContext
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WellnessBrowsingContextCopyWith<_WellnessBrowsingContext> get copyWith => __$WellnessBrowsingContextCopyWithImpl<_WellnessBrowsingContext>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WellnessBrowsingContextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WellnessBrowsingContext&&(identical(other.location, location) || other.location == location)&&(identical(other.timeContext, timeContext) || other.timeContext == timeContext)&&(identical(other.userPreferences, userPreferences) || other.userPreferences == userPreferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,location,timeContext,userPreferences);

@override
String toString() {
  return 'WellnessBrowsingContext(location: $location, timeContext: $timeContext, userPreferences: $userPreferences)';
}


}

/// @nodoc
abstract mixin class _$WellnessBrowsingContextCopyWith<$Res> implements $WellnessBrowsingContextCopyWith<$Res> {
  factory _$WellnessBrowsingContextCopyWith(_WellnessBrowsingContext value, $Res Function(_WellnessBrowsingContext) _then) = __$WellnessBrowsingContextCopyWithImpl;
@override @useResult
$Res call({
 LocationContext location, TimeContext timeContext, UserPreferences userPreferences
});


@override $LocationContextCopyWith<$Res> get location;@override $TimeContextCopyWith<$Res> get timeContext;@override $UserPreferencesCopyWith<$Res> get userPreferences;

}
/// @nodoc
class __$WellnessBrowsingContextCopyWithImpl<$Res>
    implements _$WellnessBrowsingContextCopyWith<$Res> {
  __$WellnessBrowsingContextCopyWithImpl(this._self, this._then);

  final _WellnessBrowsingContext _self;
  final $Res Function(_WellnessBrowsingContext) _then;

/// Create a copy of WellnessBrowsingContext
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? location = null,Object? timeContext = null,Object? userPreferences = null,}) {
  return _then(_WellnessBrowsingContext(
location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationContext,timeContext: null == timeContext ? _self.timeContext : timeContext // ignore: cast_nullable_to_non_nullable
as TimeContext,userPreferences: null == userPreferences ? _self.userPreferences : userPreferences // ignore: cast_nullable_to_non_nullable
as UserPreferences,
  ));
}

/// Create a copy of WellnessBrowsingContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationContextCopyWith<$Res> get location {
  
  return $LocationContextCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of WellnessBrowsingContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeContextCopyWith<$Res> get timeContext {
  
  return $TimeContextCopyWith<$Res>(_self.timeContext, (value) {
    return _then(_self.copyWith(timeContext: value));
  });
}/// Create a copy of WellnessBrowsingContext
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserPreferencesCopyWith<$Res> get userPreferences {
  
  return $UserPreferencesCopyWith<$Res>(_self.userPreferences, (value) {
    return _then(_self.copyWith(userPreferences: value));
  });
}
}


/// @nodoc
mixin _$DistanceInfo {

 double get fromUser; String get unit; int get walkTime;
/// Create a copy of DistanceInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DistanceInfoCopyWith<DistanceInfo> get copyWith => _$DistanceInfoCopyWithImpl<DistanceInfo>(this as DistanceInfo, _$identity);

  /// Serializes this DistanceInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DistanceInfo&&(identical(other.fromUser, fromUser) || other.fromUser == fromUser)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.walkTime, walkTime) || other.walkTime == walkTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fromUser,unit,walkTime);

@override
String toString() {
  return 'DistanceInfo(fromUser: $fromUser, unit: $unit, walkTime: $walkTime)';
}


}

/// @nodoc
abstract mixin class $DistanceInfoCopyWith<$Res>  {
  factory $DistanceInfoCopyWith(DistanceInfo value, $Res Function(DistanceInfo) _then) = _$DistanceInfoCopyWithImpl;
@useResult
$Res call({
 double fromUser, String unit, int walkTime
});




}
/// @nodoc
class _$DistanceInfoCopyWithImpl<$Res>
    implements $DistanceInfoCopyWith<$Res> {
  _$DistanceInfoCopyWithImpl(this._self, this._then);

  final DistanceInfo _self;
  final $Res Function(DistanceInfo) _then;

/// Create a copy of DistanceInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fromUser = null,Object? unit = null,Object? walkTime = null,}) {
  return _then(_self.copyWith(
fromUser: null == fromUser ? _self.fromUser : fromUser // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,walkTime: null == walkTime ? _self.walkTime : walkTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DistanceInfo].
extension DistanceInfoPatterns on DistanceInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DistanceInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DistanceInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DistanceInfo value)  $default,){
final _that = this;
switch (_that) {
case _DistanceInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DistanceInfo value)?  $default,){
final _that = this;
switch (_that) {
case _DistanceInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double fromUser,  String unit,  int walkTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DistanceInfo() when $default != null:
return $default(_that.fromUser,_that.unit,_that.walkTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double fromUser,  String unit,  int walkTime)  $default,) {final _that = this;
switch (_that) {
case _DistanceInfo():
return $default(_that.fromUser,_that.unit,_that.walkTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double fromUser,  String unit,  int walkTime)?  $default,) {final _that = this;
switch (_that) {
case _DistanceInfo() when $default != null:
return $default(_that.fromUser,_that.unit,_that.walkTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DistanceInfo implements DistanceInfo {
  const _DistanceInfo({required this.fromUser, required this.unit, required this.walkTime});
  factory _DistanceInfo.fromJson(Map<String, dynamic> json) => _$DistanceInfoFromJson(json);

@override final  double fromUser;
@override final  String unit;
@override final  int walkTime;

/// Create a copy of DistanceInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DistanceInfoCopyWith<_DistanceInfo> get copyWith => __$DistanceInfoCopyWithImpl<_DistanceInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DistanceInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DistanceInfo&&(identical(other.fromUser, fromUser) || other.fromUser == fromUser)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.walkTime, walkTime) || other.walkTime == walkTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fromUser,unit,walkTime);

@override
String toString() {
  return 'DistanceInfo(fromUser: $fromUser, unit: $unit, walkTime: $walkTime)';
}


}

/// @nodoc
abstract mixin class _$DistanceInfoCopyWith<$Res> implements $DistanceInfoCopyWith<$Res> {
  factory _$DistanceInfoCopyWith(_DistanceInfo value, $Res Function(_DistanceInfo) _then) = __$DistanceInfoCopyWithImpl;
@override @useResult
$Res call({
 double fromUser, String unit, int walkTime
});




}
/// @nodoc
class __$DistanceInfoCopyWithImpl<$Res>
    implements _$DistanceInfoCopyWith<$Res> {
  __$DistanceInfoCopyWithImpl(this._self, this._then);

  final _DistanceInfo _self;
  final $Res Function(_DistanceInfo) _then;

/// Create a copy of DistanceInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fromUser = null,Object? unit = null,Object? walkTime = null,}) {
  return _then(_DistanceInfo(
fromUser: null == fromUser ? _self.fromUser : fromUser // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,walkTime: null == walkTime ? _self.walkTime : walkTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ClassSchedule {

 String get day;// "today", "tomorrow", "2026-01-21"
 String get time;// "18:30"
 int get duration;// minutes
 int get spotsLeft;
/// Create a copy of ClassSchedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassScheduleCopyWith<ClassSchedule> get copyWith => _$ClassScheduleCopyWithImpl<ClassSchedule>(this as ClassSchedule, _$identity);

  /// Serializes this ClassSchedule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassSchedule&&(identical(other.day, day) || other.day == day)&&(identical(other.time, time) || other.time == time)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.spotsLeft, spotsLeft) || other.spotsLeft == spotsLeft));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,time,duration,spotsLeft);

@override
String toString() {
  return 'ClassSchedule(day: $day, time: $time, duration: $duration, spotsLeft: $spotsLeft)';
}


}

/// @nodoc
abstract mixin class $ClassScheduleCopyWith<$Res>  {
  factory $ClassScheduleCopyWith(ClassSchedule value, $Res Function(ClassSchedule) _then) = _$ClassScheduleCopyWithImpl;
@useResult
$Res call({
 String day, String time, int duration, int spotsLeft
});




}
/// @nodoc
class _$ClassScheduleCopyWithImpl<$Res>
    implements $ClassScheduleCopyWith<$Res> {
  _$ClassScheduleCopyWithImpl(this._self, this._then);

  final ClassSchedule _self;
  final $Res Function(ClassSchedule) _then;

/// Create a copy of ClassSchedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? day = null,Object? time = null,Object? duration = null,Object? spotsLeft = null,}) {
  return _then(_self.copyWith(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,spotsLeft: null == spotsLeft ? _self.spotsLeft : spotsLeft // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassSchedule].
extension ClassSchedulePatterns on ClassSchedule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassSchedule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassSchedule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassSchedule value)  $default,){
final _that = this;
switch (_that) {
case _ClassSchedule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassSchedule value)?  $default,){
final _that = this;
switch (_that) {
case _ClassSchedule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String day,  String time,  int duration,  int spotsLeft)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassSchedule() when $default != null:
return $default(_that.day,_that.time,_that.duration,_that.spotsLeft);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String day,  String time,  int duration,  int spotsLeft)  $default,) {final _that = this;
switch (_that) {
case _ClassSchedule():
return $default(_that.day,_that.time,_that.duration,_that.spotsLeft);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String day,  String time,  int duration,  int spotsLeft)?  $default,) {final _that = this;
switch (_that) {
case _ClassSchedule() when $default != null:
return $default(_that.day,_that.time,_that.duration,_that.spotsLeft);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassSchedule implements ClassSchedule {
  const _ClassSchedule({required this.day, required this.time, required this.duration, required this.spotsLeft});
  factory _ClassSchedule.fromJson(Map<String, dynamic> json) => _$ClassScheduleFromJson(json);

@override final  String day;
// "today", "tomorrow", "2026-01-21"
@override final  String time;
// "18:30"
@override final  int duration;
// minutes
@override final  int spotsLeft;

/// Create a copy of ClassSchedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassScheduleCopyWith<_ClassSchedule> get copyWith => __$ClassScheduleCopyWithImpl<_ClassSchedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassScheduleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassSchedule&&(identical(other.day, day) || other.day == day)&&(identical(other.time, time) || other.time == time)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.spotsLeft, spotsLeft) || other.spotsLeft == spotsLeft));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,time,duration,spotsLeft);

@override
String toString() {
  return 'ClassSchedule(day: $day, time: $time, duration: $duration, spotsLeft: $spotsLeft)';
}


}

/// @nodoc
abstract mixin class _$ClassScheduleCopyWith<$Res> implements $ClassScheduleCopyWith<$Res> {
  factory _$ClassScheduleCopyWith(_ClassSchedule value, $Res Function(_ClassSchedule) _then) = __$ClassScheduleCopyWithImpl;
@override @useResult
$Res call({
 String day, String time, int duration, int spotsLeft
});




}
/// @nodoc
class __$ClassScheduleCopyWithImpl<$Res>
    implements _$ClassScheduleCopyWith<$Res> {
  __$ClassScheduleCopyWithImpl(this._self, this._then);

  final _ClassSchedule _self;
  final $Res Function(_ClassSchedule) _then;

/// Create a copy of ClassSchedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = null,Object? time = null,Object? duration = null,Object? spotsLeft = null,}) {
  return _then(_ClassSchedule(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,spotsLeft: null == spotsLeft ? _self.spotsLeft : spotsLeft // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$WellnessActivity {

 String get id; String get name; String get type;// "yoga", "pilates", etc.
 ActivityIntensity get intensity; List<ClassSchedule> get schedule; String? get instructor; String? get level; String? get description;
/// Create a copy of WellnessActivity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WellnessActivityCopyWith<WellnessActivity> get copyWith => _$WellnessActivityCopyWithImpl<WellnessActivity>(this as WellnessActivity, _$identity);

  /// Serializes this WellnessActivity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WellnessActivity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.intensity, intensity) || other.intensity == intensity)&&const DeepCollectionEquality().equals(other.schedule, schedule)&&(identical(other.instructor, instructor) || other.instructor == instructor)&&(identical(other.level, level) || other.level == level)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,intensity,const DeepCollectionEquality().hash(schedule),instructor,level,description);

@override
String toString() {
  return 'WellnessActivity(id: $id, name: $name, type: $type, intensity: $intensity, schedule: $schedule, instructor: $instructor, level: $level, description: $description)';
}


}

/// @nodoc
abstract mixin class $WellnessActivityCopyWith<$Res>  {
  factory $WellnessActivityCopyWith(WellnessActivity value, $Res Function(WellnessActivity) _then) = _$WellnessActivityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String type, ActivityIntensity intensity, List<ClassSchedule> schedule, String? instructor, String? level, String? description
});




}
/// @nodoc
class _$WellnessActivityCopyWithImpl<$Res>
    implements $WellnessActivityCopyWith<$Res> {
  _$WellnessActivityCopyWithImpl(this._self, this._then);

  final WellnessActivity _self;
  final $Res Function(WellnessActivity) _then;

/// Create a copy of WellnessActivity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? intensity = null,Object? schedule = null,Object? instructor = freezed,Object? level = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,intensity: null == intensity ? _self.intensity : intensity // ignore: cast_nullable_to_non_nullable
as ActivityIntensity,schedule: null == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
as List<ClassSchedule>,instructor: freezed == instructor ? _self.instructor : instructor // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WellnessActivity].
extension WellnessActivityPatterns on WellnessActivity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WellnessActivity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WellnessActivity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WellnessActivity value)  $default,){
final _that = this;
switch (_that) {
case _WellnessActivity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WellnessActivity value)?  $default,){
final _that = this;
switch (_that) {
case _WellnessActivity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String type,  ActivityIntensity intensity,  List<ClassSchedule> schedule,  String? instructor,  String? level,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WellnessActivity() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.intensity,_that.schedule,_that.instructor,_that.level,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String type,  ActivityIntensity intensity,  List<ClassSchedule> schedule,  String? instructor,  String? level,  String? description)  $default,) {final _that = this;
switch (_that) {
case _WellnessActivity():
return $default(_that.id,_that.name,_that.type,_that.intensity,_that.schedule,_that.instructor,_that.level,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String type,  ActivityIntensity intensity,  List<ClassSchedule> schedule,  String? instructor,  String? level,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _WellnessActivity() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.intensity,_that.schedule,_that.instructor,_that.level,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WellnessActivity implements WellnessActivity {
  const _WellnessActivity({required this.id, required this.name, required this.type, required this.intensity, final  List<ClassSchedule> schedule = const [], this.instructor, this.level, this.description}): _schedule = schedule;
  factory _WellnessActivity.fromJson(Map<String, dynamic> json) => _$WellnessActivityFromJson(json);

@override final  String id;
@override final  String name;
@override final  String type;
// "yoga", "pilates", etc.
@override final  ActivityIntensity intensity;
 final  List<ClassSchedule> _schedule;
@override@JsonKey() List<ClassSchedule> get schedule {
  if (_schedule is EqualUnmodifiableListView) return _schedule;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_schedule);
}

@override final  String? instructor;
@override final  String? level;
@override final  String? description;

/// Create a copy of WellnessActivity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WellnessActivityCopyWith<_WellnessActivity> get copyWith => __$WellnessActivityCopyWithImpl<_WellnessActivity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WellnessActivityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WellnessActivity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.intensity, intensity) || other.intensity == intensity)&&const DeepCollectionEquality().equals(other._schedule, _schedule)&&(identical(other.instructor, instructor) || other.instructor == instructor)&&(identical(other.level, level) || other.level == level)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,intensity,const DeepCollectionEquality().hash(_schedule),instructor,level,description);

@override
String toString() {
  return 'WellnessActivity(id: $id, name: $name, type: $type, intensity: $intensity, schedule: $schedule, instructor: $instructor, level: $level, description: $description)';
}


}

/// @nodoc
abstract mixin class _$WellnessActivityCopyWith<$Res> implements $WellnessActivityCopyWith<$Res> {
  factory _$WellnessActivityCopyWith(_WellnessActivity value, $Res Function(_WellnessActivity) _then) = __$WellnessActivityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String type, ActivityIntensity intensity, List<ClassSchedule> schedule, String? instructor, String? level, String? description
});




}
/// @nodoc
class __$WellnessActivityCopyWithImpl<$Res>
    implements _$WellnessActivityCopyWith<$Res> {
  __$WellnessActivityCopyWithImpl(this._self, this._then);

  final _WellnessActivity _self;
  final $Res Function(_WellnessActivity) _then;

/// Create a copy of WellnessActivity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? intensity = null,Object? schedule = null,Object? instructor = freezed,Object? level = freezed,Object? description = freezed,}) {
  return _then(_WellnessActivity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,intensity: null == intensity ? _self.intensity : intensity // ignore: cast_nullable_to_non_nullable
as ActivityIntensity,schedule: null == schedule ? _self._schedule : schedule // ignore: cast_nullable_to_non_nullable
as List<ClassSchedule>,instructor: freezed == instructor ? _self.instructor : instructor // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PricingInfo {

 String? get classpassCredits; double? get dropInPrice; double? get monthlyMembership; String? get bestValue;
/// Create a copy of PricingInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PricingInfoCopyWith<PricingInfo> get copyWith => _$PricingInfoCopyWithImpl<PricingInfo>(this as PricingInfo, _$identity);

  /// Serializes this PricingInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PricingInfo&&(identical(other.classpassCredits, classpassCredits) || other.classpassCredits == classpassCredits)&&(identical(other.dropInPrice, dropInPrice) || other.dropInPrice == dropInPrice)&&(identical(other.monthlyMembership, monthlyMembership) || other.monthlyMembership == monthlyMembership)&&(identical(other.bestValue, bestValue) || other.bestValue == bestValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,classpassCredits,dropInPrice,monthlyMembership,bestValue);

@override
String toString() {
  return 'PricingInfo(classpassCredits: $classpassCredits, dropInPrice: $dropInPrice, monthlyMembership: $monthlyMembership, bestValue: $bestValue)';
}


}

/// @nodoc
abstract mixin class $PricingInfoCopyWith<$Res>  {
  factory $PricingInfoCopyWith(PricingInfo value, $Res Function(PricingInfo) _then) = _$PricingInfoCopyWithImpl;
@useResult
$Res call({
 String? classpassCredits, double? dropInPrice, double? monthlyMembership, String? bestValue
});




}
/// @nodoc
class _$PricingInfoCopyWithImpl<$Res>
    implements $PricingInfoCopyWith<$Res> {
  _$PricingInfoCopyWithImpl(this._self, this._then);

  final PricingInfo _self;
  final $Res Function(PricingInfo) _then;

/// Create a copy of PricingInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classpassCredits = freezed,Object? dropInPrice = freezed,Object? monthlyMembership = freezed,Object? bestValue = freezed,}) {
  return _then(_self.copyWith(
classpassCredits: freezed == classpassCredits ? _self.classpassCredits : classpassCredits // ignore: cast_nullable_to_non_nullable
as String?,dropInPrice: freezed == dropInPrice ? _self.dropInPrice : dropInPrice // ignore: cast_nullable_to_non_nullable
as double?,monthlyMembership: freezed == monthlyMembership ? _self.monthlyMembership : monthlyMembership // ignore: cast_nullable_to_non_nullable
as double?,bestValue: freezed == bestValue ? _self.bestValue : bestValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PricingInfo].
extension PricingInfoPatterns on PricingInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PricingInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PricingInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PricingInfo value)  $default,){
final _that = this;
switch (_that) {
case _PricingInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PricingInfo value)?  $default,){
final _that = this;
switch (_that) {
case _PricingInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? classpassCredits,  double? dropInPrice,  double? monthlyMembership,  String? bestValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PricingInfo() when $default != null:
return $default(_that.classpassCredits,_that.dropInPrice,_that.monthlyMembership,_that.bestValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? classpassCredits,  double? dropInPrice,  double? monthlyMembership,  String? bestValue)  $default,) {final _that = this;
switch (_that) {
case _PricingInfo():
return $default(_that.classpassCredits,_that.dropInPrice,_that.monthlyMembership,_that.bestValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? classpassCredits,  double? dropInPrice,  double? monthlyMembership,  String? bestValue)?  $default,) {final _that = this;
switch (_that) {
case _PricingInfo() when $default != null:
return $default(_that.classpassCredits,_that.dropInPrice,_that.monthlyMembership,_that.bestValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PricingInfo implements PricingInfo {
  const _PricingInfo({this.classpassCredits, this.dropInPrice, this.monthlyMembership, this.bestValue});
  factory _PricingInfo.fromJson(Map<String, dynamic> json) => _$PricingInfoFromJson(json);

@override final  String? classpassCredits;
@override final  double? dropInPrice;
@override final  double? monthlyMembership;
@override final  String? bestValue;

/// Create a copy of PricingInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PricingInfoCopyWith<_PricingInfo> get copyWith => __$PricingInfoCopyWithImpl<_PricingInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PricingInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PricingInfo&&(identical(other.classpassCredits, classpassCredits) || other.classpassCredits == classpassCredits)&&(identical(other.dropInPrice, dropInPrice) || other.dropInPrice == dropInPrice)&&(identical(other.monthlyMembership, monthlyMembership) || other.monthlyMembership == monthlyMembership)&&(identical(other.bestValue, bestValue) || other.bestValue == bestValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,classpassCredits,dropInPrice,monthlyMembership,bestValue);

@override
String toString() {
  return 'PricingInfo(classpassCredits: $classpassCredits, dropInPrice: $dropInPrice, monthlyMembership: $monthlyMembership, bestValue: $bestValue)';
}


}

/// @nodoc
abstract mixin class _$PricingInfoCopyWith<$Res> implements $PricingInfoCopyWith<$Res> {
  factory _$PricingInfoCopyWith(_PricingInfo value, $Res Function(_PricingInfo) _then) = __$PricingInfoCopyWithImpl;
@override @useResult
$Res call({
 String? classpassCredits, double? dropInPrice, double? monthlyMembership, String? bestValue
});




}
/// @nodoc
class __$PricingInfoCopyWithImpl<$Res>
    implements _$PricingInfoCopyWith<$Res> {
  __$PricingInfoCopyWithImpl(this._self, this._then);

  final _PricingInfo _self;
  final $Res Function(_PricingInfo) _then;

/// Create a copy of PricingInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classpassCredits = freezed,Object? dropInPrice = freezed,Object? monthlyMembership = freezed,Object? bestValue = freezed,}) {
  return _then(_PricingInfo(
classpassCredits: freezed == classpassCredits ? _self.classpassCredits : classpassCredits // ignore: cast_nullable_to_non_nullable
as String?,dropInPrice: freezed == dropInPrice ? _self.dropInPrice : dropInPrice // ignore: cast_nullable_to_non_nullable
as double?,monthlyMembership: freezed == monthlyMembership ? _self.monthlyMembership : monthlyMembership // ignore: cast_nullable_to_non_nullable
as double?,bestValue: freezed == bestValue ? _self.bestValue : bestValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UserVenueHistory {

 int get visitCount; DateTime? get lastVisit; String? get favoriteActivity; double? get averageRating; String? get hrvImpact; double? get completionRate;
/// Create a copy of UserVenueHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserVenueHistoryCopyWith<UserVenueHistory> get copyWith => _$UserVenueHistoryCopyWithImpl<UserVenueHistory>(this as UserVenueHistory, _$identity);

  /// Serializes this UserVenueHistory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserVenueHistory&&(identical(other.visitCount, visitCount) || other.visitCount == visitCount)&&(identical(other.lastVisit, lastVisit) || other.lastVisit == lastVisit)&&(identical(other.favoriteActivity, favoriteActivity) || other.favoriteActivity == favoriteActivity)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.hrvImpact, hrvImpact) || other.hrvImpact == hrvImpact)&&(identical(other.completionRate, completionRate) || other.completionRate == completionRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,visitCount,lastVisit,favoriteActivity,averageRating,hrvImpact,completionRate);

@override
String toString() {
  return 'UserVenueHistory(visitCount: $visitCount, lastVisit: $lastVisit, favoriteActivity: $favoriteActivity, averageRating: $averageRating, hrvImpact: $hrvImpact, completionRate: $completionRate)';
}


}

/// @nodoc
abstract mixin class $UserVenueHistoryCopyWith<$Res>  {
  factory $UserVenueHistoryCopyWith(UserVenueHistory value, $Res Function(UserVenueHistory) _then) = _$UserVenueHistoryCopyWithImpl;
@useResult
$Res call({
 int visitCount, DateTime? lastVisit, String? favoriteActivity, double? averageRating, String? hrvImpact, double? completionRate
});




}
/// @nodoc
class _$UserVenueHistoryCopyWithImpl<$Res>
    implements $UserVenueHistoryCopyWith<$Res> {
  _$UserVenueHistoryCopyWithImpl(this._self, this._then);

  final UserVenueHistory _self;
  final $Res Function(UserVenueHistory) _then;

/// Create a copy of UserVenueHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? visitCount = null,Object? lastVisit = freezed,Object? favoriteActivity = freezed,Object? averageRating = freezed,Object? hrvImpact = freezed,Object? completionRate = freezed,}) {
  return _then(_self.copyWith(
visitCount: null == visitCount ? _self.visitCount : visitCount // ignore: cast_nullable_to_non_nullable
as int,lastVisit: freezed == lastVisit ? _self.lastVisit : lastVisit // ignore: cast_nullable_to_non_nullable
as DateTime?,favoriteActivity: freezed == favoriteActivity ? _self.favoriteActivity : favoriteActivity // ignore: cast_nullable_to_non_nullable
as String?,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double?,hrvImpact: freezed == hrvImpact ? _self.hrvImpact : hrvImpact // ignore: cast_nullable_to_non_nullable
as String?,completionRate: freezed == completionRate ? _self.completionRate : completionRate // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserVenueHistory].
extension UserVenueHistoryPatterns on UserVenueHistory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserVenueHistory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserVenueHistory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserVenueHistory value)  $default,){
final _that = this;
switch (_that) {
case _UserVenueHistory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserVenueHistory value)?  $default,){
final _that = this;
switch (_that) {
case _UserVenueHistory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int visitCount,  DateTime? lastVisit,  String? favoriteActivity,  double? averageRating,  String? hrvImpact,  double? completionRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserVenueHistory() when $default != null:
return $default(_that.visitCount,_that.lastVisit,_that.favoriteActivity,_that.averageRating,_that.hrvImpact,_that.completionRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int visitCount,  DateTime? lastVisit,  String? favoriteActivity,  double? averageRating,  String? hrvImpact,  double? completionRate)  $default,) {final _that = this;
switch (_that) {
case _UserVenueHistory():
return $default(_that.visitCount,_that.lastVisit,_that.favoriteActivity,_that.averageRating,_that.hrvImpact,_that.completionRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int visitCount,  DateTime? lastVisit,  String? favoriteActivity,  double? averageRating,  String? hrvImpact,  double? completionRate)?  $default,) {final _that = this;
switch (_that) {
case _UserVenueHistory() when $default != null:
return $default(_that.visitCount,_that.lastVisit,_that.favoriteActivity,_that.averageRating,_that.hrvImpact,_that.completionRate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserVenueHistory implements UserVenueHistory {
  const _UserVenueHistory({required this.visitCount, this.lastVisit, this.favoriteActivity, this.averageRating, this.hrvImpact, this.completionRate});
  factory _UserVenueHistory.fromJson(Map<String, dynamic> json) => _$UserVenueHistoryFromJson(json);

@override final  int visitCount;
@override final  DateTime? lastVisit;
@override final  String? favoriteActivity;
@override final  double? averageRating;
@override final  String? hrvImpact;
@override final  double? completionRate;

/// Create a copy of UserVenueHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserVenueHistoryCopyWith<_UserVenueHistory> get copyWith => __$UserVenueHistoryCopyWithImpl<_UserVenueHistory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserVenueHistoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserVenueHistory&&(identical(other.visitCount, visitCount) || other.visitCount == visitCount)&&(identical(other.lastVisit, lastVisit) || other.lastVisit == lastVisit)&&(identical(other.favoriteActivity, favoriteActivity) || other.favoriteActivity == favoriteActivity)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.hrvImpact, hrvImpact) || other.hrvImpact == hrvImpact)&&(identical(other.completionRate, completionRate) || other.completionRate == completionRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,visitCount,lastVisit,favoriteActivity,averageRating,hrvImpact,completionRate);

@override
String toString() {
  return 'UserVenueHistory(visitCount: $visitCount, lastVisit: $lastVisit, favoriteActivity: $favoriteActivity, averageRating: $averageRating, hrvImpact: $hrvImpact, completionRate: $completionRate)';
}


}

/// @nodoc
abstract mixin class _$UserVenueHistoryCopyWith<$Res> implements $UserVenueHistoryCopyWith<$Res> {
  factory _$UserVenueHistoryCopyWith(_UserVenueHistory value, $Res Function(_UserVenueHistory) _then) = __$UserVenueHistoryCopyWithImpl;
@override @useResult
$Res call({
 int visitCount, DateTime? lastVisit, String? favoriteActivity, double? averageRating, String? hrvImpact, double? completionRate
});




}
/// @nodoc
class __$UserVenueHistoryCopyWithImpl<$Res>
    implements _$UserVenueHistoryCopyWith<$Res> {
  __$UserVenueHistoryCopyWithImpl(this._self, this._then);

  final _UserVenueHistory _self;
  final $Res Function(_UserVenueHistory) _then;

/// Create a copy of UserVenueHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? visitCount = null,Object? lastVisit = freezed,Object? favoriteActivity = freezed,Object? averageRating = freezed,Object? hrvImpact = freezed,Object? completionRate = freezed,}) {
  return _then(_UserVenueHistory(
visitCount: null == visitCount ? _self.visitCount : visitCount // ignore: cast_nullable_to_non_nullable
as int,lastVisit: freezed == lastVisit ? _self.lastVisit : lastVisit // ignore: cast_nullable_to_non_nullable
as DateTime?,favoriteActivity: freezed == favoriteActivity ? _self.favoriteActivity : favoriteActivity // ignore: cast_nullable_to_non_nullable
as String?,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double?,hrvImpact: freezed == hrvImpact ? _self.hrvImpact : hrvImpact // ignore: cast_nullable_to_non_nullable
as String?,completionRate: freezed == completionRate ? _self.completionRate : completionRate // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$WellnessVenue {

 String get id; String get name; VenueType get type; String get address; List<double> get coordinates; DistanceInfo get distance; WellnessProvider get provider; double get rating; int get reviewCount; PriceLevel get priceLevel; PricingInfo get pricing; List<String> get amenities; List<WellnessActivity> get activities; List<String> get images; List<String> get highlights; String? get phone; String? get website; String? get description; List<String> get tags; UserVenueHistory? get userHistory; bool get isSaved; bool get isRecommended; String? get recommendationReason;
/// Create a copy of WellnessVenue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WellnessVenueCopyWith<WellnessVenue> get copyWith => _$WellnessVenueCopyWithImpl<WellnessVenue>(this as WellnessVenue, _$identity);

  /// Serializes this WellnessVenue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WellnessVenue&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.coordinates, coordinates)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&(identical(other.pricing, pricing) || other.pricing == pricing)&&const DeepCollectionEquality().equals(other.amenities, amenities)&&const DeepCollectionEquality().equals(other.activities, activities)&&const DeepCollectionEquality().equals(other.images, images)&&const DeepCollectionEquality().equals(other.highlights, highlights)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.website, website) || other.website == website)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.userHistory, userHistory) || other.userHistory == userHistory)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.isRecommended, isRecommended) || other.isRecommended == isRecommended)&&(identical(other.recommendationReason, recommendationReason) || other.recommendationReason == recommendationReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,type,address,const DeepCollectionEquality().hash(coordinates),distance,provider,rating,reviewCount,priceLevel,pricing,const DeepCollectionEquality().hash(amenities),const DeepCollectionEquality().hash(activities),const DeepCollectionEquality().hash(images),const DeepCollectionEquality().hash(highlights),phone,website,description,const DeepCollectionEquality().hash(tags),userHistory,isSaved,isRecommended,recommendationReason]);

@override
String toString() {
  return 'WellnessVenue(id: $id, name: $name, type: $type, address: $address, coordinates: $coordinates, distance: $distance, provider: $provider, rating: $rating, reviewCount: $reviewCount, priceLevel: $priceLevel, pricing: $pricing, amenities: $amenities, activities: $activities, images: $images, highlights: $highlights, phone: $phone, website: $website, description: $description, tags: $tags, userHistory: $userHistory, isSaved: $isSaved, isRecommended: $isRecommended, recommendationReason: $recommendationReason)';
}


}

/// @nodoc
abstract mixin class $WellnessVenueCopyWith<$Res>  {
  factory $WellnessVenueCopyWith(WellnessVenue value, $Res Function(WellnessVenue) _then) = _$WellnessVenueCopyWithImpl;
@useResult
$Res call({
 String id, String name, VenueType type, String address, List<double> coordinates, DistanceInfo distance, WellnessProvider provider, double rating, int reviewCount, PriceLevel priceLevel, PricingInfo pricing, List<String> amenities, List<WellnessActivity> activities, List<String> images, List<String> highlights, String? phone, String? website, String? description, List<String> tags, UserVenueHistory? userHistory, bool isSaved, bool isRecommended, String? recommendationReason
});


$DistanceInfoCopyWith<$Res> get distance;$PricingInfoCopyWith<$Res> get pricing;$UserVenueHistoryCopyWith<$Res>? get userHistory;

}
/// @nodoc
class _$WellnessVenueCopyWithImpl<$Res>
    implements $WellnessVenueCopyWith<$Res> {
  _$WellnessVenueCopyWithImpl(this._self, this._then);

  final WellnessVenue _self;
  final $Res Function(WellnessVenue) _then;

/// Create a copy of WellnessVenue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? address = null,Object? coordinates = null,Object? distance = null,Object? provider = null,Object? rating = null,Object? reviewCount = null,Object? priceLevel = null,Object? pricing = null,Object? amenities = null,Object? activities = null,Object? images = null,Object? highlights = null,Object? phone = freezed,Object? website = freezed,Object? description = freezed,Object? tags = null,Object? userHistory = freezed,Object? isSaved = null,Object? isRecommended = null,Object? recommendationReason = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as VenueType,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,coordinates: null == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as List<double>,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as DistanceInfo,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as WellnessProvider,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,priceLevel: null == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as PriceLevel,pricing: null == pricing ? _self.pricing : pricing // ignore: cast_nullable_to_non_nullable
as PricingInfo,amenities: null == amenities ? _self.amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<String>,activities: null == activities ? _self.activities : activities // ignore: cast_nullable_to_non_nullable
as List<WellnessActivity>,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,highlights: null == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as List<String>,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,userHistory: freezed == userHistory ? _self.userHistory : userHistory // ignore: cast_nullable_to_non_nullable
as UserVenueHistory?,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,isRecommended: null == isRecommended ? _self.isRecommended : isRecommended // ignore: cast_nullable_to_non_nullable
as bool,recommendationReason: freezed == recommendationReason ? _self.recommendationReason : recommendationReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of WellnessVenue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DistanceInfoCopyWith<$Res> get distance {
  
  return $DistanceInfoCopyWith<$Res>(_self.distance, (value) {
    return _then(_self.copyWith(distance: value));
  });
}/// Create a copy of WellnessVenue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PricingInfoCopyWith<$Res> get pricing {
  
  return $PricingInfoCopyWith<$Res>(_self.pricing, (value) {
    return _then(_self.copyWith(pricing: value));
  });
}/// Create a copy of WellnessVenue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserVenueHistoryCopyWith<$Res>? get userHistory {
    if (_self.userHistory == null) {
    return null;
  }

  return $UserVenueHistoryCopyWith<$Res>(_self.userHistory!, (value) {
    return _then(_self.copyWith(userHistory: value));
  });
}
}


/// Adds pattern-matching-related methods to [WellnessVenue].
extension WellnessVenuePatterns on WellnessVenue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WellnessVenue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WellnessVenue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WellnessVenue value)  $default,){
final _that = this;
switch (_that) {
case _WellnessVenue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WellnessVenue value)?  $default,){
final _that = this;
switch (_that) {
case _WellnessVenue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  VenueType type,  String address,  List<double> coordinates,  DistanceInfo distance,  WellnessProvider provider,  double rating,  int reviewCount,  PriceLevel priceLevel,  PricingInfo pricing,  List<String> amenities,  List<WellnessActivity> activities,  List<String> images,  List<String> highlights,  String? phone,  String? website,  String? description,  List<String> tags,  UserVenueHistory? userHistory,  bool isSaved,  bool isRecommended,  String? recommendationReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WellnessVenue() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.address,_that.coordinates,_that.distance,_that.provider,_that.rating,_that.reviewCount,_that.priceLevel,_that.pricing,_that.amenities,_that.activities,_that.images,_that.highlights,_that.phone,_that.website,_that.description,_that.tags,_that.userHistory,_that.isSaved,_that.isRecommended,_that.recommendationReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  VenueType type,  String address,  List<double> coordinates,  DistanceInfo distance,  WellnessProvider provider,  double rating,  int reviewCount,  PriceLevel priceLevel,  PricingInfo pricing,  List<String> amenities,  List<WellnessActivity> activities,  List<String> images,  List<String> highlights,  String? phone,  String? website,  String? description,  List<String> tags,  UserVenueHistory? userHistory,  bool isSaved,  bool isRecommended,  String? recommendationReason)  $default,) {final _that = this;
switch (_that) {
case _WellnessVenue():
return $default(_that.id,_that.name,_that.type,_that.address,_that.coordinates,_that.distance,_that.provider,_that.rating,_that.reviewCount,_that.priceLevel,_that.pricing,_that.amenities,_that.activities,_that.images,_that.highlights,_that.phone,_that.website,_that.description,_that.tags,_that.userHistory,_that.isSaved,_that.isRecommended,_that.recommendationReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  VenueType type,  String address,  List<double> coordinates,  DistanceInfo distance,  WellnessProvider provider,  double rating,  int reviewCount,  PriceLevel priceLevel,  PricingInfo pricing,  List<String> amenities,  List<WellnessActivity> activities,  List<String> images,  List<String> highlights,  String? phone,  String? website,  String? description,  List<String> tags,  UserVenueHistory? userHistory,  bool isSaved,  bool isRecommended,  String? recommendationReason)?  $default,) {final _that = this;
switch (_that) {
case _WellnessVenue() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.address,_that.coordinates,_that.distance,_that.provider,_that.rating,_that.reviewCount,_that.priceLevel,_that.pricing,_that.amenities,_that.activities,_that.images,_that.highlights,_that.phone,_that.website,_that.description,_that.tags,_that.userHistory,_that.isSaved,_that.isRecommended,_that.recommendationReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WellnessVenue implements WellnessVenue {
  const _WellnessVenue({required this.id, required this.name, required this.type, required this.address, required final  List<double> coordinates, required this.distance, required this.provider, required this.rating, required this.reviewCount, required this.priceLevel, required this.pricing, final  List<String> amenities = const [], final  List<WellnessActivity> activities = const [], final  List<String> images = const [], final  List<String> highlights = const [], this.phone, this.website, this.description, final  List<String> tags = const [], this.userHistory, this.isSaved = false, this.isRecommended = false, this.recommendationReason}): _coordinates = coordinates,_amenities = amenities,_activities = activities,_images = images,_highlights = highlights,_tags = tags;
  factory _WellnessVenue.fromJson(Map<String, dynamic> json) => _$WellnessVenueFromJson(json);

@override final  String id;
@override final  String name;
@override final  VenueType type;
@override final  String address;
 final  List<double> _coordinates;
@override List<double> get coordinates {
  if (_coordinates is EqualUnmodifiableListView) return _coordinates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_coordinates);
}

@override final  DistanceInfo distance;
@override final  WellnessProvider provider;
@override final  double rating;
@override final  int reviewCount;
@override final  PriceLevel priceLevel;
@override final  PricingInfo pricing;
 final  List<String> _amenities;
@override@JsonKey() List<String> get amenities {
  if (_amenities is EqualUnmodifiableListView) return _amenities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_amenities);
}

 final  List<WellnessActivity> _activities;
@override@JsonKey() List<WellnessActivity> get activities {
  if (_activities is EqualUnmodifiableListView) return _activities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activities);
}

 final  List<String> _images;
@override@JsonKey() List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  List<String> _highlights;
@override@JsonKey() List<String> get highlights {
  if (_highlights is EqualUnmodifiableListView) return _highlights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_highlights);
}

@override final  String? phone;
@override final  String? website;
@override final  String? description;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  UserVenueHistory? userHistory;
@override@JsonKey() final  bool isSaved;
@override@JsonKey() final  bool isRecommended;
@override final  String? recommendationReason;

/// Create a copy of WellnessVenue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WellnessVenueCopyWith<_WellnessVenue> get copyWith => __$WellnessVenueCopyWithImpl<_WellnessVenue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WellnessVenueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WellnessVenue&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other._coordinates, _coordinates)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&(identical(other.pricing, pricing) || other.pricing == pricing)&&const DeepCollectionEquality().equals(other._amenities, _amenities)&&const DeepCollectionEquality().equals(other._activities, _activities)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._highlights, _highlights)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.website, website) || other.website == website)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.userHistory, userHistory) || other.userHistory == userHistory)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.isRecommended, isRecommended) || other.isRecommended == isRecommended)&&(identical(other.recommendationReason, recommendationReason) || other.recommendationReason == recommendationReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,type,address,const DeepCollectionEquality().hash(_coordinates),distance,provider,rating,reviewCount,priceLevel,pricing,const DeepCollectionEquality().hash(_amenities),const DeepCollectionEquality().hash(_activities),const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_highlights),phone,website,description,const DeepCollectionEquality().hash(_tags),userHistory,isSaved,isRecommended,recommendationReason]);

@override
String toString() {
  return 'WellnessVenue(id: $id, name: $name, type: $type, address: $address, coordinates: $coordinates, distance: $distance, provider: $provider, rating: $rating, reviewCount: $reviewCount, priceLevel: $priceLevel, pricing: $pricing, amenities: $amenities, activities: $activities, images: $images, highlights: $highlights, phone: $phone, website: $website, description: $description, tags: $tags, userHistory: $userHistory, isSaved: $isSaved, isRecommended: $isRecommended, recommendationReason: $recommendationReason)';
}


}

/// @nodoc
abstract mixin class _$WellnessVenueCopyWith<$Res> implements $WellnessVenueCopyWith<$Res> {
  factory _$WellnessVenueCopyWith(_WellnessVenue value, $Res Function(_WellnessVenue) _then) = __$WellnessVenueCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, VenueType type, String address, List<double> coordinates, DistanceInfo distance, WellnessProvider provider, double rating, int reviewCount, PriceLevel priceLevel, PricingInfo pricing, List<String> amenities, List<WellnessActivity> activities, List<String> images, List<String> highlights, String? phone, String? website, String? description, List<String> tags, UserVenueHistory? userHistory, bool isSaved, bool isRecommended, String? recommendationReason
});


@override $DistanceInfoCopyWith<$Res> get distance;@override $PricingInfoCopyWith<$Res> get pricing;@override $UserVenueHistoryCopyWith<$Res>? get userHistory;

}
/// @nodoc
class __$WellnessVenueCopyWithImpl<$Res>
    implements _$WellnessVenueCopyWith<$Res> {
  __$WellnessVenueCopyWithImpl(this._self, this._then);

  final _WellnessVenue _self;
  final $Res Function(_WellnessVenue) _then;

/// Create a copy of WellnessVenue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? address = null,Object? coordinates = null,Object? distance = null,Object? provider = null,Object? rating = null,Object? reviewCount = null,Object? priceLevel = null,Object? pricing = null,Object? amenities = null,Object? activities = null,Object? images = null,Object? highlights = null,Object? phone = freezed,Object? website = freezed,Object? description = freezed,Object? tags = null,Object? userHistory = freezed,Object? isSaved = null,Object? isRecommended = null,Object? recommendationReason = freezed,}) {
  return _then(_WellnessVenue(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as VenueType,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,coordinates: null == coordinates ? _self._coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as List<double>,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as DistanceInfo,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as WellnessProvider,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,priceLevel: null == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as PriceLevel,pricing: null == pricing ? _self.pricing : pricing // ignore: cast_nullable_to_non_nullable
as PricingInfo,amenities: null == amenities ? _self._amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<String>,activities: null == activities ? _self._activities : activities // ignore: cast_nullable_to_non_nullable
as List<WellnessActivity>,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,highlights: null == highlights ? _self._highlights : highlights // ignore: cast_nullable_to_non_nullable
as List<String>,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,userHistory: freezed == userHistory ? _self.userHistory : userHistory // ignore: cast_nullable_to_non_nullable
as UserVenueHistory?,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,isRecommended: null == isRecommended ? _self.isRecommended : isRecommended // ignore: cast_nullable_to_non_nullable
as bool,recommendationReason: freezed == recommendationReason ? _self.recommendationReason : recommendationReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of WellnessVenue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DistanceInfoCopyWith<$Res> get distance {
  
  return $DistanceInfoCopyWith<$Res>(_self.distance, (value) {
    return _then(_self.copyWith(distance: value));
  });
}/// Create a copy of WellnessVenue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PricingInfoCopyWith<$Res> get pricing {
  
  return $PricingInfoCopyWith<$Res>(_self.pricing, (value) {
    return _then(_self.copyWith(pricing: value));
  });
}/// Create a copy of WellnessVenue
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserVenueHistoryCopyWith<$Res>? get userHistory {
    if (_self.userHistory == null) {
    return null;
  }

  return $UserVenueHistoryCopyWith<$Res>(_self.userHistory!, (value) {
    return _then(_self.copyWith(userHistory: value));
  });
}
}


/// @nodoc
mixin _$WellnessFilters {

 List<String> get activityTypes; List<String> get timeSlots; double? get maxDistance; List<PriceLevel> get priceRange; List<ActivityIntensity> get intensity; List<String> get amenities; List<WellnessProvider> get providers; List<String> get specialFilters;// "recommended", "new_to_you", etc.
 bool get availableNow; bool get savedOnly;
/// Create a copy of WellnessFilters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WellnessFiltersCopyWith<WellnessFilters> get copyWith => _$WellnessFiltersCopyWithImpl<WellnessFilters>(this as WellnessFilters, _$identity);

  /// Serializes this WellnessFilters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WellnessFilters&&const DeepCollectionEquality().equals(other.activityTypes, activityTypes)&&const DeepCollectionEquality().equals(other.timeSlots, timeSlots)&&(identical(other.maxDistance, maxDistance) || other.maxDistance == maxDistance)&&const DeepCollectionEquality().equals(other.priceRange, priceRange)&&const DeepCollectionEquality().equals(other.intensity, intensity)&&const DeepCollectionEquality().equals(other.amenities, amenities)&&const DeepCollectionEquality().equals(other.providers, providers)&&const DeepCollectionEquality().equals(other.specialFilters, specialFilters)&&(identical(other.availableNow, availableNow) || other.availableNow == availableNow)&&(identical(other.savedOnly, savedOnly) || other.savedOnly == savedOnly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(activityTypes),const DeepCollectionEquality().hash(timeSlots),maxDistance,const DeepCollectionEquality().hash(priceRange),const DeepCollectionEquality().hash(intensity),const DeepCollectionEquality().hash(amenities),const DeepCollectionEquality().hash(providers),const DeepCollectionEquality().hash(specialFilters),availableNow,savedOnly);

@override
String toString() {
  return 'WellnessFilters(activityTypes: $activityTypes, timeSlots: $timeSlots, maxDistance: $maxDistance, priceRange: $priceRange, intensity: $intensity, amenities: $amenities, providers: $providers, specialFilters: $specialFilters, availableNow: $availableNow, savedOnly: $savedOnly)';
}


}

/// @nodoc
abstract mixin class $WellnessFiltersCopyWith<$Res>  {
  factory $WellnessFiltersCopyWith(WellnessFilters value, $Res Function(WellnessFilters) _then) = _$WellnessFiltersCopyWithImpl;
@useResult
$Res call({
 List<String> activityTypes, List<String> timeSlots, double? maxDistance, List<PriceLevel> priceRange, List<ActivityIntensity> intensity, List<String> amenities, List<WellnessProvider> providers, List<String> specialFilters, bool availableNow, bool savedOnly
});




}
/// @nodoc
class _$WellnessFiltersCopyWithImpl<$Res>
    implements $WellnessFiltersCopyWith<$Res> {
  _$WellnessFiltersCopyWithImpl(this._self, this._then);

  final WellnessFilters _self;
  final $Res Function(WellnessFilters) _then;

/// Create a copy of WellnessFilters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activityTypes = null,Object? timeSlots = null,Object? maxDistance = freezed,Object? priceRange = null,Object? intensity = null,Object? amenities = null,Object? providers = null,Object? specialFilters = null,Object? availableNow = null,Object? savedOnly = null,}) {
  return _then(_self.copyWith(
activityTypes: null == activityTypes ? _self.activityTypes : activityTypes // ignore: cast_nullable_to_non_nullable
as List<String>,timeSlots: null == timeSlots ? _self.timeSlots : timeSlots // ignore: cast_nullable_to_non_nullable
as List<String>,maxDistance: freezed == maxDistance ? _self.maxDistance : maxDistance // ignore: cast_nullable_to_non_nullable
as double?,priceRange: null == priceRange ? _self.priceRange : priceRange // ignore: cast_nullable_to_non_nullable
as List<PriceLevel>,intensity: null == intensity ? _self.intensity : intensity // ignore: cast_nullable_to_non_nullable
as List<ActivityIntensity>,amenities: null == amenities ? _self.amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<String>,providers: null == providers ? _self.providers : providers // ignore: cast_nullable_to_non_nullable
as List<WellnessProvider>,specialFilters: null == specialFilters ? _self.specialFilters : specialFilters // ignore: cast_nullable_to_non_nullable
as List<String>,availableNow: null == availableNow ? _self.availableNow : availableNow // ignore: cast_nullable_to_non_nullable
as bool,savedOnly: null == savedOnly ? _self.savedOnly : savedOnly // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WellnessFilters].
extension WellnessFiltersPatterns on WellnessFilters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WellnessFilters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WellnessFilters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WellnessFilters value)  $default,){
final _that = this;
switch (_that) {
case _WellnessFilters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WellnessFilters value)?  $default,){
final _that = this;
switch (_that) {
case _WellnessFilters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> activityTypes,  List<String> timeSlots,  double? maxDistance,  List<PriceLevel> priceRange,  List<ActivityIntensity> intensity,  List<String> amenities,  List<WellnessProvider> providers,  List<String> specialFilters,  bool availableNow,  bool savedOnly)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WellnessFilters() when $default != null:
return $default(_that.activityTypes,_that.timeSlots,_that.maxDistance,_that.priceRange,_that.intensity,_that.amenities,_that.providers,_that.specialFilters,_that.availableNow,_that.savedOnly);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> activityTypes,  List<String> timeSlots,  double? maxDistance,  List<PriceLevel> priceRange,  List<ActivityIntensity> intensity,  List<String> amenities,  List<WellnessProvider> providers,  List<String> specialFilters,  bool availableNow,  bool savedOnly)  $default,) {final _that = this;
switch (_that) {
case _WellnessFilters():
return $default(_that.activityTypes,_that.timeSlots,_that.maxDistance,_that.priceRange,_that.intensity,_that.amenities,_that.providers,_that.specialFilters,_that.availableNow,_that.savedOnly);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> activityTypes,  List<String> timeSlots,  double? maxDistance,  List<PriceLevel> priceRange,  List<ActivityIntensity> intensity,  List<String> amenities,  List<WellnessProvider> providers,  List<String> specialFilters,  bool availableNow,  bool savedOnly)?  $default,) {final _that = this;
switch (_that) {
case _WellnessFilters() when $default != null:
return $default(_that.activityTypes,_that.timeSlots,_that.maxDistance,_that.priceRange,_that.intensity,_that.amenities,_that.providers,_that.specialFilters,_that.availableNow,_that.savedOnly);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WellnessFilters implements WellnessFilters {
  const _WellnessFilters({final  List<String> activityTypes = const [], final  List<String> timeSlots = const [], this.maxDistance, final  List<PriceLevel> priceRange = const [], final  List<ActivityIntensity> intensity = const [], final  List<String> amenities = const [], final  List<WellnessProvider> providers = const [], final  List<String> specialFilters = const [], this.availableNow = false, this.savedOnly = false}): _activityTypes = activityTypes,_timeSlots = timeSlots,_priceRange = priceRange,_intensity = intensity,_amenities = amenities,_providers = providers,_specialFilters = specialFilters;
  factory _WellnessFilters.fromJson(Map<String, dynamic> json) => _$WellnessFiltersFromJson(json);

 final  List<String> _activityTypes;
@override@JsonKey() List<String> get activityTypes {
  if (_activityTypes is EqualUnmodifiableListView) return _activityTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activityTypes);
}

 final  List<String> _timeSlots;
@override@JsonKey() List<String> get timeSlots {
  if (_timeSlots is EqualUnmodifiableListView) return _timeSlots;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_timeSlots);
}

@override final  double? maxDistance;
 final  List<PriceLevel> _priceRange;
@override@JsonKey() List<PriceLevel> get priceRange {
  if (_priceRange is EqualUnmodifiableListView) return _priceRange;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_priceRange);
}

 final  List<ActivityIntensity> _intensity;
@override@JsonKey() List<ActivityIntensity> get intensity {
  if (_intensity is EqualUnmodifiableListView) return _intensity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_intensity);
}

 final  List<String> _amenities;
@override@JsonKey() List<String> get amenities {
  if (_amenities is EqualUnmodifiableListView) return _amenities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_amenities);
}

 final  List<WellnessProvider> _providers;
@override@JsonKey() List<WellnessProvider> get providers {
  if (_providers is EqualUnmodifiableListView) return _providers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_providers);
}

 final  List<String> _specialFilters;
@override@JsonKey() List<String> get specialFilters {
  if (_specialFilters is EqualUnmodifiableListView) return _specialFilters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specialFilters);
}

// "recommended", "new_to_you", etc.
@override@JsonKey() final  bool availableNow;
@override@JsonKey() final  bool savedOnly;

/// Create a copy of WellnessFilters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WellnessFiltersCopyWith<_WellnessFilters> get copyWith => __$WellnessFiltersCopyWithImpl<_WellnessFilters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WellnessFiltersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WellnessFilters&&const DeepCollectionEquality().equals(other._activityTypes, _activityTypes)&&const DeepCollectionEquality().equals(other._timeSlots, _timeSlots)&&(identical(other.maxDistance, maxDistance) || other.maxDistance == maxDistance)&&const DeepCollectionEquality().equals(other._priceRange, _priceRange)&&const DeepCollectionEquality().equals(other._intensity, _intensity)&&const DeepCollectionEquality().equals(other._amenities, _amenities)&&const DeepCollectionEquality().equals(other._providers, _providers)&&const DeepCollectionEquality().equals(other._specialFilters, _specialFilters)&&(identical(other.availableNow, availableNow) || other.availableNow == availableNow)&&(identical(other.savedOnly, savedOnly) || other.savedOnly == savedOnly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_activityTypes),const DeepCollectionEquality().hash(_timeSlots),maxDistance,const DeepCollectionEquality().hash(_priceRange),const DeepCollectionEquality().hash(_intensity),const DeepCollectionEquality().hash(_amenities),const DeepCollectionEquality().hash(_providers),const DeepCollectionEquality().hash(_specialFilters),availableNow,savedOnly);

@override
String toString() {
  return 'WellnessFilters(activityTypes: $activityTypes, timeSlots: $timeSlots, maxDistance: $maxDistance, priceRange: $priceRange, intensity: $intensity, amenities: $amenities, providers: $providers, specialFilters: $specialFilters, availableNow: $availableNow, savedOnly: $savedOnly)';
}


}

/// @nodoc
abstract mixin class _$WellnessFiltersCopyWith<$Res> implements $WellnessFiltersCopyWith<$Res> {
  factory _$WellnessFiltersCopyWith(_WellnessFilters value, $Res Function(_WellnessFilters) _then) = __$WellnessFiltersCopyWithImpl;
@override @useResult
$Res call({
 List<String> activityTypes, List<String> timeSlots, double? maxDistance, List<PriceLevel> priceRange, List<ActivityIntensity> intensity, List<String> amenities, List<WellnessProvider> providers, List<String> specialFilters, bool availableNow, bool savedOnly
});




}
/// @nodoc
class __$WellnessFiltersCopyWithImpl<$Res>
    implements _$WellnessFiltersCopyWith<$Res> {
  __$WellnessFiltersCopyWithImpl(this._self, this._then);

  final _WellnessFilters _self;
  final $Res Function(_WellnessFilters) _then;

/// Create a copy of WellnessFilters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activityTypes = null,Object? timeSlots = null,Object? maxDistance = freezed,Object? priceRange = null,Object? intensity = null,Object? amenities = null,Object? providers = null,Object? specialFilters = null,Object? availableNow = null,Object? savedOnly = null,}) {
  return _then(_WellnessFilters(
activityTypes: null == activityTypes ? _self._activityTypes : activityTypes // ignore: cast_nullable_to_non_nullable
as List<String>,timeSlots: null == timeSlots ? _self._timeSlots : timeSlots // ignore: cast_nullable_to_non_nullable
as List<String>,maxDistance: freezed == maxDistance ? _self.maxDistance : maxDistance // ignore: cast_nullable_to_non_nullable
as double?,priceRange: null == priceRange ? _self._priceRange : priceRange // ignore: cast_nullable_to_non_nullable
as List<PriceLevel>,intensity: null == intensity ? _self._intensity : intensity // ignore: cast_nullable_to_non_nullable
as List<ActivityIntensity>,amenities: null == amenities ? _self._amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<String>,providers: null == providers ? _self._providers : providers // ignore: cast_nullable_to_non_nullable
as List<WellnessProvider>,specialFilters: null == specialFilters ? _self._specialFilters : specialFilters // ignore: cast_nullable_to_non_nullable
as List<String>,availableNow: null == availableNow ? _self.availableNow : availableNow // ignore: cast_nullable_to_non_nullable
as bool,savedOnly: null == savedOnly ? _self.savedOnly : savedOnly // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$BrowseSection {

 String get id; String get title; String? get subtitle; BrowseSectionLayout get layout; List<WellnessVenue> get items; List<String> get reasoning; String? get sortBy; int? get count;
/// Create a copy of BrowseSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrowseSectionCopyWith<BrowseSection> get copyWith => _$BrowseSectionCopyWithImpl<BrowseSection>(this as BrowseSection, _$identity);

  /// Serializes this BrowseSection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrowseSection&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.layout, layout) || other.layout == layout)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.reasoning, reasoning)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,subtitle,layout,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(reasoning),sortBy,count);

@override
String toString() {
  return 'BrowseSection(id: $id, title: $title, subtitle: $subtitle, layout: $layout, items: $items, reasoning: $reasoning, sortBy: $sortBy, count: $count)';
}


}

/// @nodoc
abstract mixin class $BrowseSectionCopyWith<$Res>  {
  factory $BrowseSectionCopyWith(BrowseSection value, $Res Function(BrowseSection) _then) = _$BrowseSectionCopyWithImpl;
@useResult
$Res call({
 String id, String title, String? subtitle, BrowseSectionLayout layout, List<WellnessVenue> items, List<String> reasoning, String? sortBy, int? count
});




}
/// @nodoc
class _$BrowseSectionCopyWithImpl<$Res>
    implements $BrowseSectionCopyWith<$Res> {
  _$BrowseSectionCopyWithImpl(this._self, this._then);

  final BrowseSection _self;
  final $Res Function(BrowseSection) _then;

/// Create a copy of BrowseSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? subtitle = freezed,Object? layout = null,Object? items = null,Object? reasoning = null,Object? sortBy = freezed,Object? count = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,layout: null == layout ? _self.layout : layout // ignore: cast_nullable_to_non_nullable
as BrowseSectionLayout,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<WellnessVenue>,reasoning: null == reasoning ? _self.reasoning : reasoning // ignore: cast_nullable_to_non_nullable
as List<String>,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BrowseSection].
extension BrowseSectionPatterns on BrowseSection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrowseSection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrowseSection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrowseSection value)  $default,){
final _that = this;
switch (_that) {
case _BrowseSection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrowseSection value)?  $default,){
final _that = this;
switch (_that) {
case _BrowseSection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String? subtitle,  BrowseSectionLayout layout,  List<WellnessVenue> items,  List<String> reasoning,  String? sortBy,  int? count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrowseSection() when $default != null:
return $default(_that.id,_that.title,_that.subtitle,_that.layout,_that.items,_that.reasoning,_that.sortBy,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String? subtitle,  BrowseSectionLayout layout,  List<WellnessVenue> items,  List<String> reasoning,  String? sortBy,  int? count)  $default,) {final _that = this;
switch (_that) {
case _BrowseSection():
return $default(_that.id,_that.title,_that.subtitle,_that.layout,_that.items,_that.reasoning,_that.sortBy,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String? subtitle,  BrowseSectionLayout layout,  List<WellnessVenue> items,  List<String> reasoning,  String? sortBy,  int? count)?  $default,) {final _that = this;
switch (_that) {
case _BrowseSection() when $default != null:
return $default(_that.id,_that.title,_that.subtitle,_that.layout,_that.items,_that.reasoning,_that.sortBy,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BrowseSection implements BrowseSection {
  const _BrowseSection({required this.id, required this.title, this.subtitle, required this.layout, required final  List<WellnessVenue> items, final  List<String> reasoning = const [], this.sortBy, this.count}): _items = items,_reasoning = reasoning;
  factory _BrowseSection.fromJson(Map<String, dynamic> json) => _$BrowseSectionFromJson(json);

@override final  String id;
@override final  String title;
@override final  String? subtitle;
@override final  BrowseSectionLayout layout;
 final  List<WellnessVenue> _items;
@override List<WellnessVenue> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  List<String> _reasoning;
@override@JsonKey() List<String> get reasoning {
  if (_reasoning is EqualUnmodifiableListView) return _reasoning;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reasoning);
}

@override final  String? sortBy;
@override final  int? count;

/// Create a copy of BrowseSection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrowseSectionCopyWith<_BrowseSection> get copyWith => __$BrowseSectionCopyWithImpl<_BrowseSection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrowseSectionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrowseSection&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.layout, layout) || other.layout == layout)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._reasoning, _reasoning)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,subtitle,layout,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_reasoning),sortBy,count);

@override
String toString() {
  return 'BrowseSection(id: $id, title: $title, subtitle: $subtitle, layout: $layout, items: $items, reasoning: $reasoning, sortBy: $sortBy, count: $count)';
}


}

/// @nodoc
abstract mixin class _$BrowseSectionCopyWith<$Res> implements $BrowseSectionCopyWith<$Res> {
  factory _$BrowseSectionCopyWith(_BrowseSection value, $Res Function(_BrowseSection) _then) = __$BrowseSectionCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? subtitle, BrowseSectionLayout layout, List<WellnessVenue> items, List<String> reasoning, String? sortBy, int? count
});




}
/// @nodoc
class __$BrowseSectionCopyWithImpl<$Res>
    implements _$BrowseSectionCopyWith<$Res> {
  __$BrowseSectionCopyWithImpl(this._self, this._then);

  final _BrowseSection _self;
  final $Res Function(_BrowseSection) _then;

/// Create a copy of BrowseSection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? subtitle = freezed,Object? layout = null,Object? items = null,Object? reasoning = null,Object? sortBy = freezed,Object? count = freezed,}) {
  return _then(_BrowseSection(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,layout: null == layout ? _self.layout : layout // ignore: cast_nullable_to_non_nullable
as BrowseSectionLayout,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<WellnessVenue>,reasoning: null == reasoning ? _self._reasoning : reasoning // ignore: cast_nullable_to_non_nullable
as List<String>,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$QuickFilter {

 String get label; int get count; bool get active; String? get filterId;
/// Create a copy of QuickFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuickFilterCopyWith<QuickFilter> get copyWith => _$QuickFilterCopyWithImpl<QuickFilter>(this as QuickFilter, _$identity);

  /// Serializes this QuickFilter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuickFilter&&(identical(other.label, label) || other.label == label)&&(identical(other.count, count) || other.count == count)&&(identical(other.active, active) || other.active == active)&&(identical(other.filterId, filterId) || other.filterId == filterId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,count,active,filterId);

@override
String toString() {
  return 'QuickFilter(label: $label, count: $count, active: $active, filterId: $filterId)';
}


}

/// @nodoc
abstract mixin class $QuickFilterCopyWith<$Res>  {
  factory $QuickFilterCopyWith(QuickFilter value, $Res Function(QuickFilter) _then) = _$QuickFilterCopyWithImpl;
@useResult
$Res call({
 String label, int count, bool active, String? filterId
});




}
/// @nodoc
class _$QuickFilterCopyWithImpl<$Res>
    implements $QuickFilterCopyWith<$Res> {
  _$QuickFilterCopyWithImpl(this._self, this._then);

  final QuickFilter _self;
  final $Res Function(QuickFilter) _then;

/// Create a copy of QuickFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? count = null,Object? active = null,Object? filterId = freezed,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,filterId: freezed == filterId ? _self.filterId : filterId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [QuickFilter].
extension QuickFilterPatterns on QuickFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuickFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuickFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuickFilter value)  $default,){
final _that = this;
switch (_that) {
case _QuickFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuickFilter value)?  $default,){
final _that = this;
switch (_that) {
case _QuickFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  int count,  bool active,  String? filterId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuickFilter() when $default != null:
return $default(_that.label,_that.count,_that.active,_that.filterId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  int count,  bool active,  String? filterId)  $default,) {final _that = this;
switch (_that) {
case _QuickFilter():
return $default(_that.label,_that.count,_that.active,_that.filterId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  int count,  bool active,  String? filterId)?  $default,) {final _that = this;
switch (_that) {
case _QuickFilter() when $default != null:
return $default(_that.label,_that.count,_that.active,_that.filterId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuickFilter implements QuickFilter {
  const _QuickFilter({required this.label, required this.count, required this.active, this.filterId});
  factory _QuickFilter.fromJson(Map<String, dynamic> json) => _$QuickFilterFromJson(json);

@override final  String label;
@override final  int count;
@override final  bool active;
@override final  String? filterId;

/// Create a copy of QuickFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuickFilterCopyWith<_QuickFilter> get copyWith => __$QuickFilterCopyWithImpl<_QuickFilter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuickFilterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuickFilter&&(identical(other.label, label) || other.label == label)&&(identical(other.count, count) || other.count == count)&&(identical(other.active, active) || other.active == active)&&(identical(other.filterId, filterId) || other.filterId == filterId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,count,active,filterId);

@override
String toString() {
  return 'QuickFilter(label: $label, count: $count, active: $active, filterId: $filterId)';
}


}

/// @nodoc
abstract mixin class _$QuickFilterCopyWith<$Res> implements $QuickFilterCopyWith<$Res> {
  factory _$QuickFilterCopyWith(_QuickFilter value, $Res Function(_QuickFilter) _then) = __$QuickFilterCopyWithImpl;
@override @useResult
$Res call({
 String label, int count, bool active, String? filterId
});




}
/// @nodoc
class __$QuickFilterCopyWithImpl<$Res>
    implements _$QuickFilterCopyWith<$Res> {
  __$QuickFilterCopyWithImpl(this._self, this._then);

  final _QuickFilter _self;
  final $Res Function(_QuickFilter) _then;

/// Create a copy of QuickFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? count = null,Object? active = null,Object? filterId = freezed,}) {
  return _then(_QuickFilter(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,filterId: freezed == filterId ? _self.filterId : filterId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WellnessBrowseState {

 WellnessBrowsingContext get context; List<BrowseSection> get sections; List<QuickFilter> get quickFilters; WellnessFilters get activeFilters; String get headerGreeting; String get contextMessage; String get filterSummary; List<WellnessVenue> get mapMarkers; bool get showMap; bool get isLoading; String? get error;
/// Create a copy of WellnessBrowseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WellnessBrowseStateCopyWith<WellnessBrowseState> get copyWith => _$WellnessBrowseStateCopyWithImpl<WellnessBrowseState>(this as WellnessBrowseState, _$identity);

  /// Serializes this WellnessBrowseState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WellnessBrowseState&&(identical(other.context, context) || other.context == context)&&const DeepCollectionEquality().equals(other.sections, sections)&&const DeepCollectionEquality().equals(other.quickFilters, quickFilters)&&(identical(other.activeFilters, activeFilters) || other.activeFilters == activeFilters)&&(identical(other.headerGreeting, headerGreeting) || other.headerGreeting == headerGreeting)&&(identical(other.contextMessage, contextMessage) || other.contextMessage == contextMessage)&&(identical(other.filterSummary, filterSummary) || other.filterSummary == filterSummary)&&const DeepCollectionEquality().equals(other.mapMarkers, mapMarkers)&&(identical(other.showMap, showMap) || other.showMap == showMap)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,const DeepCollectionEquality().hash(sections),const DeepCollectionEquality().hash(quickFilters),activeFilters,headerGreeting,contextMessage,filterSummary,const DeepCollectionEquality().hash(mapMarkers),showMap,isLoading,error);

@override
String toString() {
  return 'WellnessBrowseState(context: $context, sections: $sections, quickFilters: $quickFilters, activeFilters: $activeFilters, headerGreeting: $headerGreeting, contextMessage: $contextMessage, filterSummary: $filterSummary, mapMarkers: $mapMarkers, showMap: $showMap, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $WellnessBrowseStateCopyWith<$Res>  {
  factory $WellnessBrowseStateCopyWith(WellnessBrowseState value, $Res Function(WellnessBrowseState) _then) = _$WellnessBrowseStateCopyWithImpl;
@useResult
$Res call({
 WellnessBrowsingContext context, List<BrowseSection> sections, List<QuickFilter> quickFilters, WellnessFilters activeFilters, String headerGreeting, String contextMessage, String filterSummary, List<WellnessVenue> mapMarkers, bool showMap, bool isLoading, String? error
});


$WellnessBrowsingContextCopyWith<$Res> get context;$WellnessFiltersCopyWith<$Res> get activeFilters;

}
/// @nodoc
class _$WellnessBrowseStateCopyWithImpl<$Res>
    implements $WellnessBrowseStateCopyWith<$Res> {
  _$WellnessBrowseStateCopyWithImpl(this._self, this._then);

  final WellnessBrowseState _self;
  final $Res Function(WellnessBrowseState) _then;

/// Create a copy of WellnessBrowseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? context = null,Object? sections = null,Object? quickFilters = null,Object? activeFilters = null,Object? headerGreeting = null,Object? contextMessage = null,Object? filterSummary = null,Object? mapMarkers = null,Object? showMap = null,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as WellnessBrowsingContext,sections: null == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<BrowseSection>,quickFilters: null == quickFilters ? _self.quickFilters : quickFilters // ignore: cast_nullable_to_non_nullable
as List<QuickFilter>,activeFilters: null == activeFilters ? _self.activeFilters : activeFilters // ignore: cast_nullable_to_non_nullable
as WellnessFilters,headerGreeting: null == headerGreeting ? _self.headerGreeting : headerGreeting // ignore: cast_nullable_to_non_nullable
as String,contextMessage: null == contextMessage ? _self.contextMessage : contextMessage // ignore: cast_nullable_to_non_nullable
as String,filterSummary: null == filterSummary ? _self.filterSummary : filterSummary // ignore: cast_nullable_to_non_nullable
as String,mapMarkers: null == mapMarkers ? _self.mapMarkers : mapMarkers // ignore: cast_nullable_to_non_nullable
as List<WellnessVenue>,showMap: null == showMap ? _self.showMap : showMap // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of WellnessBrowseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WellnessBrowsingContextCopyWith<$Res> get context {
  
  return $WellnessBrowsingContextCopyWith<$Res>(_self.context, (value) {
    return _then(_self.copyWith(context: value));
  });
}/// Create a copy of WellnessBrowseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WellnessFiltersCopyWith<$Res> get activeFilters {
  
  return $WellnessFiltersCopyWith<$Res>(_self.activeFilters, (value) {
    return _then(_self.copyWith(activeFilters: value));
  });
}
}


/// Adds pattern-matching-related methods to [WellnessBrowseState].
extension WellnessBrowseStatePatterns on WellnessBrowseState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WellnessBrowseState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WellnessBrowseState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WellnessBrowseState value)  $default,){
final _that = this;
switch (_that) {
case _WellnessBrowseState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WellnessBrowseState value)?  $default,){
final _that = this;
switch (_that) {
case _WellnessBrowseState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WellnessBrowsingContext context,  List<BrowseSection> sections,  List<QuickFilter> quickFilters,  WellnessFilters activeFilters,  String headerGreeting,  String contextMessage,  String filterSummary,  List<WellnessVenue> mapMarkers,  bool showMap,  bool isLoading,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WellnessBrowseState() when $default != null:
return $default(_that.context,_that.sections,_that.quickFilters,_that.activeFilters,_that.headerGreeting,_that.contextMessage,_that.filterSummary,_that.mapMarkers,_that.showMap,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WellnessBrowsingContext context,  List<BrowseSection> sections,  List<QuickFilter> quickFilters,  WellnessFilters activeFilters,  String headerGreeting,  String contextMessage,  String filterSummary,  List<WellnessVenue> mapMarkers,  bool showMap,  bool isLoading,  String? error)  $default,) {final _that = this;
switch (_that) {
case _WellnessBrowseState():
return $default(_that.context,_that.sections,_that.quickFilters,_that.activeFilters,_that.headerGreeting,_that.contextMessage,_that.filterSummary,_that.mapMarkers,_that.showMap,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WellnessBrowsingContext context,  List<BrowseSection> sections,  List<QuickFilter> quickFilters,  WellnessFilters activeFilters,  String headerGreeting,  String contextMessage,  String filterSummary,  List<WellnessVenue> mapMarkers,  bool showMap,  bool isLoading,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _WellnessBrowseState() when $default != null:
return $default(_that.context,_that.sections,_that.quickFilters,_that.activeFilters,_that.headerGreeting,_that.contextMessage,_that.filterSummary,_that.mapMarkers,_that.showMap,_that.isLoading,_that.error);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WellnessBrowseState implements WellnessBrowseState {
  const _WellnessBrowseState({required this.context, required final  List<BrowseSection> sections, required final  List<QuickFilter> quickFilters, required this.activeFilters, required this.headerGreeting, required this.contextMessage, required this.filterSummary, final  List<WellnessVenue> mapMarkers = const [], this.showMap = false, this.isLoading = false, this.error}): _sections = sections,_quickFilters = quickFilters,_mapMarkers = mapMarkers;
  factory _WellnessBrowseState.fromJson(Map<String, dynamic> json) => _$WellnessBrowseStateFromJson(json);

@override final  WellnessBrowsingContext context;
 final  List<BrowseSection> _sections;
@override List<BrowseSection> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}

 final  List<QuickFilter> _quickFilters;
@override List<QuickFilter> get quickFilters {
  if (_quickFilters is EqualUnmodifiableListView) return _quickFilters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_quickFilters);
}

@override final  WellnessFilters activeFilters;
@override final  String headerGreeting;
@override final  String contextMessage;
@override final  String filterSummary;
 final  List<WellnessVenue> _mapMarkers;
@override@JsonKey() List<WellnessVenue> get mapMarkers {
  if (_mapMarkers is EqualUnmodifiableListView) return _mapMarkers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mapMarkers);
}

@override@JsonKey() final  bool showMap;
@override@JsonKey() final  bool isLoading;
@override final  String? error;

/// Create a copy of WellnessBrowseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WellnessBrowseStateCopyWith<_WellnessBrowseState> get copyWith => __$WellnessBrowseStateCopyWithImpl<_WellnessBrowseState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WellnessBrowseStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WellnessBrowseState&&(identical(other.context, context) || other.context == context)&&const DeepCollectionEquality().equals(other._sections, _sections)&&const DeepCollectionEquality().equals(other._quickFilters, _quickFilters)&&(identical(other.activeFilters, activeFilters) || other.activeFilters == activeFilters)&&(identical(other.headerGreeting, headerGreeting) || other.headerGreeting == headerGreeting)&&(identical(other.contextMessage, contextMessage) || other.contextMessage == contextMessage)&&(identical(other.filterSummary, filterSummary) || other.filterSummary == filterSummary)&&const DeepCollectionEquality().equals(other._mapMarkers, _mapMarkers)&&(identical(other.showMap, showMap) || other.showMap == showMap)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,context,const DeepCollectionEquality().hash(_sections),const DeepCollectionEquality().hash(_quickFilters),activeFilters,headerGreeting,contextMessage,filterSummary,const DeepCollectionEquality().hash(_mapMarkers),showMap,isLoading,error);

@override
String toString() {
  return 'WellnessBrowseState(context: $context, sections: $sections, quickFilters: $quickFilters, activeFilters: $activeFilters, headerGreeting: $headerGreeting, contextMessage: $contextMessage, filterSummary: $filterSummary, mapMarkers: $mapMarkers, showMap: $showMap, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$WellnessBrowseStateCopyWith<$Res> implements $WellnessBrowseStateCopyWith<$Res> {
  factory _$WellnessBrowseStateCopyWith(_WellnessBrowseState value, $Res Function(_WellnessBrowseState) _then) = __$WellnessBrowseStateCopyWithImpl;
@override @useResult
$Res call({
 WellnessBrowsingContext context, List<BrowseSection> sections, List<QuickFilter> quickFilters, WellnessFilters activeFilters, String headerGreeting, String contextMessage, String filterSummary, List<WellnessVenue> mapMarkers, bool showMap, bool isLoading, String? error
});


@override $WellnessBrowsingContextCopyWith<$Res> get context;@override $WellnessFiltersCopyWith<$Res> get activeFilters;

}
/// @nodoc
class __$WellnessBrowseStateCopyWithImpl<$Res>
    implements _$WellnessBrowseStateCopyWith<$Res> {
  __$WellnessBrowseStateCopyWithImpl(this._self, this._then);

  final _WellnessBrowseState _self;
  final $Res Function(_WellnessBrowseState) _then;

/// Create a copy of WellnessBrowseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? context = null,Object? sections = null,Object? quickFilters = null,Object? activeFilters = null,Object? headerGreeting = null,Object? contextMessage = null,Object? filterSummary = null,Object? mapMarkers = null,Object? showMap = null,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_WellnessBrowseState(
context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as WellnessBrowsingContext,sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<BrowseSection>,quickFilters: null == quickFilters ? _self._quickFilters : quickFilters // ignore: cast_nullable_to_non_nullable
as List<QuickFilter>,activeFilters: null == activeFilters ? _self.activeFilters : activeFilters // ignore: cast_nullable_to_non_nullable
as WellnessFilters,headerGreeting: null == headerGreeting ? _self.headerGreeting : headerGreeting // ignore: cast_nullable_to_non_nullable
as String,contextMessage: null == contextMessage ? _self.contextMessage : contextMessage // ignore: cast_nullable_to_non_nullable
as String,filterSummary: null == filterSummary ? _self.filterSummary : filterSummary // ignore: cast_nullable_to_non_nullable
as String,mapMarkers: null == mapMarkers ? _self._mapMarkers : mapMarkers // ignore: cast_nullable_to_non_nullable
as List<WellnessVenue>,showMap: null == showMap ? _self.showMap : showMap // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of WellnessBrowseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WellnessBrowsingContextCopyWith<$Res> get context {
  
  return $WellnessBrowsingContextCopyWith<$Res>(_self.context, (value) {
    return _then(_self.copyWith(context: value));
  });
}/// Create a copy of WellnessBrowseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WellnessFiltersCopyWith<$Res> get activeFilters {
  
  return $WellnessFiltersCopyWith<$Res>(_self.activeFilters, (value) {
    return _then(_self.copyWith(activeFilters: value));
  });
}
}

// dart format on
