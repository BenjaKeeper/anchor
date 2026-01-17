// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnchorBookingRequest {

 String get userId; String get activityId; BookingVenue get venue; BookingActivity get activity; BookingPricing get pricing; UserContext get userContext; BookingPreferences get preferences;
/// Create a copy of AnchorBookingRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnchorBookingRequestCopyWith<AnchorBookingRequest> get copyWith => _$AnchorBookingRequestCopyWithImpl<AnchorBookingRequest>(this as AnchorBookingRequest, _$identity);

  /// Serializes this AnchorBookingRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnchorBookingRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.pricing, pricing) || other.pricing == pricing)&&(identical(other.userContext, userContext) || other.userContext == userContext)&&(identical(other.preferences, preferences) || other.preferences == preferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,activityId,venue,activity,pricing,userContext,preferences);

@override
String toString() {
  return 'AnchorBookingRequest(userId: $userId, activityId: $activityId, venue: $venue, activity: $activity, pricing: $pricing, userContext: $userContext, preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class $AnchorBookingRequestCopyWith<$Res>  {
  factory $AnchorBookingRequestCopyWith(AnchorBookingRequest value, $Res Function(AnchorBookingRequest) _then) = _$AnchorBookingRequestCopyWithImpl;
@useResult
$Res call({
 String userId, String activityId, BookingVenue venue, BookingActivity activity, BookingPricing pricing, UserContext userContext, BookingPreferences preferences
});


$BookingVenueCopyWith<$Res> get venue;$BookingActivityCopyWith<$Res> get activity;$BookingPricingCopyWith<$Res> get pricing;$UserContextCopyWith<$Res> get userContext;$BookingPreferencesCopyWith<$Res> get preferences;

}
/// @nodoc
class _$AnchorBookingRequestCopyWithImpl<$Res>
    implements $AnchorBookingRequestCopyWith<$Res> {
  _$AnchorBookingRequestCopyWithImpl(this._self, this._then);

  final AnchorBookingRequest _self;
  final $Res Function(AnchorBookingRequest) _then;

/// Create a copy of AnchorBookingRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? activityId = null,Object? venue = null,Object? activity = null,Object? pricing = null,Object? userContext = null,Object? preferences = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,activityId: null == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as String,venue: null == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as BookingVenue,activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as BookingActivity,pricing: null == pricing ? _self.pricing : pricing // ignore: cast_nullable_to_non_nullable
as BookingPricing,userContext: null == userContext ? _self.userContext : userContext // ignore: cast_nullable_to_non_nullable
as UserContext,preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as BookingPreferences,
  ));
}
/// Create a copy of AnchorBookingRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingVenueCopyWith<$Res> get venue {
  
  return $BookingVenueCopyWith<$Res>(_self.venue, (value) {
    return _then(_self.copyWith(venue: value));
  });
}/// Create a copy of AnchorBookingRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingActivityCopyWith<$Res> get activity {
  
  return $BookingActivityCopyWith<$Res>(_self.activity, (value) {
    return _then(_self.copyWith(activity: value));
  });
}/// Create a copy of AnchorBookingRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingPricingCopyWith<$Res> get pricing {
  
  return $BookingPricingCopyWith<$Res>(_self.pricing, (value) {
    return _then(_self.copyWith(pricing: value));
  });
}/// Create a copy of AnchorBookingRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserContextCopyWith<$Res> get userContext {
  
  return $UserContextCopyWith<$Res>(_self.userContext, (value) {
    return _then(_self.copyWith(userContext: value));
  });
}/// Create a copy of AnchorBookingRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingPreferencesCopyWith<$Res> get preferences {
  
  return $BookingPreferencesCopyWith<$Res>(_self.preferences, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}


/// Adds pattern-matching-related methods to [AnchorBookingRequest].
extension AnchorBookingRequestPatterns on AnchorBookingRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnchorBookingRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnchorBookingRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnchorBookingRequest value)  $default,){
final _that = this;
switch (_that) {
case _AnchorBookingRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnchorBookingRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AnchorBookingRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String activityId,  BookingVenue venue,  BookingActivity activity,  BookingPricing pricing,  UserContext userContext,  BookingPreferences preferences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnchorBookingRequest() when $default != null:
return $default(_that.userId,_that.activityId,_that.venue,_that.activity,_that.pricing,_that.userContext,_that.preferences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String activityId,  BookingVenue venue,  BookingActivity activity,  BookingPricing pricing,  UserContext userContext,  BookingPreferences preferences)  $default,) {final _that = this;
switch (_that) {
case _AnchorBookingRequest():
return $default(_that.userId,_that.activityId,_that.venue,_that.activity,_that.pricing,_that.userContext,_that.preferences);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String activityId,  BookingVenue venue,  BookingActivity activity,  BookingPricing pricing,  UserContext userContext,  BookingPreferences preferences)?  $default,) {final _that = this;
switch (_that) {
case _AnchorBookingRequest() when $default != null:
return $default(_that.userId,_that.activityId,_that.venue,_that.activity,_that.pricing,_that.userContext,_that.preferences);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnchorBookingRequest implements AnchorBookingRequest {
  const _AnchorBookingRequest({required this.userId, required this.activityId, required this.venue, required this.activity, required this.pricing, required this.userContext, required this.preferences});
  factory _AnchorBookingRequest.fromJson(Map<String, dynamic> json) => _$AnchorBookingRequestFromJson(json);

@override final  String userId;
@override final  String activityId;
@override final  BookingVenue venue;
@override final  BookingActivity activity;
@override final  BookingPricing pricing;
@override final  UserContext userContext;
@override final  BookingPreferences preferences;

/// Create a copy of AnchorBookingRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnchorBookingRequestCopyWith<_AnchorBookingRequest> get copyWith => __$AnchorBookingRequestCopyWithImpl<_AnchorBookingRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnchorBookingRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnchorBookingRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.pricing, pricing) || other.pricing == pricing)&&(identical(other.userContext, userContext) || other.userContext == userContext)&&(identical(other.preferences, preferences) || other.preferences == preferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,activityId,venue,activity,pricing,userContext,preferences);

@override
String toString() {
  return 'AnchorBookingRequest(userId: $userId, activityId: $activityId, venue: $venue, activity: $activity, pricing: $pricing, userContext: $userContext, preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class _$AnchorBookingRequestCopyWith<$Res> implements $AnchorBookingRequestCopyWith<$Res> {
  factory _$AnchorBookingRequestCopyWith(_AnchorBookingRequest value, $Res Function(_AnchorBookingRequest) _then) = __$AnchorBookingRequestCopyWithImpl;
@override @useResult
$Res call({
 String userId, String activityId, BookingVenue venue, BookingActivity activity, BookingPricing pricing, UserContext userContext, BookingPreferences preferences
});


@override $BookingVenueCopyWith<$Res> get venue;@override $BookingActivityCopyWith<$Res> get activity;@override $BookingPricingCopyWith<$Res> get pricing;@override $UserContextCopyWith<$Res> get userContext;@override $BookingPreferencesCopyWith<$Res> get preferences;

}
/// @nodoc
class __$AnchorBookingRequestCopyWithImpl<$Res>
    implements _$AnchorBookingRequestCopyWith<$Res> {
  __$AnchorBookingRequestCopyWithImpl(this._self, this._then);

  final _AnchorBookingRequest _self;
  final $Res Function(_AnchorBookingRequest) _then;

/// Create a copy of AnchorBookingRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? activityId = null,Object? venue = null,Object? activity = null,Object? pricing = null,Object? userContext = null,Object? preferences = null,}) {
  return _then(_AnchorBookingRequest(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,activityId: null == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as String,venue: null == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as BookingVenue,activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as BookingActivity,pricing: null == pricing ? _self.pricing : pricing // ignore: cast_nullable_to_non_nullable
as BookingPricing,userContext: null == userContext ? _self.userContext : userContext // ignore: cast_nullable_to_non_nullable
as UserContext,preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as BookingPreferences,
  ));
}

/// Create a copy of AnchorBookingRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingVenueCopyWith<$Res> get venue {
  
  return $BookingVenueCopyWith<$Res>(_self.venue, (value) {
    return _then(_self.copyWith(venue: value));
  });
}/// Create a copy of AnchorBookingRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingActivityCopyWith<$Res> get activity {
  
  return $BookingActivityCopyWith<$Res>(_self.activity, (value) {
    return _then(_self.copyWith(activity: value));
  });
}/// Create a copy of AnchorBookingRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingPricingCopyWith<$Res> get pricing {
  
  return $BookingPricingCopyWith<$Res>(_self.pricing, (value) {
    return _then(_self.copyWith(pricing: value));
  });
}/// Create a copy of AnchorBookingRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserContextCopyWith<$Res> get userContext {
  
  return $UserContextCopyWith<$Res>(_self.userContext, (value) {
    return _then(_self.copyWith(userContext: value));
  });
}/// Create a copy of AnchorBookingRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingPreferencesCopyWith<$Res> get preferences {
  
  return $BookingPreferencesCopyWith<$Res>(_self.preferences, (value) {
    return _then(_self.copyWith(preferences: value));
  });
}
}


/// @nodoc
mixin _$BookingVenue {

 String get id; String get name; String get address; String get phone; double? get latitude; double? get longitude; String? get website; Map<String, String>? get amenities;
/// Create a copy of BookingVenue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingVenueCopyWith<BookingVenue> get copyWith => _$BookingVenueCopyWithImpl<BookingVenue>(this as BookingVenue, _$identity);

  /// Serializes this BookingVenue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingVenue&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.website, website) || other.website == website)&&const DeepCollectionEquality().equals(other.amenities, amenities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,phone,latitude,longitude,website,const DeepCollectionEquality().hash(amenities));

@override
String toString() {
  return 'BookingVenue(id: $id, name: $name, address: $address, phone: $phone, latitude: $latitude, longitude: $longitude, website: $website, amenities: $amenities)';
}


}

/// @nodoc
abstract mixin class $BookingVenueCopyWith<$Res>  {
  factory $BookingVenueCopyWith(BookingVenue value, $Res Function(BookingVenue) _then) = _$BookingVenueCopyWithImpl;
@useResult
$Res call({
 String id, String name, String address, String phone, double? latitude, double? longitude, String? website, Map<String, String>? amenities
});




}
/// @nodoc
class _$BookingVenueCopyWithImpl<$Res>
    implements $BookingVenueCopyWith<$Res> {
  _$BookingVenueCopyWithImpl(this._self, this._then);

  final BookingVenue _self;
  final $Res Function(BookingVenue) _then;

/// Create a copy of BookingVenue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? address = null,Object? phone = null,Object? latitude = freezed,Object? longitude = freezed,Object? website = freezed,Object? amenities = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,amenities: freezed == amenities ? _self.amenities : amenities // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingVenue].
extension BookingVenuePatterns on BookingVenue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingVenue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingVenue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingVenue value)  $default,){
final _that = this;
switch (_that) {
case _BookingVenue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingVenue value)?  $default,){
final _that = this;
switch (_that) {
case _BookingVenue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String address,  String phone,  double? latitude,  double? longitude,  String? website,  Map<String, String>? amenities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingVenue() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.phone,_that.latitude,_that.longitude,_that.website,_that.amenities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String address,  String phone,  double? latitude,  double? longitude,  String? website,  Map<String, String>? amenities)  $default,) {final _that = this;
switch (_that) {
case _BookingVenue():
return $default(_that.id,_that.name,_that.address,_that.phone,_that.latitude,_that.longitude,_that.website,_that.amenities);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String address,  String phone,  double? latitude,  double? longitude,  String? website,  Map<String, String>? amenities)?  $default,) {final _that = this;
switch (_that) {
case _BookingVenue() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.phone,_that.latitude,_that.longitude,_that.website,_that.amenities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingVenue implements BookingVenue {
  const _BookingVenue({required this.id, required this.name, required this.address, required this.phone, this.latitude, this.longitude, this.website, final  Map<String, String>? amenities}): _amenities = amenities;
  factory _BookingVenue.fromJson(Map<String, dynamic> json) => _$BookingVenueFromJson(json);

@override final  String id;
@override final  String name;
@override final  String address;
@override final  String phone;
@override final  double? latitude;
@override final  double? longitude;
@override final  String? website;
 final  Map<String, String>? _amenities;
@override Map<String, String>? get amenities {
  final value = _amenities;
  if (value == null) return null;
  if (_amenities is EqualUnmodifiableMapView) return _amenities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of BookingVenue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingVenueCopyWith<_BookingVenue> get copyWith => __$BookingVenueCopyWithImpl<_BookingVenue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingVenueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingVenue&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.website, website) || other.website == website)&&const DeepCollectionEquality().equals(other._amenities, _amenities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,phone,latitude,longitude,website,const DeepCollectionEquality().hash(_amenities));

@override
String toString() {
  return 'BookingVenue(id: $id, name: $name, address: $address, phone: $phone, latitude: $latitude, longitude: $longitude, website: $website, amenities: $amenities)';
}


}

/// @nodoc
abstract mixin class _$BookingVenueCopyWith<$Res> implements $BookingVenueCopyWith<$Res> {
  factory _$BookingVenueCopyWith(_BookingVenue value, $Res Function(_BookingVenue) _then) = __$BookingVenueCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String address, String phone, double? latitude, double? longitude, String? website, Map<String, String>? amenities
});




}
/// @nodoc
class __$BookingVenueCopyWithImpl<$Res>
    implements _$BookingVenueCopyWith<$Res> {
  __$BookingVenueCopyWithImpl(this._self, this._then);

  final _BookingVenue _self;
  final $Res Function(_BookingVenue) _then;

/// Create a copy of BookingVenue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? address = null,Object? phone = null,Object? latitude = freezed,Object? longitude = freezed,Object? website = freezed,Object? amenities = freezed,}) {
  return _then(_BookingVenue(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,amenities: freezed == amenities ? _self._amenities : amenities // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}


/// @nodoc
mixin _$BookingActivity {

 ActivityType get type; String get name; DateTime get date; DateTime get time; int get duration;// minutes
 String get instructor; String get level; String? get description; List<String>? get equipment; String? get imageUrl;
/// Create a copy of BookingActivity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingActivityCopyWith<BookingActivity> get copyWith => _$BookingActivityCopyWithImpl<BookingActivity>(this as BookingActivity, _$identity);

  /// Serializes this BookingActivity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingActivity&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.instructor, instructor) || other.instructor == instructor)&&(identical(other.level, level) || other.level == level)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.equipment, equipment)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,date,time,duration,instructor,level,description,const DeepCollectionEquality().hash(equipment),imageUrl);

@override
String toString() {
  return 'BookingActivity(type: $type, name: $name, date: $date, time: $time, duration: $duration, instructor: $instructor, level: $level, description: $description, equipment: $equipment, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $BookingActivityCopyWith<$Res>  {
  factory $BookingActivityCopyWith(BookingActivity value, $Res Function(BookingActivity) _then) = _$BookingActivityCopyWithImpl;
@useResult
$Res call({
 ActivityType type, String name, DateTime date, DateTime time, int duration, String instructor, String level, String? description, List<String>? equipment, String? imageUrl
});




}
/// @nodoc
class _$BookingActivityCopyWithImpl<$Res>
    implements $BookingActivityCopyWith<$Res> {
  _$BookingActivityCopyWithImpl(this._self, this._then);

  final BookingActivity _self;
  final $Res Function(BookingActivity) _then;

/// Create a copy of BookingActivity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? name = null,Object? date = null,Object? time = null,Object? duration = null,Object? instructor = null,Object? level = null,Object? description = freezed,Object? equipment = freezed,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ActivityType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,instructor: null == instructor ? _self.instructor : instructor // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,equipment: freezed == equipment ? _self.equipment : equipment // ignore: cast_nullable_to_non_nullable
as List<String>?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingActivity].
extension BookingActivityPatterns on BookingActivity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingActivity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingActivity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingActivity value)  $default,){
final _that = this;
switch (_that) {
case _BookingActivity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingActivity value)?  $default,){
final _that = this;
switch (_that) {
case _BookingActivity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ActivityType type,  String name,  DateTime date,  DateTime time,  int duration,  String instructor,  String level,  String? description,  List<String>? equipment,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingActivity() when $default != null:
return $default(_that.type,_that.name,_that.date,_that.time,_that.duration,_that.instructor,_that.level,_that.description,_that.equipment,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ActivityType type,  String name,  DateTime date,  DateTime time,  int duration,  String instructor,  String level,  String? description,  List<String>? equipment,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _BookingActivity():
return $default(_that.type,_that.name,_that.date,_that.time,_that.duration,_that.instructor,_that.level,_that.description,_that.equipment,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ActivityType type,  String name,  DateTime date,  DateTime time,  int duration,  String instructor,  String level,  String? description,  List<String>? equipment,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _BookingActivity() when $default != null:
return $default(_that.type,_that.name,_that.date,_that.time,_that.duration,_that.instructor,_that.level,_that.description,_that.equipment,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingActivity implements BookingActivity {
  const _BookingActivity({required this.type, required this.name, required this.date, required this.time, required this.duration, required this.instructor, required this.level, this.description, final  List<String>? equipment, this.imageUrl}): _equipment = equipment;
  factory _BookingActivity.fromJson(Map<String, dynamic> json) => _$BookingActivityFromJson(json);

@override final  ActivityType type;
@override final  String name;
@override final  DateTime date;
@override final  DateTime time;
@override final  int duration;
// minutes
@override final  String instructor;
@override final  String level;
@override final  String? description;
 final  List<String>? _equipment;
@override List<String>? get equipment {
  final value = _equipment;
  if (value == null) return null;
  if (_equipment is EqualUnmodifiableListView) return _equipment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? imageUrl;

/// Create a copy of BookingActivity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingActivityCopyWith<_BookingActivity> get copyWith => __$BookingActivityCopyWithImpl<_BookingActivity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingActivityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingActivity&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.instructor, instructor) || other.instructor == instructor)&&(identical(other.level, level) || other.level == level)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._equipment, _equipment)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,date,time,duration,instructor,level,description,const DeepCollectionEquality().hash(_equipment),imageUrl);

@override
String toString() {
  return 'BookingActivity(type: $type, name: $name, date: $date, time: $time, duration: $duration, instructor: $instructor, level: $level, description: $description, equipment: $equipment, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$BookingActivityCopyWith<$Res> implements $BookingActivityCopyWith<$Res> {
  factory _$BookingActivityCopyWith(_BookingActivity value, $Res Function(_BookingActivity) _then) = __$BookingActivityCopyWithImpl;
@override @useResult
$Res call({
 ActivityType type, String name, DateTime date, DateTime time, int duration, String instructor, String level, String? description, List<String>? equipment, String? imageUrl
});




}
/// @nodoc
class __$BookingActivityCopyWithImpl<$Res>
    implements _$BookingActivityCopyWith<$Res> {
  __$BookingActivityCopyWithImpl(this._self, this._then);

  final _BookingActivity _self;
  final $Res Function(_BookingActivity) _then;

/// Create a copy of BookingActivity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? name = null,Object? date = null,Object? time = null,Object? duration = null,Object? instructor = null,Object? level = null,Object? description = freezed,Object? equipment = freezed,Object? imageUrl = freezed,}) {
  return _then(_BookingActivity(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ActivityType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,instructor: null == instructor ? _self.instructor : instructor // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,equipment: freezed == equipment ? _self._equipment : equipment // ignore: cast_nullable_to_non_nullable
as List<String>?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BookingPricing {

 BookingProvider get provider; String get cost; String get cancellationPolicy; String? get refundPolicy; double? get priceAmount; String? get currency;
/// Create a copy of BookingPricing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingPricingCopyWith<BookingPricing> get copyWith => _$BookingPricingCopyWithImpl<BookingPricing>(this as BookingPricing, _$identity);

  /// Serializes this BookingPricing to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingPricing&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.cancellationPolicy, cancellationPolicy) || other.cancellationPolicy == cancellationPolicy)&&(identical(other.refundPolicy, refundPolicy) || other.refundPolicy == refundPolicy)&&(identical(other.priceAmount, priceAmount) || other.priceAmount == priceAmount)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider,cost,cancellationPolicy,refundPolicy,priceAmount,currency);

@override
String toString() {
  return 'BookingPricing(provider: $provider, cost: $cost, cancellationPolicy: $cancellationPolicy, refundPolicy: $refundPolicy, priceAmount: $priceAmount, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $BookingPricingCopyWith<$Res>  {
  factory $BookingPricingCopyWith(BookingPricing value, $Res Function(BookingPricing) _then) = _$BookingPricingCopyWithImpl;
@useResult
$Res call({
 BookingProvider provider, String cost, String cancellationPolicy, String? refundPolicy, double? priceAmount, String? currency
});




}
/// @nodoc
class _$BookingPricingCopyWithImpl<$Res>
    implements $BookingPricingCopyWith<$Res> {
  _$BookingPricingCopyWithImpl(this._self, this._then);

  final BookingPricing _self;
  final $Res Function(BookingPricing) _then;

/// Create a copy of BookingPricing
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? provider = null,Object? cost = null,Object? cancellationPolicy = null,Object? refundPolicy = freezed,Object? priceAmount = freezed,Object? currency = freezed,}) {
  return _then(_self.copyWith(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as BookingProvider,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as String,cancellationPolicy: null == cancellationPolicy ? _self.cancellationPolicy : cancellationPolicy // ignore: cast_nullable_to_non_nullable
as String,refundPolicy: freezed == refundPolicy ? _self.refundPolicy : refundPolicy // ignore: cast_nullable_to_non_nullable
as String?,priceAmount: freezed == priceAmount ? _self.priceAmount : priceAmount // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingPricing].
extension BookingPricingPatterns on BookingPricing {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingPricing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingPricing() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingPricing value)  $default,){
final _that = this;
switch (_that) {
case _BookingPricing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingPricing value)?  $default,){
final _that = this;
switch (_that) {
case _BookingPricing() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BookingProvider provider,  String cost,  String cancellationPolicy,  String? refundPolicy,  double? priceAmount,  String? currency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingPricing() when $default != null:
return $default(_that.provider,_that.cost,_that.cancellationPolicy,_that.refundPolicy,_that.priceAmount,_that.currency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BookingProvider provider,  String cost,  String cancellationPolicy,  String? refundPolicy,  double? priceAmount,  String? currency)  $default,) {final _that = this;
switch (_that) {
case _BookingPricing():
return $default(_that.provider,_that.cost,_that.cancellationPolicy,_that.refundPolicy,_that.priceAmount,_that.currency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BookingProvider provider,  String cost,  String cancellationPolicy,  String? refundPolicy,  double? priceAmount,  String? currency)?  $default,) {final _that = this;
switch (_that) {
case _BookingPricing() when $default != null:
return $default(_that.provider,_that.cost,_that.cancellationPolicy,_that.refundPolicy,_that.priceAmount,_that.currency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingPricing implements BookingPricing {
  const _BookingPricing({required this.provider, required this.cost, required this.cancellationPolicy, this.refundPolicy, this.priceAmount, this.currency});
  factory _BookingPricing.fromJson(Map<String, dynamic> json) => _$BookingPricingFromJson(json);

@override final  BookingProvider provider;
@override final  String cost;
@override final  String cancellationPolicy;
@override final  String? refundPolicy;
@override final  double? priceAmount;
@override final  String? currency;

/// Create a copy of BookingPricing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingPricingCopyWith<_BookingPricing> get copyWith => __$BookingPricingCopyWithImpl<_BookingPricing>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingPricingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingPricing&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.cancellationPolicy, cancellationPolicy) || other.cancellationPolicy == cancellationPolicy)&&(identical(other.refundPolicy, refundPolicy) || other.refundPolicy == refundPolicy)&&(identical(other.priceAmount, priceAmount) || other.priceAmount == priceAmount)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider,cost,cancellationPolicy,refundPolicy,priceAmount,currency);

@override
String toString() {
  return 'BookingPricing(provider: $provider, cost: $cost, cancellationPolicy: $cancellationPolicy, refundPolicy: $refundPolicy, priceAmount: $priceAmount, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$BookingPricingCopyWith<$Res> implements $BookingPricingCopyWith<$Res> {
  factory _$BookingPricingCopyWith(_BookingPricing value, $Res Function(_BookingPricing) _then) = __$BookingPricingCopyWithImpl;
@override @useResult
$Res call({
 BookingProvider provider, String cost, String cancellationPolicy, String? refundPolicy, double? priceAmount, String? currency
});




}
/// @nodoc
class __$BookingPricingCopyWithImpl<$Res>
    implements _$BookingPricingCopyWith<$Res> {
  __$BookingPricingCopyWithImpl(this._self, this._then);

  final _BookingPricing _self;
  final $Res Function(_BookingPricing) _then;

/// Create a copy of BookingPricing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? provider = null,Object? cost = null,Object? cancellationPolicy = null,Object? refundPolicy = freezed,Object? priceAmount = freezed,Object? currency = freezed,}) {
  return _then(_BookingPricing(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as BookingProvider,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as String,cancellationPolicy: null == cancellationPolicy ? _self.cancellationPolicy : cancellationPolicy // ignore: cast_nullable_to_non_nullable
as String,refundPolicy: freezed == refundPolicy ? _self.refundPolicy : refundPolicy // ignore: cast_nullable_to_non_nullable
as String?,priceAmount: freezed == priceAmount ? _self.priceAmount : priceAmount // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UserContext {

 String? get beforeEvent; String? get afterEvent; TravelBuffer? get travelBuffer; StressLevel? get stressLevel; String? get location; String? get travelMode;
/// Create a copy of UserContext
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserContextCopyWith<UserContext> get copyWith => _$UserContextCopyWithImpl<UserContext>(this as UserContext, _$identity);

  /// Serializes this UserContext to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserContext&&(identical(other.beforeEvent, beforeEvent) || other.beforeEvent == beforeEvent)&&(identical(other.afterEvent, afterEvent) || other.afterEvent == afterEvent)&&(identical(other.travelBuffer, travelBuffer) || other.travelBuffer == travelBuffer)&&(identical(other.stressLevel, stressLevel) || other.stressLevel == stressLevel)&&(identical(other.location, location) || other.location == location)&&(identical(other.travelMode, travelMode) || other.travelMode == travelMode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,beforeEvent,afterEvent,travelBuffer,stressLevel,location,travelMode);

@override
String toString() {
  return 'UserContext(beforeEvent: $beforeEvent, afterEvent: $afterEvent, travelBuffer: $travelBuffer, stressLevel: $stressLevel, location: $location, travelMode: $travelMode)';
}


}

/// @nodoc
abstract mixin class $UserContextCopyWith<$Res>  {
  factory $UserContextCopyWith(UserContext value, $Res Function(UserContext) _then) = _$UserContextCopyWithImpl;
@useResult
$Res call({
 String? beforeEvent, String? afterEvent, TravelBuffer? travelBuffer, StressLevel? stressLevel, String? location, String? travelMode
});




}
/// @nodoc
class _$UserContextCopyWithImpl<$Res>
    implements $UserContextCopyWith<$Res> {
  _$UserContextCopyWithImpl(this._self, this._then);

  final UserContext _self;
  final $Res Function(UserContext) _then;

/// Create a copy of UserContext
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? beforeEvent = freezed,Object? afterEvent = freezed,Object? travelBuffer = freezed,Object? stressLevel = freezed,Object? location = freezed,Object? travelMode = freezed,}) {
  return _then(_self.copyWith(
beforeEvent: freezed == beforeEvent ? _self.beforeEvent : beforeEvent // ignore: cast_nullable_to_non_nullable
as String?,afterEvent: freezed == afterEvent ? _self.afterEvent : afterEvent // ignore: cast_nullable_to_non_nullable
as String?,travelBuffer: freezed == travelBuffer ? _self.travelBuffer : travelBuffer // ignore: cast_nullable_to_non_nullable
as TravelBuffer?,stressLevel: freezed == stressLevel ? _self.stressLevel : stressLevel // ignore: cast_nullable_to_non_nullable
as StressLevel?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,travelMode: freezed == travelMode ? _self.travelMode : travelMode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserContext].
extension UserContextPatterns on UserContext {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserContext value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserContext() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserContext value)  $default,){
final _that = this;
switch (_that) {
case _UserContext():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserContext value)?  $default,){
final _that = this;
switch (_that) {
case _UserContext() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? beforeEvent,  String? afterEvent,  TravelBuffer? travelBuffer,  StressLevel? stressLevel,  String? location,  String? travelMode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserContext() when $default != null:
return $default(_that.beforeEvent,_that.afterEvent,_that.travelBuffer,_that.stressLevel,_that.location,_that.travelMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? beforeEvent,  String? afterEvent,  TravelBuffer? travelBuffer,  StressLevel? stressLevel,  String? location,  String? travelMode)  $default,) {final _that = this;
switch (_that) {
case _UserContext():
return $default(_that.beforeEvent,_that.afterEvent,_that.travelBuffer,_that.stressLevel,_that.location,_that.travelMode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? beforeEvent,  String? afterEvent,  TravelBuffer? travelBuffer,  StressLevel? stressLevel,  String? location,  String? travelMode)?  $default,) {final _that = this;
switch (_that) {
case _UserContext() when $default != null:
return $default(_that.beforeEvent,_that.afterEvent,_that.travelBuffer,_that.stressLevel,_that.location,_that.travelMode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserContext implements UserContext {
  const _UserContext({this.beforeEvent, this.afterEvent, this.travelBuffer, this.stressLevel, this.location, this.travelMode});
  factory _UserContext.fromJson(Map<String, dynamic> json) => _$UserContextFromJson(json);

@override final  String? beforeEvent;
@override final  String? afterEvent;
@override final  TravelBuffer? travelBuffer;
@override final  StressLevel? stressLevel;
@override final  String? location;
@override final  String? travelMode;

/// Create a copy of UserContext
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserContextCopyWith<_UserContext> get copyWith => __$UserContextCopyWithImpl<_UserContext>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserContextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserContext&&(identical(other.beforeEvent, beforeEvent) || other.beforeEvent == beforeEvent)&&(identical(other.afterEvent, afterEvent) || other.afterEvent == afterEvent)&&(identical(other.travelBuffer, travelBuffer) || other.travelBuffer == travelBuffer)&&(identical(other.stressLevel, stressLevel) || other.stressLevel == stressLevel)&&(identical(other.location, location) || other.location == location)&&(identical(other.travelMode, travelMode) || other.travelMode == travelMode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,beforeEvent,afterEvent,travelBuffer,stressLevel,location,travelMode);

@override
String toString() {
  return 'UserContext(beforeEvent: $beforeEvent, afterEvent: $afterEvent, travelBuffer: $travelBuffer, stressLevel: $stressLevel, location: $location, travelMode: $travelMode)';
}


}

/// @nodoc
abstract mixin class _$UserContextCopyWith<$Res> implements $UserContextCopyWith<$Res> {
  factory _$UserContextCopyWith(_UserContext value, $Res Function(_UserContext) _then) = __$UserContextCopyWithImpl;
@override @useResult
$Res call({
 String? beforeEvent, String? afterEvent, TravelBuffer? travelBuffer, StressLevel? stressLevel, String? location, String? travelMode
});




}
/// @nodoc
class __$UserContextCopyWithImpl<$Res>
    implements _$UserContextCopyWith<$Res> {
  __$UserContextCopyWithImpl(this._self, this._then);

  final _UserContext _self;
  final $Res Function(_UserContext) _then;

/// Create a copy of UserContext
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? beforeEvent = freezed,Object? afterEvent = freezed,Object? travelBuffer = freezed,Object? stressLevel = freezed,Object? location = freezed,Object? travelMode = freezed,}) {
  return _then(_UserContext(
beforeEvent: freezed == beforeEvent ? _self.beforeEvent : beforeEvent // ignore: cast_nullable_to_non_nullable
as String?,afterEvent: freezed == afterEvent ? _self.afterEvent : afterEvent // ignore: cast_nullable_to_non_nullable
as String?,travelBuffer: freezed == travelBuffer ? _self.travelBuffer : travelBuffer // ignore: cast_nullable_to_non_nullable
as TravelBuffer?,stressLevel: freezed == stressLevel ? _self.stressLevel : stressLevel // ignore: cast_nullable_to_non_nullable
as StressLevel?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,travelMode: freezed == travelMode ? _self.travelMode : travelMode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BookingPreferences {

 bool get autoAddToCalendar; bool get enableReminders; bool get blockTravelTime; int get arriveEarlyMinutes; String? get preferredCalendar; List<ReminderTiming>? get customReminders;
/// Create a copy of BookingPreferences
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingPreferencesCopyWith<BookingPreferences> get copyWith => _$BookingPreferencesCopyWithImpl<BookingPreferences>(this as BookingPreferences, _$identity);

  /// Serializes this BookingPreferences to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingPreferences&&(identical(other.autoAddToCalendar, autoAddToCalendar) || other.autoAddToCalendar == autoAddToCalendar)&&(identical(other.enableReminders, enableReminders) || other.enableReminders == enableReminders)&&(identical(other.blockTravelTime, blockTravelTime) || other.blockTravelTime == blockTravelTime)&&(identical(other.arriveEarlyMinutes, arriveEarlyMinutes) || other.arriveEarlyMinutes == arriveEarlyMinutes)&&(identical(other.preferredCalendar, preferredCalendar) || other.preferredCalendar == preferredCalendar)&&const DeepCollectionEquality().equals(other.customReminders, customReminders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,autoAddToCalendar,enableReminders,blockTravelTime,arriveEarlyMinutes,preferredCalendar,const DeepCollectionEquality().hash(customReminders));

@override
String toString() {
  return 'BookingPreferences(autoAddToCalendar: $autoAddToCalendar, enableReminders: $enableReminders, blockTravelTime: $blockTravelTime, arriveEarlyMinutes: $arriveEarlyMinutes, preferredCalendar: $preferredCalendar, customReminders: $customReminders)';
}


}

/// @nodoc
abstract mixin class $BookingPreferencesCopyWith<$Res>  {
  factory $BookingPreferencesCopyWith(BookingPreferences value, $Res Function(BookingPreferences) _then) = _$BookingPreferencesCopyWithImpl;
@useResult
$Res call({
 bool autoAddToCalendar, bool enableReminders, bool blockTravelTime, int arriveEarlyMinutes, String? preferredCalendar, List<ReminderTiming>? customReminders
});




}
/// @nodoc
class _$BookingPreferencesCopyWithImpl<$Res>
    implements $BookingPreferencesCopyWith<$Res> {
  _$BookingPreferencesCopyWithImpl(this._self, this._then);

  final BookingPreferences _self;
  final $Res Function(BookingPreferences) _then;

/// Create a copy of BookingPreferences
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? autoAddToCalendar = null,Object? enableReminders = null,Object? blockTravelTime = null,Object? arriveEarlyMinutes = null,Object? preferredCalendar = freezed,Object? customReminders = freezed,}) {
  return _then(_self.copyWith(
autoAddToCalendar: null == autoAddToCalendar ? _self.autoAddToCalendar : autoAddToCalendar // ignore: cast_nullable_to_non_nullable
as bool,enableReminders: null == enableReminders ? _self.enableReminders : enableReminders // ignore: cast_nullable_to_non_nullable
as bool,blockTravelTime: null == blockTravelTime ? _self.blockTravelTime : blockTravelTime // ignore: cast_nullable_to_non_nullable
as bool,arriveEarlyMinutes: null == arriveEarlyMinutes ? _self.arriveEarlyMinutes : arriveEarlyMinutes // ignore: cast_nullable_to_non_nullable
as int,preferredCalendar: freezed == preferredCalendar ? _self.preferredCalendar : preferredCalendar // ignore: cast_nullable_to_non_nullable
as String?,customReminders: freezed == customReminders ? _self.customReminders : customReminders // ignore: cast_nullable_to_non_nullable
as List<ReminderTiming>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingPreferences].
extension BookingPreferencesPatterns on BookingPreferences {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingPreferences value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingPreferences() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingPreferences value)  $default,){
final _that = this;
switch (_that) {
case _BookingPreferences():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingPreferences value)?  $default,){
final _that = this;
switch (_that) {
case _BookingPreferences() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool autoAddToCalendar,  bool enableReminders,  bool blockTravelTime,  int arriveEarlyMinutes,  String? preferredCalendar,  List<ReminderTiming>? customReminders)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingPreferences() when $default != null:
return $default(_that.autoAddToCalendar,_that.enableReminders,_that.blockTravelTime,_that.arriveEarlyMinutes,_that.preferredCalendar,_that.customReminders);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool autoAddToCalendar,  bool enableReminders,  bool blockTravelTime,  int arriveEarlyMinutes,  String? preferredCalendar,  List<ReminderTiming>? customReminders)  $default,) {final _that = this;
switch (_that) {
case _BookingPreferences():
return $default(_that.autoAddToCalendar,_that.enableReminders,_that.blockTravelTime,_that.arriveEarlyMinutes,_that.preferredCalendar,_that.customReminders);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool autoAddToCalendar,  bool enableReminders,  bool blockTravelTime,  int arriveEarlyMinutes,  String? preferredCalendar,  List<ReminderTiming>? customReminders)?  $default,) {final _that = this;
switch (_that) {
case _BookingPreferences() when $default != null:
return $default(_that.autoAddToCalendar,_that.enableReminders,_that.blockTravelTime,_that.arriveEarlyMinutes,_that.preferredCalendar,_that.customReminders);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingPreferences implements BookingPreferences {
  const _BookingPreferences({this.autoAddToCalendar = true, this.enableReminders = true, this.blockTravelTime = true, this.arriveEarlyMinutes = 10, this.preferredCalendar, final  List<ReminderTiming>? customReminders}): _customReminders = customReminders;
  factory _BookingPreferences.fromJson(Map<String, dynamic> json) => _$BookingPreferencesFromJson(json);

@override@JsonKey() final  bool autoAddToCalendar;
@override@JsonKey() final  bool enableReminders;
@override@JsonKey() final  bool blockTravelTime;
@override@JsonKey() final  int arriveEarlyMinutes;
@override final  String? preferredCalendar;
 final  List<ReminderTiming>? _customReminders;
@override List<ReminderTiming>? get customReminders {
  final value = _customReminders;
  if (value == null) return null;
  if (_customReminders is EqualUnmodifiableListView) return _customReminders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BookingPreferences
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingPreferencesCopyWith<_BookingPreferences> get copyWith => __$BookingPreferencesCopyWithImpl<_BookingPreferences>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingPreferencesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingPreferences&&(identical(other.autoAddToCalendar, autoAddToCalendar) || other.autoAddToCalendar == autoAddToCalendar)&&(identical(other.enableReminders, enableReminders) || other.enableReminders == enableReminders)&&(identical(other.blockTravelTime, blockTravelTime) || other.blockTravelTime == blockTravelTime)&&(identical(other.arriveEarlyMinutes, arriveEarlyMinutes) || other.arriveEarlyMinutes == arriveEarlyMinutes)&&(identical(other.preferredCalendar, preferredCalendar) || other.preferredCalendar == preferredCalendar)&&const DeepCollectionEquality().equals(other._customReminders, _customReminders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,autoAddToCalendar,enableReminders,blockTravelTime,arriveEarlyMinutes,preferredCalendar,const DeepCollectionEquality().hash(_customReminders));

@override
String toString() {
  return 'BookingPreferences(autoAddToCalendar: $autoAddToCalendar, enableReminders: $enableReminders, blockTravelTime: $blockTravelTime, arriveEarlyMinutes: $arriveEarlyMinutes, preferredCalendar: $preferredCalendar, customReminders: $customReminders)';
}


}

/// @nodoc
abstract mixin class _$BookingPreferencesCopyWith<$Res> implements $BookingPreferencesCopyWith<$Res> {
  factory _$BookingPreferencesCopyWith(_BookingPreferences value, $Res Function(_BookingPreferences) _then) = __$BookingPreferencesCopyWithImpl;
@override @useResult
$Res call({
 bool autoAddToCalendar, bool enableReminders, bool blockTravelTime, int arriveEarlyMinutes, String? preferredCalendar, List<ReminderTiming>? customReminders
});




}
/// @nodoc
class __$BookingPreferencesCopyWithImpl<$Res>
    implements _$BookingPreferencesCopyWith<$Res> {
  __$BookingPreferencesCopyWithImpl(this._self, this._then);

  final _BookingPreferences _self;
  final $Res Function(_BookingPreferences) _then;

/// Create a copy of BookingPreferences
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? autoAddToCalendar = null,Object? enableReminders = null,Object? blockTravelTime = null,Object? arriveEarlyMinutes = null,Object? preferredCalendar = freezed,Object? customReminders = freezed,}) {
  return _then(_BookingPreferences(
autoAddToCalendar: null == autoAddToCalendar ? _self.autoAddToCalendar : autoAddToCalendar // ignore: cast_nullable_to_non_nullable
as bool,enableReminders: null == enableReminders ? _self.enableReminders : enableReminders // ignore: cast_nullable_to_non_nullable
as bool,blockTravelTime: null == blockTravelTime ? _self.blockTravelTime : blockTravelTime // ignore: cast_nullable_to_non_nullable
as bool,arriveEarlyMinutes: null == arriveEarlyMinutes ? _self.arriveEarlyMinutes : arriveEarlyMinutes // ignore: cast_nullable_to_non_nullable
as int,preferredCalendar: freezed == preferredCalendar ? _self.preferredCalendar : preferredCalendar // ignore: cast_nullable_to_non_nullable
as String?,customReminders: freezed == customReminders ? _self._customReminders : customReminders // ignore: cast_nullable_to_non_nullable
as List<ReminderTiming>?,
  ));
}


}


/// @nodoc
mixin _$CalendarIntegration {

 CalendarProvider get provider; String get accessToken; String get primaryCalendar; List<CalendarInfo> get calendars; Map<String, String>? get settings;
/// Create a copy of CalendarIntegration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarIntegrationCopyWith<CalendarIntegration> get copyWith => _$CalendarIntegrationCopyWithImpl<CalendarIntegration>(this as CalendarIntegration, _$identity);

  /// Serializes this CalendarIntegration to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarIntegration&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.primaryCalendar, primaryCalendar) || other.primaryCalendar == primaryCalendar)&&const DeepCollectionEquality().equals(other.calendars, calendars)&&const DeepCollectionEquality().equals(other.settings, settings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider,accessToken,primaryCalendar,const DeepCollectionEquality().hash(calendars),const DeepCollectionEquality().hash(settings));

@override
String toString() {
  return 'CalendarIntegration(provider: $provider, accessToken: $accessToken, primaryCalendar: $primaryCalendar, calendars: $calendars, settings: $settings)';
}


}

/// @nodoc
abstract mixin class $CalendarIntegrationCopyWith<$Res>  {
  factory $CalendarIntegrationCopyWith(CalendarIntegration value, $Res Function(CalendarIntegration) _then) = _$CalendarIntegrationCopyWithImpl;
@useResult
$Res call({
 CalendarProvider provider, String accessToken, String primaryCalendar, List<CalendarInfo> calendars, Map<String, String>? settings
});




}
/// @nodoc
class _$CalendarIntegrationCopyWithImpl<$Res>
    implements $CalendarIntegrationCopyWith<$Res> {
  _$CalendarIntegrationCopyWithImpl(this._self, this._then);

  final CalendarIntegration _self;
  final $Res Function(CalendarIntegration) _then;

/// Create a copy of CalendarIntegration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? provider = null,Object? accessToken = null,Object? primaryCalendar = null,Object? calendars = null,Object? settings = freezed,}) {
  return _then(_self.copyWith(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as CalendarProvider,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,primaryCalendar: null == primaryCalendar ? _self.primaryCalendar : primaryCalendar // ignore: cast_nullable_to_non_nullable
as String,calendars: null == calendars ? _self.calendars : calendars // ignore: cast_nullable_to_non_nullable
as List<CalendarInfo>,settings: freezed == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CalendarIntegration].
extension CalendarIntegrationPatterns on CalendarIntegration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarIntegration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarIntegration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarIntegration value)  $default,){
final _that = this;
switch (_that) {
case _CalendarIntegration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarIntegration value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarIntegration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CalendarProvider provider,  String accessToken,  String primaryCalendar,  List<CalendarInfo> calendars,  Map<String, String>? settings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarIntegration() when $default != null:
return $default(_that.provider,_that.accessToken,_that.primaryCalendar,_that.calendars,_that.settings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CalendarProvider provider,  String accessToken,  String primaryCalendar,  List<CalendarInfo> calendars,  Map<String, String>? settings)  $default,) {final _that = this;
switch (_that) {
case _CalendarIntegration():
return $default(_that.provider,_that.accessToken,_that.primaryCalendar,_that.calendars,_that.settings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CalendarProvider provider,  String accessToken,  String primaryCalendar,  List<CalendarInfo> calendars,  Map<String, String>? settings)?  $default,) {final _that = this;
switch (_that) {
case _CalendarIntegration() when $default != null:
return $default(_that.provider,_that.accessToken,_that.primaryCalendar,_that.calendars,_that.settings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CalendarIntegration implements CalendarIntegration {
  const _CalendarIntegration({required this.provider, required this.accessToken, required this.primaryCalendar, required final  List<CalendarInfo> calendars, final  Map<String, String>? settings}): _calendars = calendars,_settings = settings;
  factory _CalendarIntegration.fromJson(Map<String, dynamic> json) => _$CalendarIntegrationFromJson(json);

@override final  CalendarProvider provider;
@override final  String accessToken;
@override final  String primaryCalendar;
 final  List<CalendarInfo> _calendars;
@override List<CalendarInfo> get calendars {
  if (_calendars is EqualUnmodifiableListView) return _calendars;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_calendars);
}

 final  Map<String, String>? _settings;
@override Map<String, String>? get settings {
  final value = _settings;
  if (value == null) return null;
  if (_settings is EqualUnmodifiableMapView) return _settings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of CalendarIntegration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarIntegrationCopyWith<_CalendarIntegration> get copyWith => __$CalendarIntegrationCopyWithImpl<_CalendarIntegration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CalendarIntegrationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarIntegration&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.primaryCalendar, primaryCalendar) || other.primaryCalendar == primaryCalendar)&&const DeepCollectionEquality().equals(other._calendars, _calendars)&&const DeepCollectionEquality().equals(other._settings, _settings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider,accessToken,primaryCalendar,const DeepCollectionEquality().hash(_calendars),const DeepCollectionEquality().hash(_settings));

@override
String toString() {
  return 'CalendarIntegration(provider: $provider, accessToken: $accessToken, primaryCalendar: $primaryCalendar, calendars: $calendars, settings: $settings)';
}


}

/// @nodoc
abstract mixin class _$CalendarIntegrationCopyWith<$Res> implements $CalendarIntegrationCopyWith<$Res> {
  factory _$CalendarIntegrationCopyWith(_CalendarIntegration value, $Res Function(_CalendarIntegration) _then) = __$CalendarIntegrationCopyWithImpl;
@override @useResult
$Res call({
 CalendarProvider provider, String accessToken, String primaryCalendar, List<CalendarInfo> calendars, Map<String, String>? settings
});




}
/// @nodoc
class __$CalendarIntegrationCopyWithImpl<$Res>
    implements _$CalendarIntegrationCopyWith<$Res> {
  __$CalendarIntegrationCopyWithImpl(this._self, this._then);

  final _CalendarIntegration _self;
  final $Res Function(_CalendarIntegration) _then;

/// Create a copy of CalendarIntegration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? provider = null,Object? accessToken = null,Object? primaryCalendar = null,Object? calendars = null,Object? settings = freezed,}) {
  return _then(_CalendarIntegration(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as CalendarProvider,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,primaryCalendar: null == primaryCalendar ? _self.primaryCalendar : primaryCalendar // ignore: cast_nullable_to_non_nullable
as String,calendars: null == calendars ? _self._calendars : calendars // ignore: cast_nullable_to_non_nullable
as List<CalendarInfo>,settings: freezed == settings ? _self._settings : settings // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}


/// @nodoc
mixin _$CalendarInfo {

 String get id; String get name; bool get isDefault; String? get description; String? get colorId; bool? get isWritable;
/// Create a copy of CalendarInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarInfoCopyWith<CalendarInfo> get copyWith => _$CalendarInfoCopyWithImpl<CalendarInfo>(this as CalendarInfo, _$identity);

  /// Serializes this CalendarInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.description, description) || other.description == description)&&(identical(other.colorId, colorId) || other.colorId == colorId)&&(identical(other.isWritable, isWritable) || other.isWritable == isWritable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isDefault,description,colorId,isWritable);

@override
String toString() {
  return 'CalendarInfo(id: $id, name: $name, isDefault: $isDefault, description: $description, colorId: $colorId, isWritable: $isWritable)';
}


}

/// @nodoc
abstract mixin class $CalendarInfoCopyWith<$Res>  {
  factory $CalendarInfoCopyWith(CalendarInfo value, $Res Function(CalendarInfo) _then) = _$CalendarInfoCopyWithImpl;
@useResult
$Res call({
 String id, String name, bool isDefault, String? description, String? colorId, bool? isWritable
});




}
/// @nodoc
class _$CalendarInfoCopyWithImpl<$Res>
    implements $CalendarInfoCopyWith<$Res> {
  _$CalendarInfoCopyWithImpl(this._self, this._then);

  final CalendarInfo _self;
  final $Res Function(CalendarInfo) _then;

/// Create a copy of CalendarInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? isDefault = null,Object? description = freezed,Object? colorId = freezed,Object? isWritable = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,colorId: freezed == colorId ? _self.colorId : colorId // ignore: cast_nullable_to_non_nullable
as String?,isWritable: freezed == isWritable ? _self.isWritable : isWritable // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CalendarInfo].
extension CalendarInfoPatterns on CalendarInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarInfo value)  $default,){
final _that = this;
switch (_that) {
case _CalendarInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarInfo value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  bool isDefault,  String? description,  String? colorId,  bool? isWritable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarInfo() when $default != null:
return $default(_that.id,_that.name,_that.isDefault,_that.description,_that.colorId,_that.isWritable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  bool isDefault,  String? description,  String? colorId,  bool? isWritable)  $default,) {final _that = this;
switch (_that) {
case _CalendarInfo():
return $default(_that.id,_that.name,_that.isDefault,_that.description,_that.colorId,_that.isWritable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  bool isDefault,  String? description,  String? colorId,  bool? isWritable)?  $default,) {final _that = this;
switch (_that) {
case _CalendarInfo() when $default != null:
return $default(_that.id,_that.name,_that.isDefault,_that.description,_that.colorId,_that.isWritable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CalendarInfo implements CalendarInfo {
  const _CalendarInfo({required this.id, required this.name, this.isDefault = false, this.description, this.colorId, this.isWritable});
  factory _CalendarInfo.fromJson(Map<String, dynamic> json) => _$CalendarInfoFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  bool isDefault;
@override final  String? description;
@override final  String? colorId;
@override final  bool? isWritable;

/// Create a copy of CalendarInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarInfoCopyWith<_CalendarInfo> get copyWith => __$CalendarInfoCopyWithImpl<_CalendarInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CalendarInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.description, description) || other.description == description)&&(identical(other.colorId, colorId) || other.colorId == colorId)&&(identical(other.isWritable, isWritable) || other.isWritable == isWritable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isDefault,description,colorId,isWritable);

@override
String toString() {
  return 'CalendarInfo(id: $id, name: $name, isDefault: $isDefault, description: $description, colorId: $colorId, isWritable: $isWritable)';
}


}

/// @nodoc
abstract mixin class _$CalendarInfoCopyWith<$Res> implements $CalendarInfoCopyWith<$Res> {
  factory _$CalendarInfoCopyWith(_CalendarInfo value, $Res Function(_CalendarInfo) _then) = __$CalendarInfoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, bool isDefault, String? description, String? colorId, bool? isWritable
});




}
/// @nodoc
class __$CalendarInfoCopyWithImpl<$Res>
    implements _$CalendarInfoCopyWith<$Res> {
  __$CalendarInfoCopyWithImpl(this._self, this._then);

  final _CalendarInfo _self;
  final $Res Function(_CalendarInfo) _then;

/// Create a copy of CalendarInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? isDefault = null,Object? description = freezed,Object? colorId = freezed,Object? isWritable = freezed,}) {
  return _then(_CalendarInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,colorId: freezed == colorId ? _self.colorId : colorId // ignore: cast_nullable_to_non_nullable
as String?,isWritable: freezed == isWritable ? _self.isWritable : isWritable // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$WellnessCalendarEvent {

 String get title; DateTime get start; DateTime get end; String get location; String get description; String? get eventId; List<CalendarAttendee>? get attendees; CalendarReminders? get reminders; String? get colorId; EventTransparency? get transparency; Map<String, String>? get extendedProperties;
/// Create a copy of WellnessCalendarEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WellnessCalendarEventCopyWith<WellnessCalendarEvent> get copyWith => _$WellnessCalendarEventCopyWithImpl<WellnessCalendarEvent>(this as WellnessCalendarEvent, _$identity);

  /// Serializes this WellnessCalendarEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WellnessCalendarEvent&&(identical(other.title, title) || other.title == title)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.location, location) || other.location == location)&&(identical(other.description, description) || other.description == description)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&const DeepCollectionEquality().equals(other.attendees, attendees)&&(identical(other.reminders, reminders) || other.reminders == reminders)&&(identical(other.colorId, colorId) || other.colorId == colorId)&&(identical(other.transparency, transparency) || other.transparency == transparency)&&const DeepCollectionEquality().equals(other.extendedProperties, extendedProperties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,start,end,location,description,eventId,const DeepCollectionEquality().hash(attendees),reminders,colorId,transparency,const DeepCollectionEquality().hash(extendedProperties));

@override
String toString() {
  return 'WellnessCalendarEvent(title: $title, start: $start, end: $end, location: $location, description: $description, eventId: $eventId, attendees: $attendees, reminders: $reminders, colorId: $colorId, transparency: $transparency, extendedProperties: $extendedProperties)';
}


}

/// @nodoc
abstract mixin class $WellnessCalendarEventCopyWith<$Res>  {
  factory $WellnessCalendarEventCopyWith(WellnessCalendarEvent value, $Res Function(WellnessCalendarEvent) _then) = _$WellnessCalendarEventCopyWithImpl;
@useResult
$Res call({
 String title, DateTime start, DateTime end, String location, String description, String? eventId, List<CalendarAttendee>? attendees, CalendarReminders? reminders, String? colorId, EventTransparency? transparency, Map<String, String>? extendedProperties
});


$CalendarRemindersCopyWith<$Res>? get reminders;

}
/// @nodoc
class _$WellnessCalendarEventCopyWithImpl<$Res>
    implements $WellnessCalendarEventCopyWith<$Res> {
  _$WellnessCalendarEventCopyWithImpl(this._self, this._then);

  final WellnessCalendarEvent _self;
  final $Res Function(WellnessCalendarEvent) _then;

/// Create a copy of WellnessCalendarEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? start = null,Object? end = null,Object? location = null,Object? description = null,Object? eventId = freezed,Object? attendees = freezed,Object? reminders = freezed,Object? colorId = freezed,Object? transparency = freezed,Object? extendedProperties = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as DateTime,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,eventId: freezed == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String?,attendees: freezed == attendees ? _self.attendees : attendees // ignore: cast_nullable_to_non_nullable
as List<CalendarAttendee>?,reminders: freezed == reminders ? _self.reminders : reminders // ignore: cast_nullable_to_non_nullable
as CalendarReminders?,colorId: freezed == colorId ? _self.colorId : colorId // ignore: cast_nullable_to_non_nullable
as String?,transparency: freezed == transparency ? _self.transparency : transparency // ignore: cast_nullable_to_non_nullable
as EventTransparency?,extendedProperties: freezed == extendedProperties ? _self.extendedProperties : extendedProperties // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}
/// Create a copy of WellnessCalendarEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalendarRemindersCopyWith<$Res>? get reminders {
    if (_self.reminders == null) {
    return null;
  }

  return $CalendarRemindersCopyWith<$Res>(_self.reminders!, (value) {
    return _then(_self.copyWith(reminders: value));
  });
}
}


/// Adds pattern-matching-related methods to [WellnessCalendarEvent].
extension WellnessCalendarEventPatterns on WellnessCalendarEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WellnessCalendarEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WellnessCalendarEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WellnessCalendarEvent value)  $default,){
final _that = this;
switch (_that) {
case _WellnessCalendarEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WellnessCalendarEvent value)?  $default,){
final _that = this;
switch (_that) {
case _WellnessCalendarEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  DateTime start,  DateTime end,  String location,  String description,  String? eventId,  List<CalendarAttendee>? attendees,  CalendarReminders? reminders,  String? colorId,  EventTransparency? transparency,  Map<String, String>? extendedProperties)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WellnessCalendarEvent() when $default != null:
return $default(_that.title,_that.start,_that.end,_that.location,_that.description,_that.eventId,_that.attendees,_that.reminders,_that.colorId,_that.transparency,_that.extendedProperties);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  DateTime start,  DateTime end,  String location,  String description,  String? eventId,  List<CalendarAttendee>? attendees,  CalendarReminders? reminders,  String? colorId,  EventTransparency? transparency,  Map<String, String>? extendedProperties)  $default,) {final _that = this;
switch (_that) {
case _WellnessCalendarEvent():
return $default(_that.title,_that.start,_that.end,_that.location,_that.description,_that.eventId,_that.attendees,_that.reminders,_that.colorId,_that.transparency,_that.extendedProperties);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  DateTime start,  DateTime end,  String location,  String description,  String? eventId,  List<CalendarAttendee>? attendees,  CalendarReminders? reminders,  String? colorId,  EventTransparency? transparency,  Map<String, String>? extendedProperties)?  $default,) {final _that = this;
switch (_that) {
case _WellnessCalendarEvent() when $default != null:
return $default(_that.title,_that.start,_that.end,_that.location,_that.description,_that.eventId,_that.attendees,_that.reminders,_that.colorId,_that.transparency,_that.extendedProperties);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WellnessCalendarEvent implements WellnessCalendarEvent {
  const _WellnessCalendarEvent({required this.title, required this.start, required this.end, required this.location, required this.description, this.eventId, final  List<CalendarAttendee>? attendees, this.reminders, this.colorId, this.transparency, final  Map<String, String>? extendedProperties}): _attendees = attendees,_extendedProperties = extendedProperties;
  factory _WellnessCalendarEvent.fromJson(Map<String, dynamic> json) => _$WellnessCalendarEventFromJson(json);

@override final  String title;
@override final  DateTime start;
@override final  DateTime end;
@override final  String location;
@override final  String description;
@override final  String? eventId;
 final  List<CalendarAttendee>? _attendees;
@override List<CalendarAttendee>? get attendees {
  final value = _attendees;
  if (value == null) return null;
  if (_attendees is EqualUnmodifiableListView) return _attendees;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  CalendarReminders? reminders;
@override final  String? colorId;
@override final  EventTransparency? transparency;
 final  Map<String, String>? _extendedProperties;
@override Map<String, String>? get extendedProperties {
  final value = _extendedProperties;
  if (value == null) return null;
  if (_extendedProperties is EqualUnmodifiableMapView) return _extendedProperties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of WellnessCalendarEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WellnessCalendarEventCopyWith<_WellnessCalendarEvent> get copyWith => __$WellnessCalendarEventCopyWithImpl<_WellnessCalendarEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WellnessCalendarEventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WellnessCalendarEvent&&(identical(other.title, title) || other.title == title)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.location, location) || other.location == location)&&(identical(other.description, description) || other.description == description)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&const DeepCollectionEquality().equals(other._attendees, _attendees)&&(identical(other.reminders, reminders) || other.reminders == reminders)&&(identical(other.colorId, colorId) || other.colorId == colorId)&&(identical(other.transparency, transparency) || other.transparency == transparency)&&const DeepCollectionEquality().equals(other._extendedProperties, _extendedProperties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,start,end,location,description,eventId,const DeepCollectionEquality().hash(_attendees),reminders,colorId,transparency,const DeepCollectionEquality().hash(_extendedProperties));

@override
String toString() {
  return 'WellnessCalendarEvent(title: $title, start: $start, end: $end, location: $location, description: $description, eventId: $eventId, attendees: $attendees, reminders: $reminders, colorId: $colorId, transparency: $transparency, extendedProperties: $extendedProperties)';
}


}

/// @nodoc
abstract mixin class _$WellnessCalendarEventCopyWith<$Res> implements $WellnessCalendarEventCopyWith<$Res> {
  factory _$WellnessCalendarEventCopyWith(_WellnessCalendarEvent value, $Res Function(_WellnessCalendarEvent) _then) = __$WellnessCalendarEventCopyWithImpl;
@override @useResult
$Res call({
 String title, DateTime start, DateTime end, String location, String description, String? eventId, List<CalendarAttendee>? attendees, CalendarReminders? reminders, String? colorId, EventTransparency? transparency, Map<String, String>? extendedProperties
});


@override $CalendarRemindersCopyWith<$Res>? get reminders;

}
/// @nodoc
class __$WellnessCalendarEventCopyWithImpl<$Res>
    implements _$WellnessCalendarEventCopyWith<$Res> {
  __$WellnessCalendarEventCopyWithImpl(this._self, this._then);

  final _WellnessCalendarEvent _self;
  final $Res Function(_WellnessCalendarEvent) _then;

/// Create a copy of WellnessCalendarEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? start = null,Object? end = null,Object? location = null,Object? description = null,Object? eventId = freezed,Object? attendees = freezed,Object? reminders = freezed,Object? colorId = freezed,Object? transparency = freezed,Object? extendedProperties = freezed,}) {
  return _then(_WellnessCalendarEvent(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as DateTime,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,eventId: freezed == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String?,attendees: freezed == attendees ? _self._attendees : attendees // ignore: cast_nullable_to_non_nullable
as List<CalendarAttendee>?,reminders: freezed == reminders ? _self.reminders : reminders // ignore: cast_nullable_to_non_nullable
as CalendarReminders?,colorId: freezed == colorId ? _self.colorId : colorId // ignore: cast_nullable_to_non_nullable
as String?,transparency: freezed == transparency ? _self.transparency : transparency // ignore: cast_nullable_to_non_nullable
as EventTransparency?,extendedProperties: freezed == extendedProperties ? _self._extendedProperties : extendedProperties // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

/// Create a copy of WellnessCalendarEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalendarRemindersCopyWith<$Res>? get reminders {
    if (_self.reminders == null) {
    return null;
  }

  return $CalendarRemindersCopyWith<$Res>(_self.reminders!, (value) {
    return _then(_self.copyWith(reminders: value));
  });
}
}


/// @nodoc
mixin _$CalendarAttendee {

 String get email; String? get displayName; ResponseStatus get responseStatus;
/// Create a copy of CalendarAttendee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarAttendeeCopyWith<CalendarAttendee> get copyWith => _$CalendarAttendeeCopyWithImpl<CalendarAttendee>(this as CalendarAttendee, _$identity);

  /// Serializes this CalendarAttendee to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarAttendee&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.responseStatus, responseStatus) || other.responseStatus == responseStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,displayName,responseStatus);

@override
String toString() {
  return 'CalendarAttendee(email: $email, displayName: $displayName, responseStatus: $responseStatus)';
}


}

/// @nodoc
abstract mixin class $CalendarAttendeeCopyWith<$Res>  {
  factory $CalendarAttendeeCopyWith(CalendarAttendee value, $Res Function(CalendarAttendee) _then) = _$CalendarAttendeeCopyWithImpl;
@useResult
$Res call({
 String email, String? displayName, ResponseStatus responseStatus
});




}
/// @nodoc
class _$CalendarAttendeeCopyWithImpl<$Res>
    implements $CalendarAttendeeCopyWith<$Res> {
  _$CalendarAttendeeCopyWithImpl(this._self, this._then);

  final CalendarAttendee _self;
  final $Res Function(CalendarAttendee) _then;

/// Create a copy of CalendarAttendee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? displayName = freezed,Object? responseStatus = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,responseStatus: null == responseStatus ? _self.responseStatus : responseStatus // ignore: cast_nullable_to_non_nullable
as ResponseStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [CalendarAttendee].
extension CalendarAttendeePatterns on CalendarAttendee {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarAttendee value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarAttendee() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarAttendee value)  $default,){
final _that = this;
switch (_that) {
case _CalendarAttendee():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarAttendee value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarAttendee() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String? displayName,  ResponseStatus responseStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarAttendee() when $default != null:
return $default(_that.email,_that.displayName,_that.responseStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String? displayName,  ResponseStatus responseStatus)  $default,) {final _that = this;
switch (_that) {
case _CalendarAttendee():
return $default(_that.email,_that.displayName,_that.responseStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String? displayName,  ResponseStatus responseStatus)?  $default,) {final _that = this;
switch (_that) {
case _CalendarAttendee() when $default != null:
return $default(_that.email,_that.displayName,_that.responseStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CalendarAttendee implements CalendarAttendee {
  const _CalendarAttendee({required this.email, this.displayName, this.responseStatus = ResponseStatus.accepted});
  factory _CalendarAttendee.fromJson(Map<String, dynamic> json) => _$CalendarAttendeeFromJson(json);

@override final  String email;
@override final  String? displayName;
@override@JsonKey() final  ResponseStatus responseStatus;

/// Create a copy of CalendarAttendee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarAttendeeCopyWith<_CalendarAttendee> get copyWith => __$CalendarAttendeeCopyWithImpl<_CalendarAttendee>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CalendarAttendeeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarAttendee&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.responseStatus, responseStatus) || other.responseStatus == responseStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,displayName,responseStatus);

@override
String toString() {
  return 'CalendarAttendee(email: $email, displayName: $displayName, responseStatus: $responseStatus)';
}


}

/// @nodoc
abstract mixin class _$CalendarAttendeeCopyWith<$Res> implements $CalendarAttendeeCopyWith<$Res> {
  factory _$CalendarAttendeeCopyWith(_CalendarAttendee value, $Res Function(_CalendarAttendee) _then) = __$CalendarAttendeeCopyWithImpl;
@override @useResult
$Res call({
 String email, String? displayName, ResponseStatus responseStatus
});




}
/// @nodoc
class __$CalendarAttendeeCopyWithImpl<$Res>
    implements _$CalendarAttendeeCopyWith<$Res> {
  __$CalendarAttendeeCopyWithImpl(this._self, this._then);

  final _CalendarAttendee _self;
  final $Res Function(_CalendarAttendee) _then;

/// Create a copy of CalendarAttendee
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? displayName = freezed,Object? responseStatus = null,}) {
  return _then(_CalendarAttendee(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,responseStatus: null == responseStatus ? _self.responseStatus : responseStatus // ignore: cast_nullable_to_non_nullable
as ResponseStatus,
  ));
}


}


/// @nodoc
mixin _$CalendarReminders {

 bool get useDefault; List<ReminderOverride>? get overrides;
/// Create a copy of CalendarReminders
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarRemindersCopyWith<CalendarReminders> get copyWith => _$CalendarRemindersCopyWithImpl<CalendarReminders>(this as CalendarReminders, _$identity);

  /// Serializes this CalendarReminders to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarReminders&&(identical(other.useDefault, useDefault) || other.useDefault == useDefault)&&const DeepCollectionEquality().equals(other.overrides, overrides));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,useDefault,const DeepCollectionEquality().hash(overrides));

@override
String toString() {
  return 'CalendarReminders(useDefault: $useDefault, overrides: $overrides)';
}


}

/// @nodoc
abstract mixin class $CalendarRemindersCopyWith<$Res>  {
  factory $CalendarRemindersCopyWith(CalendarReminders value, $Res Function(CalendarReminders) _then) = _$CalendarRemindersCopyWithImpl;
@useResult
$Res call({
 bool useDefault, List<ReminderOverride>? overrides
});




}
/// @nodoc
class _$CalendarRemindersCopyWithImpl<$Res>
    implements $CalendarRemindersCopyWith<$Res> {
  _$CalendarRemindersCopyWithImpl(this._self, this._then);

  final CalendarReminders _self;
  final $Res Function(CalendarReminders) _then;

/// Create a copy of CalendarReminders
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? useDefault = null,Object? overrides = freezed,}) {
  return _then(_self.copyWith(
useDefault: null == useDefault ? _self.useDefault : useDefault // ignore: cast_nullable_to_non_nullable
as bool,overrides: freezed == overrides ? _self.overrides : overrides // ignore: cast_nullable_to_non_nullable
as List<ReminderOverride>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CalendarReminders].
extension CalendarRemindersPatterns on CalendarReminders {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarReminders value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarReminders() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarReminders value)  $default,){
final _that = this;
switch (_that) {
case _CalendarReminders():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarReminders value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarReminders() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool useDefault,  List<ReminderOverride>? overrides)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarReminders() when $default != null:
return $default(_that.useDefault,_that.overrides);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool useDefault,  List<ReminderOverride>? overrides)  $default,) {final _that = this;
switch (_that) {
case _CalendarReminders():
return $default(_that.useDefault,_that.overrides);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool useDefault,  List<ReminderOverride>? overrides)?  $default,) {final _that = this;
switch (_that) {
case _CalendarReminders() when $default != null:
return $default(_that.useDefault,_that.overrides);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CalendarReminders implements CalendarReminders {
  const _CalendarReminders({this.useDefault = false, final  List<ReminderOverride>? overrides}): _overrides = overrides;
  factory _CalendarReminders.fromJson(Map<String, dynamic> json) => _$CalendarRemindersFromJson(json);

@override@JsonKey() final  bool useDefault;
 final  List<ReminderOverride>? _overrides;
@override List<ReminderOverride>? get overrides {
  final value = _overrides;
  if (value == null) return null;
  if (_overrides is EqualUnmodifiableListView) return _overrides;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CalendarReminders
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarRemindersCopyWith<_CalendarReminders> get copyWith => __$CalendarRemindersCopyWithImpl<_CalendarReminders>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CalendarRemindersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarReminders&&(identical(other.useDefault, useDefault) || other.useDefault == useDefault)&&const DeepCollectionEquality().equals(other._overrides, _overrides));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,useDefault,const DeepCollectionEquality().hash(_overrides));

@override
String toString() {
  return 'CalendarReminders(useDefault: $useDefault, overrides: $overrides)';
}


}

/// @nodoc
abstract mixin class _$CalendarRemindersCopyWith<$Res> implements $CalendarRemindersCopyWith<$Res> {
  factory _$CalendarRemindersCopyWith(_CalendarReminders value, $Res Function(_CalendarReminders) _then) = __$CalendarRemindersCopyWithImpl;
@override @useResult
$Res call({
 bool useDefault, List<ReminderOverride>? overrides
});




}
/// @nodoc
class __$CalendarRemindersCopyWithImpl<$Res>
    implements _$CalendarRemindersCopyWith<$Res> {
  __$CalendarRemindersCopyWithImpl(this._self, this._then);

  final _CalendarReminders _self;
  final $Res Function(_CalendarReminders) _then;

/// Create a copy of CalendarReminders
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? useDefault = null,Object? overrides = freezed,}) {
  return _then(_CalendarReminders(
useDefault: null == useDefault ? _self.useDefault : useDefault // ignore: cast_nullable_to_non_nullable
as bool,overrides: freezed == overrides ? _self._overrides : overrides // ignore: cast_nullable_to_non_nullable
as List<ReminderOverride>?,
  ));
}


}


/// @nodoc
mixin _$ReminderOverride {

 ReminderMethod get method; int get minutes; String? get customMessage;
/// Create a copy of ReminderOverride
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReminderOverrideCopyWith<ReminderOverride> get copyWith => _$ReminderOverrideCopyWithImpl<ReminderOverride>(this as ReminderOverride, _$identity);

  /// Serializes this ReminderOverride to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderOverride&&(identical(other.method, method) || other.method == method)&&(identical(other.minutes, minutes) || other.minutes == minutes)&&(identical(other.customMessage, customMessage) || other.customMessage == customMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,method,minutes,customMessage);

@override
String toString() {
  return 'ReminderOverride(method: $method, minutes: $minutes, customMessage: $customMessage)';
}


}

/// @nodoc
abstract mixin class $ReminderOverrideCopyWith<$Res>  {
  factory $ReminderOverrideCopyWith(ReminderOverride value, $Res Function(ReminderOverride) _then) = _$ReminderOverrideCopyWithImpl;
@useResult
$Res call({
 ReminderMethod method, int minutes, String? customMessage
});




}
/// @nodoc
class _$ReminderOverrideCopyWithImpl<$Res>
    implements $ReminderOverrideCopyWith<$Res> {
  _$ReminderOverrideCopyWithImpl(this._self, this._then);

  final ReminderOverride _self;
  final $Res Function(ReminderOverride) _then;

/// Create a copy of ReminderOverride
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? method = null,Object? minutes = null,Object? customMessage = freezed,}) {
  return _then(_self.copyWith(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as ReminderMethod,minutes: null == minutes ? _self.minutes : minutes // ignore: cast_nullable_to_non_nullable
as int,customMessage: freezed == customMessage ? _self.customMessage : customMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReminderOverride].
extension ReminderOverridePatterns on ReminderOverride {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReminderOverride value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReminderOverride() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReminderOverride value)  $default,){
final _that = this;
switch (_that) {
case _ReminderOverride():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReminderOverride value)?  $default,){
final _that = this;
switch (_that) {
case _ReminderOverride() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReminderMethod method,  int minutes,  String? customMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReminderOverride() when $default != null:
return $default(_that.method,_that.minutes,_that.customMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReminderMethod method,  int minutes,  String? customMessage)  $default,) {final _that = this;
switch (_that) {
case _ReminderOverride():
return $default(_that.method,_that.minutes,_that.customMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReminderMethod method,  int minutes,  String? customMessage)?  $default,) {final _that = this;
switch (_that) {
case _ReminderOverride() when $default != null:
return $default(_that.method,_that.minutes,_that.customMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReminderOverride implements ReminderOverride {
  const _ReminderOverride({required this.method, required this.minutes, this.customMessage});
  factory _ReminderOverride.fromJson(Map<String, dynamic> json) => _$ReminderOverrideFromJson(json);

@override final  ReminderMethod method;
@override final  int minutes;
@override final  String? customMessage;

/// Create a copy of ReminderOverride
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReminderOverrideCopyWith<_ReminderOverride> get copyWith => __$ReminderOverrideCopyWithImpl<_ReminderOverride>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReminderOverrideToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReminderOverride&&(identical(other.method, method) || other.method == method)&&(identical(other.minutes, minutes) || other.minutes == minutes)&&(identical(other.customMessage, customMessage) || other.customMessage == customMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,method,minutes,customMessage);

@override
String toString() {
  return 'ReminderOverride(method: $method, minutes: $minutes, customMessage: $customMessage)';
}


}

/// @nodoc
abstract mixin class _$ReminderOverrideCopyWith<$Res> implements $ReminderOverrideCopyWith<$Res> {
  factory _$ReminderOverrideCopyWith(_ReminderOverride value, $Res Function(_ReminderOverride) _then) = __$ReminderOverrideCopyWithImpl;
@override @useResult
$Res call({
 ReminderMethod method, int minutes, String? customMessage
});




}
/// @nodoc
class __$ReminderOverrideCopyWithImpl<$Res>
    implements _$ReminderOverrideCopyWith<$Res> {
  __$ReminderOverrideCopyWithImpl(this._self, this._then);

  final _ReminderOverride _self;
  final $Res Function(_ReminderOverride) _then;

/// Create a copy of ReminderOverride
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? method = null,Object? minutes = null,Object? customMessage = freezed,}) {
  return _then(_ReminderOverride(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as ReminderMethod,minutes: null == minutes ? _self.minutes : minutes // ignore: cast_nullable_to_non_nullable
as int,customMessage: freezed == customMessage ? _self.customMessage : customMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BookingValidation {

 AvailabilityCheck get availability; CalendarConflictCheck get calendarConflict; RequirementCheck get requirements; ValidationRecommendation get recommendation; List<ValidationIssue>? get issues; TravelTimeAnalysis? get travelTime;
/// Create a copy of BookingValidation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingValidationCopyWith<BookingValidation> get copyWith => _$BookingValidationCopyWithImpl<BookingValidation>(this as BookingValidation, _$identity);

  /// Serializes this BookingValidation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingValidation&&(identical(other.availability, availability) || other.availability == availability)&&(identical(other.calendarConflict, calendarConflict) || other.calendarConflict == calendarConflict)&&(identical(other.requirements, requirements) || other.requirements == requirements)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation)&&const DeepCollectionEquality().equals(other.issues, issues)&&(identical(other.travelTime, travelTime) || other.travelTime == travelTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,availability,calendarConflict,requirements,recommendation,const DeepCollectionEquality().hash(issues),travelTime);

@override
String toString() {
  return 'BookingValidation(availability: $availability, calendarConflict: $calendarConflict, requirements: $requirements, recommendation: $recommendation, issues: $issues, travelTime: $travelTime)';
}


}

/// @nodoc
abstract mixin class $BookingValidationCopyWith<$Res>  {
  factory $BookingValidationCopyWith(BookingValidation value, $Res Function(BookingValidation) _then) = _$BookingValidationCopyWithImpl;
@useResult
$Res call({
 AvailabilityCheck availability, CalendarConflictCheck calendarConflict, RequirementCheck requirements, ValidationRecommendation recommendation, List<ValidationIssue>? issues, TravelTimeAnalysis? travelTime
});


$AvailabilityCheckCopyWith<$Res> get availability;$CalendarConflictCheckCopyWith<$Res> get calendarConflict;$RequirementCheckCopyWith<$Res> get requirements;$TravelTimeAnalysisCopyWith<$Res>? get travelTime;

}
/// @nodoc
class _$BookingValidationCopyWithImpl<$Res>
    implements $BookingValidationCopyWith<$Res> {
  _$BookingValidationCopyWithImpl(this._self, this._then);

  final BookingValidation _self;
  final $Res Function(BookingValidation) _then;

/// Create a copy of BookingValidation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? availability = null,Object? calendarConflict = null,Object? requirements = null,Object? recommendation = null,Object? issues = freezed,Object? travelTime = freezed,}) {
  return _then(_self.copyWith(
availability: null == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as AvailabilityCheck,calendarConflict: null == calendarConflict ? _self.calendarConflict : calendarConflict // ignore: cast_nullable_to_non_nullable
as CalendarConflictCheck,requirements: null == requirements ? _self.requirements : requirements // ignore: cast_nullable_to_non_nullable
as RequirementCheck,recommendation: null == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as ValidationRecommendation,issues: freezed == issues ? _self.issues : issues // ignore: cast_nullable_to_non_nullable
as List<ValidationIssue>?,travelTime: freezed == travelTime ? _self.travelTime : travelTime // ignore: cast_nullable_to_non_nullable
as TravelTimeAnalysis?,
  ));
}
/// Create a copy of BookingValidation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvailabilityCheckCopyWith<$Res> get availability {
  
  return $AvailabilityCheckCopyWith<$Res>(_self.availability, (value) {
    return _then(_self.copyWith(availability: value));
  });
}/// Create a copy of BookingValidation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalendarConflictCheckCopyWith<$Res> get calendarConflict {
  
  return $CalendarConflictCheckCopyWith<$Res>(_self.calendarConflict, (value) {
    return _then(_self.copyWith(calendarConflict: value));
  });
}/// Create a copy of BookingValidation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequirementCheckCopyWith<$Res> get requirements {
  
  return $RequirementCheckCopyWith<$Res>(_self.requirements, (value) {
    return _then(_self.copyWith(requirements: value));
  });
}/// Create a copy of BookingValidation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TravelTimeAnalysisCopyWith<$Res>? get travelTime {
    if (_self.travelTime == null) {
    return null;
  }

  return $TravelTimeAnalysisCopyWith<$Res>(_self.travelTime!, (value) {
    return _then(_self.copyWith(travelTime: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookingValidation].
extension BookingValidationPatterns on BookingValidation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingValidation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingValidation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingValidation value)  $default,){
final _that = this;
switch (_that) {
case _BookingValidation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingValidation value)?  $default,){
final _that = this;
switch (_that) {
case _BookingValidation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AvailabilityCheck availability,  CalendarConflictCheck calendarConflict,  RequirementCheck requirements,  ValidationRecommendation recommendation,  List<ValidationIssue>? issues,  TravelTimeAnalysis? travelTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingValidation() when $default != null:
return $default(_that.availability,_that.calendarConflict,_that.requirements,_that.recommendation,_that.issues,_that.travelTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AvailabilityCheck availability,  CalendarConflictCheck calendarConflict,  RequirementCheck requirements,  ValidationRecommendation recommendation,  List<ValidationIssue>? issues,  TravelTimeAnalysis? travelTime)  $default,) {final _that = this;
switch (_that) {
case _BookingValidation():
return $default(_that.availability,_that.calendarConflict,_that.requirements,_that.recommendation,_that.issues,_that.travelTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AvailabilityCheck availability,  CalendarConflictCheck calendarConflict,  RequirementCheck requirements,  ValidationRecommendation recommendation,  List<ValidationIssue>? issues,  TravelTimeAnalysis? travelTime)?  $default,) {final _that = this;
switch (_that) {
case _BookingValidation() when $default != null:
return $default(_that.availability,_that.calendarConflict,_that.requirements,_that.recommendation,_that.issues,_that.travelTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingValidation implements BookingValidation {
  const _BookingValidation({required this.availability, required this.calendarConflict, required this.requirements, required this.recommendation, final  List<ValidationIssue>? issues, this.travelTime}): _issues = issues;
  factory _BookingValidation.fromJson(Map<String, dynamic> json) => _$BookingValidationFromJson(json);

@override final  AvailabilityCheck availability;
@override final  CalendarConflictCheck calendarConflict;
@override final  RequirementCheck requirements;
@override final  ValidationRecommendation recommendation;
 final  List<ValidationIssue>? _issues;
@override List<ValidationIssue>? get issues {
  final value = _issues;
  if (value == null) return null;
  if (_issues is EqualUnmodifiableListView) return _issues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  TravelTimeAnalysis? travelTime;

/// Create a copy of BookingValidation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingValidationCopyWith<_BookingValidation> get copyWith => __$BookingValidationCopyWithImpl<_BookingValidation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingValidationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingValidation&&(identical(other.availability, availability) || other.availability == availability)&&(identical(other.calendarConflict, calendarConflict) || other.calendarConflict == calendarConflict)&&(identical(other.requirements, requirements) || other.requirements == requirements)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation)&&const DeepCollectionEquality().equals(other._issues, _issues)&&(identical(other.travelTime, travelTime) || other.travelTime == travelTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,availability,calendarConflict,requirements,recommendation,const DeepCollectionEquality().hash(_issues),travelTime);

@override
String toString() {
  return 'BookingValidation(availability: $availability, calendarConflict: $calendarConflict, requirements: $requirements, recommendation: $recommendation, issues: $issues, travelTime: $travelTime)';
}


}

/// @nodoc
abstract mixin class _$BookingValidationCopyWith<$Res> implements $BookingValidationCopyWith<$Res> {
  factory _$BookingValidationCopyWith(_BookingValidation value, $Res Function(_BookingValidation) _then) = __$BookingValidationCopyWithImpl;
@override @useResult
$Res call({
 AvailabilityCheck availability, CalendarConflictCheck calendarConflict, RequirementCheck requirements, ValidationRecommendation recommendation, List<ValidationIssue>? issues, TravelTimeAnalysis? travelTime
});


@override $AvailabilityCheckCopyWith<$Res> get availability;@override $CalendarConflictCheckCopyWith<$Res> get calendarConflict;@override $RequirementCheckCopyWith<$Res> get requirements;@override $TravelTimeAnalysisCopyWith<$Res>? get travelTime;

}
/// @nodoc
class __$BookingValidationCopyWithImpl<$Res>
    implements _$BookingValidationCopyWith<$Res> {
  __$BookingValidationCopyWithImpl(this._self, this._then);

  final _BookingValidation _self;
  final $Res Function(_BookingValidation) _then;

/// Create a copy of BookingValidation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? availability = null,Object? calendarConflict = null,Object? requirements = null,Object? recommendation = null,Object? issues = freezed,Object? travelTime = freezed,}) {
  return _then(_BookingValidation(
availability: null == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as AvailabilityCheck,calendarConflict: null == calendarConflict ? _self.calendarConflict : calendarConflict // ignore: cast_nullable_to_non_nullable
as CalendarConflictCheck,requirements: null == requirements ? _self.requirements : requirements // ignore: cast_nullable_to_non_nullable
as RequirementCheck,recommendation: null == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as ValidationRecommendation,issues: freezed == issues ? _self._issues : issues // ignore: cast_nullable_to_non_nullable
as List<ValidationIssue>?,travelTime: freezed == travelTime ? _self.travelTime : travelTime // ignore: cast_nullable_to_non_nullable
as TravelTimeAnalysis?,
  ));
}

/// Create a copy of BookingValidation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvailabilityCheckCopyWith<$Res> get availability {
  
  return $AvailabilityCheckCopyWith<$Res>(_self.availability, (value) {
    return _then(_self.copyWith(availability: value));
  });
}/// Create a copy of BookingValidation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalendarConflictCheckCopyWith<$Res> get calendarConflict {
  
  return $CalendarConflictCheckCopyWith<$Res>(_self.calendarConflict, (value) {
    return _then(_self.copyWith(calendarConflict: value));
  });
}/// Create a copy of BookingValidation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequirementCheckCopyWith<$Res> get requirements {
  
  return $RequirementCheckCopyWith<$Res>(_self.requirements, (value) {
    return _then(_self.copyWith(requirements: value));
  });
}/// Create a copy of BookingValidation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TravelTimeAnalysisCopyWith<$Res>? get travelTime {
    if (_self.travelTime == null) {
    return null;
  }

  return $TravelTimeAnalysisCopyWith<$Res>(_self.travelTime!, (value) {
    return _then(_self.copyWith(travelTime: value));
  });
}
}


/// @nodoc
mixin _$AvailabilityCheck {

 AvailabilityStatus get status; int? get spotsLeft; DateTime get timestamp; String? get waitlistAvailable;
/// Create a copy of AvailabilityCheck
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvailabilityCheckCopyWith<AvailabilityCheck> get copyWith => _$AvailabilityCheckCopyWithImpl<AvailabilityCheck>(this as AvailabilityCheck, _$identity);

  /// Serializes this AvailabilityCheck to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailabilityCheck&&(identical(other.status, status) || other.status == status)&&(identical(other.spotsLeft, spotsLeft) || other.spotsLeft == spotsLeft)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.waitlistAvailable, waitlistAvailable) || other.waitlistAvailable == waitlistAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,spotsLeft,timestamp,waitlistAvailable);

@override
String toString() {
  return 'AvailabilityCheck(status: $status, spotsLeft: $spotsLeft, timestamp: $timestamp, waitlistAvailable: $waitlistAvailable)';
}


}

/// @nodoc
abstract mixin class $AvailabilityCheckCopyWith<$Res>  {
  factory $AvailabilityCheckCopyWith(AvailabilityCheck value, $Res Function(AvailabilityCheck) _then) = _$AvailabilityCheckCopyWithImpl;
@useResult
$Res call({
 AvailabilityStatus status, int? spotsLeft, DateTime timestamp, String? waitlistAvailable
});




}
/// @nodoc
class _$AvailabilityCheckCopyWithImpl<$Res>
    implements $AvailabilityCheckCopyWith<$Res> {
  _$AvailabilityCheckCopyWithImpl(this._self, this._then);

  final AvailabilityCheck _self;
  final $Res Function(AvailabilityCheck) _then;

/// Create a copy of AvailabilityCheck
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? spotsLeft = freezed,Object? timestamp = null,Object? waitlistAvailable = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AvailabilityStatus,spotsLeft: freezed == spotsLeft ? _self.spotsLeft : spotsLeft // ignore: cast_nullable_to_non_nullable
as int?,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,waitlistAvailable: freezed == waitlistAvailable ? _self.waitlistAvailable : waitlistAvailable // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AvailabilityCheck].
extension AvailabilityCheckPatterns on AvailabilityCheck {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AvailabilityCheck value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AvailabilityCheck() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AvailabilityCheck value)  $default,){
final _that = this;
switch (_that) {
case _AvailabilityCheck():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AvailabilityCheck value)?  $default,){
final _that = this;
switch (_that) {
case _AvailabilityCheck() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AvailabilityStatus status,  int? spotsLeft,  DateTime timestamp,  String? waitlistAvailable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AvailabilityCheck() when $default != null:
return $default(_that.status,_that.spotsLeft,_that.timestamp,_that.waitlistAvailable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AvailabilityStatus status,  int? spotsLeft,  DateTime timestamp,  String? waitlistAvailable)  $default,) {final _that = this;
switch (_that) {
case _AvailabilityCheck():
return $default(_that.status,_that.spotsLeft,_that.timestamp,_that.waitlistAvailable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AvailabilityStatus status,  int? spotsLeft,  DateTime timestamp,  String? waitlistAvailable)?  $default,) {final _that = this;
switch (_that) {
case _AvailabilityCheck() when $default != null:
return $default(_that.status,_that.spotsLeft,_that.timestamp,_that.waitlistAvailable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AvailabilityCheck implements AvailabilityCheck {
  const _AvailabilityCheck({required this.status, this.spotsLeft, required this.timestamp, this.waitlistAvailable});
  factory _AvailabilityCheck.fromJson(Map<String, dynamic> json) => _$AvailabilityCheckFromJson(json);

@override final  AvailabilityStatus status;
@override final  int? spotsLeft;
@override final  DateTime timestamp;
@override final  String? waitlistAvailable;

/// Create a copy of AvailabilityCheck
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvailabilityCheckCopyWith<_AvailabilityCheck> get copyWith => __$AvailabilityCheckCopyWithImpl<_AvailabilityCheck>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AvailabilityCheckToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvailabilityCheck&&(identical(other.status, status) || other.status == status)&&(identical(other.spotsLeft, spotsLeft) || other.spotsLeft == spotsLeft)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.waitlistAvailable, waitlistAvailable) || other.waitlistAvailable == waitlistAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,spotsLeft,timestamp,waitlistAvailable);

@override
String toString() {
  return 'AvailabilityCheck(status: $status, spotsLeft: $spotsLeft, timestamp: $timestamp, waitlistAvailable: $waitlistAvailable)';
}


}

/// @nodoc
abstract mixin class _$AvailabilityCheckCopyWith<$Res> implements $AvailabilityCheckCopyWith<$Res> {
  factory _$AvailabilityCheckCopyWith(_AvailabilityCheck value, $Res Function(_AvailabilityCheck) _then) = __$AvailabilityCheckCopyWithImpl;
@override @useResult
$Res call({
 AvailabilityStatus status, int? spotsLeft, DateTime timestamp, String? waitlistAvailable
});




}
/// @nodoc
class __$AvailabilityCheckCopyWithImpl<$Res>
    implements _$AvailabilityCheckCopyWith<$Res> {
  __$AvailabilityCheckCopyWithImpl(this._self, this._then);

  final _AvailabilityCheck _self;
  final $Res Function(_AvailabilityCheck) _then;

/// Create a copy of AvailabilityCheck
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? spotsLeft = freezed,Object? timestamp = null,Object? waitlistAvailable = freezed,}) {
  return _then(_AvailabilityCheck(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AvailabilityStatus,spotsLeft: freezed == spotsLeft ? _self.spotsLeft : spotsLeft // ignore: cast_nullable_to_non_nullable
as int?,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,waitlistAvailable: freezed == waitlistAvailable ? _self.waitlistAvailable : waitlistAvailable // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CalendarConflictCheck {

 bool get hasConflict; List<CalendarConflict>? get conflicts; TravelTimeAnalysis? get travelTime;
/// Create a copy of CalendarConflictCheck
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarConflictCheckCopyWith<CalendarConflictCheck> get copyWith => _$CalendarConflictCheckCopyWithImpl<CalendarConflictCheck>(this as CalendarConflictCheck, _$identity);

  /// Serializes this CalendarConflictCheck to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarConflictCheck&&(identical(other.hasConflict, hasConflict) || other.hasConflict == hasConflict)&&const DeepCollectionEquality().equals(other.conflicts, conflicts)&&(identical(other.travelTime, travelTime) || other.travelTime == travelTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasConflict,const DeepCollectionEquality().hash(conflicts),travelTime);

@override
String toString() {
  return 'CalendarConflictCheck(hasConflict: $hasConflict, conflicts: $conflicts, travelTime: $travelTime)';
}


}

/// @nodoc
abstract mixin class $CalendarConflictCheckCopyWith<$Res>  {
  factory $CalendarConflictCheckCopyWith(CalendarConflictCheck value, $Res Function(CalendarConflictCheck) _then) = _$CalendarConflictCheckCopyWithImpl;
@useResult
$Res call({
 bool hasConflict, List<CalendarConflict>? conflicts, TravelTimeAnalysis? travelTime
});


$TravelTimeAnalysisCopyWith<$Res>? get travelTime;

}
/// @nodoc
class _$CalendarConflictCheckCopyWithImpl<$Res>
    implements $CalendarConflictCheckCopyWith<$Res> {
  _$CalendarConflictCheckCopyWithImpl(this._self, this._then);

  final CalendarConflictCheck _self;
  final $Res Function(CalendarConflictCheck) _then;

/// Create a copy of CalendarConflictCheck
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hasConflict = null,Object? conflicts = freezed,Object? travelTime = freezed,}) {
  return _then(_self.copyWith(
hasConflict: null == hasConflict ? _self.hasConflict : hasConflict // ignore: cast_nullable_to_non_nullable
as bool,conflicts: freezed == conflicts ? _self.conflicts : conflicts // ignore: cast_nullable_to_non_nullable
as List<CalendarConflict>?,travelTime: freezed == travelTime ? _self.travelTime : travelTime // ignore: cast_nullable_to_non_nullable
as TravelTimeAnalysis?,
  ));
}
/// Create a copy of CalendarConflictCheck
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TravelTimeAnalysisCopyWith<$Res>? get travelTime {
    if (_self.travelTime == null) {
    return null;
  }

  return $TravelTimeAnalysisCopyWith<$Res>(_self.travelTime!, (value) {
    return _then(_self.copyWith(travelTime: value));
  });
}
}


/// Adds pattern-matching-related methods to [CalendarConflictCheck].
extension CalendarConflictCheckPatterns on CalendarConflictCheck {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarConflictCheck value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarConflictCheck() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarConflictCheck value)  $default,){
final _that = this;
switch (_that) {
case _CalendarConflictCheck():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarConflictCheck value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarConflictCheck() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool hasConflict,  List<CalendarConflict>? conflicts,  TravelTimeAnalysis? travelTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarConflictCheck() when $default != null:
return $default(_that.hasConflict,_that.conflicts,_that.travelTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool hasConflict,  List<CalendarConflict>? conflicts,  TravelTimeAnalysis? travelTime)  $default,) {final _that = this;
switch (_that) {
case _CalendarConflictCheck():
return $default(_that.hasConflict,_that.conflicts,_that.travelTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool hasConflict,  List<CalendarConflict>? conflicts,  TravelTimeAnalysis? travelTime)?  $default,) {final _that = this;
switch (_that) {
case _CalendarConflictCheck() when $default != null:
return $default(_that.hasConflict,_that.conflicts,_that.travelTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CalendarConflictCheck implements CalendarConflictCheck {
  const _CalendarConflictCheck({this.hasConflict = false, final  List<CalendarConflict>? conflicts, this.travelTime}): _conflicts = conflicts;
  factory _CalendarConflictCheck.fromJson(Map<String, dynamic> json) => _$CalendarConflictCheckFromJson(json);

@override@JsonKey() final  bool hasConflict;
 final  List<CalendarConflict>? _conflicts;
@override List<CalendarConflict>? get conflicts {
  final value = _conflicts;
  if (value == null) return null;
  if (_conflicts is EqualUnmodifiableListView) return _conflicts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  TravelTimeAnalysis? travelTime;

/// Create a copy of CalendarConflictCheck
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarConflictCheckCopyWith<_CalendarConflictCheck> get copyWith => __$CalendarConflictCheckCopyWithImpl<_CalendarConflictCheck>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CalendarConflictCheckToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarConflictCheck&&(identical(other.hasConflict, hasConflict) || other.hasConflict == hasConflict)&&const DeepCollectionEquality().equals(other._conflicts, _conflicts)&&(identical(other.travelTime, travelTime) || other.travelTime == travelTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasConflict,const DeepCollectionEquality().hash(_conflicts),travelTime);

@override
String toString() {
  return 'CalendarConflictCheck(hasConflict: $hasConflict, conflicts: $conflicts, travelTime: $travelTime)';
}


}

/// @nodoc
abstract mixin class _$CalendarConflictCheckCopyWith<$Res> implements $CalendarConflictCheckCopyWith<$Res> {
  factory _$CalendarConflictCheckCopyWith(_CalendarConflictCheck value, $Res Function(_CalendarConflictCheck) _then) = __$CalendarConflictCheckCopyWithImpl;
@override @useResult
$Res call({
 bool hasConflict, List<CalendarConflict>? conflicts, TravelTimeAnalysis? travelTime
});


@override $TravelTimeAnalysisCopyWith<$Res>? get travelTime;

}
/// @nodoc
class __$CalendarConflictCheckCopyWithImpl<$Res>
    implements _$CalendarConflictCheckCopyWith<$Res> {
  __$CalendarConflictCheckCopyWithImpl(this._self, this._then);

  final _CalendarConflictCheck _self;
  final $Res Function(_CalendarConflictCheck) _then;

/// Create a copy of CalendarConflictCheck
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasConflict = null,Object? conflicts = freezed,Object? travelTime = freezed,}) {
  return _then(_CalendarConflictCheck(
hasConflict: null == hasConflict ? _self.hasConflict : hasConflict // ignore: cast_nullable_to_non_nullable
as bool,conflicts: freezed == conflicts ? _self._conflicts : conflicts // ignore: cast_nullable_to_non_nullable
as List<CalendarConflict>?,travelTime: freezed == travelTime ? _self.travelTime : travelTime // ignore: cast_nullable_to_non_nullable
as TravelTimeAnalysis?,
  ));
}

/// Create a copy of CalendarConflictCheck
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TravelTimeAnalysisCopyWith<$Res>? get travelTime {
    if (_self.travelTime == null) {
    return null;
  }

  return $TravelTimeAnalysisCopyWith<$Res>(_self.travelTime!, (value) {
    return _then(_self.copyWith(travelTime: value));
  });
}
}


/// @nodoc
mixin _$CalendarConflict {

 String get eventTitle; DateTime get eventStart; DateTime get eventEnd; ConflictSeverity? get severity; String? get resolution;
/// Create a copy of CalendarConflict
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarConflictCopyWith<CalendarConflict> get copyWith => _$CalendarConflictCopyWithImpl<CalendarConflict>(this as CalendarConflict, _$identity);

  /// Serializes this CalendarConflict to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarConflict&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventStart, eventStart) || other.eventStart == eventStart)&&(identical(other.eventEnd, eventEnd) || other.eventEnd == eventEnd)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.resolution, resolution) || other.resolution == resolution));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventTitle,eventStart,eventEnd,severity,resolution);

@override
String toString() {
  return 'CalendarConflict(eventTitle: $eventTitle, eventStart: $eventStart, eventEnd: $eventEnd, severity: $severity, resolution: $resolution)';
}


}

/// @nodoc
abstract mixin class $CalendarConflictCopyWith<$Res>  {
  factory $CalendarConflictCopyWith(CalendarConflict value, $Res Function(CalendarConflict) _then) = _$CalendarConflictCopyWithImpl;
@useResult
$Res call({
 String eventTitle, DateTime eventStart, DateTime eventEnd, ConflictSeverity? severity, String? resolution
});




}
/// @nodoc
class _$CalendarConflictCopyWithImpl<$Res>
    implements $CalendarConflictCopyWith<$Res> {
  _$CalendarConflictCopyWithImpl(this._self, this._then);

  final CalendarConflict _self;
  final $Res Function(CalendarConflict) _then;

/// Create a copy of CalendarConflict
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventTitle = null,Object? eventStart = null,Object? eventEnd = null,Object? severity = freezed,Object? resolution = freezed,}) {
  return _then(_self.copyWith(
eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventStart: null == eventStart ? _self.eventStart : eventStart // ignore: cast_nullable_to_non_nullable
as DateTime,eventEnd: null == eventEnd ? _self.eventEnd : eventEnd // ignore: cast_nullable_to_non_nullable
as DateTime,severity: freezed == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as ConflictSeverity?,resolution: freezed == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CalendarConflict].
extension CalendarConflictPatterns on CalendarConflict {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarConflict value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarConflict() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarConflict value)  $default,){
final _that = this;
switch (_that) {
case _CalendarConflict():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarConflict value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarConflict() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String eventTitle,  DateTime eventStart,  DateTime eventEnd,  ConflictSeverity? severity,  String? resolution)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarConflict() when $default != null:
return $default(_that.eventTitle,_that.eventStart,_that.eventEnd,_that.severity,_that.resolution);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String eventTitle,  DateTime eventStart,  DateTime eventEnd,  ConflictSeverity? severity,  String? resolution)  $default,) {final _that = this;
switch (_that) {
case _CalendarConflict():
return $default(_that.eventTitle,_that.eventStart,_that.eventEnd,_that.severity,_that.resolution);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String eventTitle,  DateTime eventStart,  DateTime eventEnd,  ConflictSeverity? severity,  String? resolution)?  $default,) {final _that = this;
switch (_that) {
case _CalendarConflict() when $default != null:
return $default(_that.eventTitle,_that.eventStart,_that.eventEnd,_that.severity,_that.resolution);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CalendarConflict implements CalendarConflict {
  const _CalendarConflict({required this.eventTitle, required this.eventStart, required this.eventEnd, this.severity, this.resolution});
  factory _CalendarConflict.fromJson(Map<String, dynamic> json) => _$CalendarConflictFromJson(json);

@override final  String eventTitle;
@override final  DateTime eventStart;
@override final  DateTime eventEnd;
@override final  ConflictSeverity? severity;
@override final  String? resolution;

/// Create a copy of CalendarConflict
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarConflictCopyWith<_CalendarConflict> get copyWith => __$CalendarConflictCopyWithImpl<_CalendarConflict>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CalendarConflictToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarConflict&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventStart, eventStart) || other.eventStart == eventStart)&&(identical(other.eventEnd, eventEnd) || other.eventEnd == eventEnd)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.resolution, resolution) || other.resolution == resolution));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventTitle,eventStart,eventEnd,severity,resolution);

@override
String toString() {
  return 'CalendarConflict(eventTitle: $eventTitle, eventStart: $eventStart, eventEnd: $eventEnd, severity: $severity, resolution: $resolution)';
}


}

/// @nodoc
abstract mixin class _$CalendarConflictCopyWith<$Res> implements $CalendarConflictCopyWith<$Res> {
  factory _$CalendarConflictCopyWith(_CalendarConflict value, $Res Function(_CalendarConflict) _then) = __$CalendarConflictCopyWithImpl;
@override @useResult
$Res call({
 String eventTitle, DateTime eventStart, DateTime eventEnd, ConflictSeverity? severity, String? resolution
});




}
/// @nodoc
class __$CalendarConflictCopyWithImpl<$Res>
    implements _$CalendarConflictCopyWith<$Res> {
  __$CalendarConflictCopyWithImpl(this._self, this._then);

  final _CalendarConflict _self;
  final $Res Function(_CalendarConflict) _then;

/// Create a copy of CalendarConflict
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventTitle = null,Object? eventStart = null,Object? eventEnd = null,Object? severity = freezed,Object? resolution = freezed,}) {
  return _then(_CalendarConflict(
eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventStart: null == eventStart ? _self.eventStart : eventStart // ignore: cast_nullable_to_non_nullable
as DateTime,eventEnd: null == eventEnd ? _self.eventEnd : eventEnd // ignore: cast_nullable_to_non_nullable
as DateTime,severity: freezed == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as ConflictSeverity?,resolution: freezed == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TravelTimeAnalysis {

 TravelLeg? get before; TravelLeg? get after; bool get isEnoughTime; String? get suggestions;
/// Create a copy of TravelTimeAnalysis
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TravelTimeAnalysisCopyWith<TravelTimeAnalysis> get copyWith => _$TravelTimeAnalysisCopyWithImpl<TravelTimeAnalysis>(this as TravelTimeAnalysis, _$identity);

  /// Serializes this TravelTimeAnalysis to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelTimeAnalysis&&(identical(other.before, before) || other.before == before)&&(identical(other.after, after) || other.after == after)&&(identical(other.isEnoughTime, isEnoughTime) || other.isEnoughTime == isEnoughTime)&&(identical(other.suggestions, suggestions) || other.suggestions == suggestions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,before,after,isEnoughTime,suggestions);

@override
String toString() {
  return 'TravelTimeAnalysis(before: $before, after: $after, isEnoughTime: $isEnoughTime, suggestions: $suggestions)';
}


}

/// @nodoc
abstract mixin class $TravelTimeAnalysisCopyWith<$Res>  {
  factory $TravelTimeAnalysisCopyWith(TravelTimeAnalysis value, $Res Function(TravelTimeAnalysis) _then) = _$TravelTimeAnalysisCopyWithImpl;
@useResult
$Res call({
 TravelLeg? before, TravelLeg? after, bool isEnoughTime, String? suggestions
});


$TravelLegCopyWith<$Res>? get before;$TravelLegCopyWith<$Res>? get after;

}
/// @nodoc
class _$TravelTimeAnalysisCopyWithImpl<$Res>
    implements $TravelTimeAnalysisCopyWith<$Res> {
  _$TravelTimeAnalysisCopyWithImpl(this._self, this._then);

  final TravelTimeAnalysis _self;
  final $Res Function(TravelTimeAnalysis) _then;

/// Create a copy of TravelTimeAnalysis
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? before = freezed,Object? after = freezed,Object? isEnoughTime = null,Object? suggestions = freezed,}) {
  return _then(_self.copyWith(
before: freezed == before ? _self.before : before // ignore: cast_nullable_to_non_nullable
as TravelLeg?,after: freezed == after ? _self.after : after // ignore: cast_nullable_to_non_nullable
as TravelLeg?,isEnoughTime: null == isEnoughTime ? _self.isEnoughTime : isEnoughTime // ignore: cast_nullable_to_non_nullable
as bool,suggestions: freezed == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of TravelTimeAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TravelLegCopyWith<$Res>? get before {
    if (_self.before == null) {
    return null;
  }

  return $TravelLegCopyWith<$Res>(_self.before!, (value) {
    return _then(_self.copyWith(before: value));
  });
}/// Create a copy of TravelTimeAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TravelLegCopyWith<$Res>? get after {
    if (_self.after == null) {
    return null;
  }

  return $TravelLegCopyWith<$Res>(_self.after!, (value) {
    return _then(_self.copyWith(after: value));
  });
}
}


/// Adds pattern-matching-related methods to [TravelTimeAnalysis].
extension TravelTimeAnalysisPatterns on TravelTimeAnalysis {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TravelTimeAnalysis value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TravelTimeAnalysis() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TravelTimeAnalysis value)  $default,){
final _that = this;
switch (_that) {
case _TravelTimeAnalysis():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TravelTimeAnalysis value)?  $default,){
final _that = this;
switch (_that) {
case _TravelTimeAnalysis() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TravelLeg? before,  TravelLeg? after,  bool isEnoughTime,  String? suggestions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TravelTimeAnalysis() when $default != null:
return $default(_that.before,_that.after,_that.isEnoughTime,_that.suggestions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TravelLeg? before,  TravelLeg? after,  bool isEnoughTime,  String? suggestions)  $default,) {final _that = this;
switch (_that) {
case _TravelTimeAnalysis():
return $default(_that.before,_that.after,_that.isEnoughTime,_that.suggestions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TravelLeg? before,  TravelLeg? after,  bool isEnoughTime,  String? suggestions)?  $default,) {final _that = this;
switch (_that) {
case _TravelTimeAnalysis() when $default != null:
return $default(_that.before,_that.after,_that.isEnoughTime,_that.suggestions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TravelTimeAnalysis implements TravelTimeAnalysis {
  const _TravelTimeAnalysis({this.before, this.after, this.isEnoughTime = true, this.suggestions});
  factory _TravelTimeAnalysis.fromJson(Map<String, dynamic> json) => _$TravelTimeAnalysisFromJson(json);

@override final  TravelLeg? before;
@override final  TravelLeg? after;
@override@JsonKey() final  bool isEnoughTime;
@override final  String? suggestions;

/// Create a copy of TravelTimeAnalysis
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TravelTimeAnalysisCopyWith<_TravelTimeAnalysis> get copyWith => __$TravelTimeAnalysisCopyWithImpl<_TravelTimeAnalysis>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TravelTimeAnalysisToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TravelTimeAnalysis&&(identical(other.before, before) || other.before == before)&&(identical(other.after, after) || other.after == after)&&(identical(other.isEnoughTime, isEnoughTime) || other.isEnoughTime == isEnoughTime)&&(identical(other.suggestions, suggestions) || other.suggestions == suggestions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,before,after,isEnoughTime,suggestions);

@override
String toString() {
  return 'TravelTimeAnalysis(before: $before, after: $after, isEnoughTime: $isEnoughTime, suggestions: $suggestions)';
}


}

/// @nodoc
abstract mixin class _$TravelTimeAnalysisCopyWith<$Res> implements $TravelTimeAnalysisCopyWith<$Res> {
  factory _$TravelTimeAnalysisCopyWith(_TravelTimeAnalysis value, $Res Function(_TravelTimeAnalysis) _then) = __$TravelTimeAnalysisCopyWithImpl;
@override @useResult
$Res call({
 TravelLeg? before, TravelLeg? after, bool isEnoughTime, String? suggestions
});


@override $TravelLegCopyWith<$Res>? get before;@override $TravelLegCopyWith<$Res>? get after;

}
/// @nodoc
class __$TravelTimeAnalysisCopyWithImpl<$Res>
    implements _$TravelTimeAnalysisCopyWith<$Res> {
  __$TravelTimeAnalysisCopyWithImpl(this._self, this._then);

  final _TravelTimeAnalysis _self;
  final $Res Function(_TravelTimeAnalysis) _then;

/// Create a copy of TravelTimeAnalysis
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? before = freezed,Object? after = freezed,Object? isEnoughTime = null,Object? suggestions = freezed,}) {
  return _then(_TravelTimeAnalysis(
before: freezed == before ? _self.before : before // ignore: cast_nullable_to_non_nullable
as TravelLeg?,after: freezed == after ? _self.after : after // ignore: cast_nullable_to_non_nullable
as TravelLeg?,isEnoughTime: null == isEnoughTime ? _self.isEnoughTime : isEnoughTime // ignore: cast_nullable_to_non_nullable
as bool,suggestions: freezed == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of TravelTimeAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TravelLegCopyWith<$Res>? get before {
    if (_self.before == null) {
    return null;
  }

  return $TravelLegCopyWith<$Res>(_self.before!, (value) {
    return _then(_self.copyWith(before: value));
  });
}/// Create a copy of TravelTimeAnalysis
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TravelLegCopyWith<$Res>? get after {
    if (_self.after == null) {
    return null;
  }

  return $TravelLegCopyWith<$Res>(_self.after!, (value) {
    return _then(_self.copyWith(after: value));
  });
}
}


/// @nodoc
mixin _$TravelLeg {

 String? get from; String? get to; int get duration;// minutes
 TravelMethod get method; String? get route;
/// Create a copy of TravelLeg
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TravelLegCopyWith<TravelLeg> get copyWith => _$TravelLegCopyWithImpl<TravelLeg>(this as TravelLeg, _$identity);

  /// Serializes this TravelLeg to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelLeg&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.method, method) || other.method == method)&&(identical(other.route, route) || other.route == route));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to,duration,method,route);

@override
String toString() {
  return 'TravelLeg(from: $from, to: $to, duration: $duration, method: $method, route: $route)';
}


}

/// @nodoc
abstract mixin class $TravelLegCopyWith<$Res>  {
  factory $TravelLegCopyWith(TravelLeg value, $Res Function(TravelLeg) _then) = _$TravelLegCopyWithImpl;
@useResult
$Res call({
 String? from, String? to, int duration, TravelMethod method, String? route
});




}
/// @nodoc
class _$TravelLegCopyWithImpl<$Res>
    implements $TravelLegCopyWith<$Res> {
  _$TravelLegCopyWithImpl(this._self, this._then);

  final TravelLeg _self;
  final $Res Function(TravelLeg) _then;

/// Create a copy of TravelLeg
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = freezed,Object? to = freezed,Object? duration = null,Object? method = null,Object? route = freezed,}) {
  return _then(_self.copyWith(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as TravelMethod,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TravelLeg].
extension TravelLegPatterns on TravelLeg {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TravelLeg value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TravelLeg() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TravelLeg value)  $default,){
final _that = this;
switch (_that) {
case _TravelLeg():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TravelLeg value)?  $default,){
final _that = this;
switch (_that) {
case _TravelLeg() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? from,  String? to,  int duration,  TravelMethod method,  String? route)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TravelLeg() when $default != null:
return $default(_that.from,_that.to,_that.duration,_that.method,_that.route);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? from,  String? to,  int duration,  TravelMethod method,  String? route)  $default,) {final _that = this;
switch (_that) {
case _TravelLeg():
return $default(_that.from,_that.to,_that.duration,_that.method,_that.route);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? from,  String? to,  int duration,  TravelMethod method,  String? route)?  $default,) {final _that = this;
switch (_that) {
case _TravelLeg() when $default != null:
return $default(_that.from,_that.to,_that.duration,_that.method,_that.route);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TravelLeg implements TravelLeg {
  const _TravelLeg({this.from, this.to, required this.duration, required this.method, this.route});
  factory _TravelLeg.fromJson(Map<String, dynamic> json) => _$TravelLegFromJson(json);

@override final  String? from;
@override final  String? to;
@override final  int duration;
// minutes
@override final  TravelMethod method;
@override final  String? route;

/// Create a copy of TravelLeg
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TravelLegCopyWith<_TravelLeg> get copyWith => __$TravelLegCopyWithImpl<_TravelLeg>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TravelLegToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TravelLeg&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.method, method) || other.method == method)&&(identical(other.route, route) || other.route == route));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to,duration,method,route);

@override
String toString() {
  return 'TravelLeg(from: $from, to: $to, duration: $duration, method: $method, route: $route)';
}


}

/// @nodoc
abstract mixin class _$TravelLegCopyWith<$Res> implements $TravelLegCopyWith<$Res> {
  factory _$TravelLegCopyWith(_TravelLeg value, $Res Function(_TravelLeg) _then) = __$TravelLegCopyWithImpl;
@override @useResult
$Res call({
 String? from, String? to, int duration, TravelMethod method, String? route
});




}
/// @nodoc
class __$TravelLegCopyWithImpl<$Res>
    implements _$TravelLegCopyWith<$Res> {
  __$TravelLegCopyWithImpl(this._self, this._then);

  final _TravelLeg _self;
  final $Res Function(_TravelLeg) _then;

/// Create a copy of TravelLeg
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = freezed,Object? to = freezed,Object? duration = null,Object? method = null,Object? route = freezed,}) {
  return _then(_TravelLeg(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as TravelMethod,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RequirementCheck {

 bool get needsAccount; bool get needsPayment; bool get needsWaiver; bool get allMet; List<String>? get missingRequirements;
/// Create a copy of RequirementCheck
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequirementCheckCopyWith<RequirementCheck> get copyWith => _$RequirementCheckCopyWithImpl<RequirementCheck>(this as RequirementCheck, _$identity);

  /// Serializes this RequirementCheck to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequirementCheck&&(identical(other.needsAccount, needsAccount) || other.needsAccount == needsAccount)&&(identical(other.needsPayment, needsPayment) || other.needsPayment == needsPayment)&&(identical(other.needsWaiver, needsWaiver) || other.needsWaiver == needsWaiver)&&(identical(other.allMet, allMet) || other.allMet == allMet)&&const DeepCollectionEquality().equals(other.missingRequirements, missingRequirements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,needsAccount,needsPayment,needsWaiver,allMet,const DeepCollectionEquality().hash(missingRequirements));

@override
String toString() {
  return 'RequirementCheck(needsAccount: $needsAccount, needsPayment: $needsPayment, needsWaiver: $needsWaiver, allMet: $allMet, missingRequirements: $missingRequirements)';
}


}

/// @nodoc
abstract mixin class $RequirementCheckCopyWith<$Res>  {
  factory $RequirementCheckCopyWith(RequirementCheck value, $Res Function(RequirementCheck) _then) = _$RequirementCheckCopyWithImpl;
@useResult
$Res call({
 bool needsAccount, bool needsPayment, bool needsWaiver, bool allMet, List<String>? missingRequirements
});




}
/// @nodoc
class _$RequirementCheckCopyWithImpl<$Res>
    implements $RequirementCheckCopyWith<$Res> {
  _$RequirementCheckCopyWithImpl(this._self, this._then);

  final RequirementCheck _self;
  final $Res Function(RequirementCheck) _then;

/// Create a copy of RequirementCheck
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? needsAccount = null,Object? needsPayment = null,Object? needsWaiver = null,Object? allMet = null,Object? missingRequirements = freezed,}) {
  return _then(_self.copyWith(
needsAccount: null == needsAccount ? _self.needsAccount : needsAccount // ignore: cast_nullable_to_non_nullable
as bool,needsPayment: null == needsPayment ? _self.needsPayment : needsPayment // ignore: cast_nullable_to_non_nullable
as bool,needsWaiver: null == needsWaiver ? _self.needsWaiver : needsWaiver // ignore: cast_nullable_to_non_nullable
as bool,allMet: null == allMet ? _self.allMet : allMet // ignore: cast_nullable_to_non_nullable
as bool,missingRequirements: freezed == missingRequirements ? _self.missingRequirements : missingRequirements // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequirementCheck].
extension RequirementCheckPatterns on RequirementCheck {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequirementCheck value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequirementCheck() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequirementCheck value)  $default,){
final _that = this;
switch (_that) {
case _RequirementCheck():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequirementCheck value)?  $default,){
final _that = this;
switch (_that) {
case _RequirementCheck() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool needsAccount,  bool needsPayment,  bool needsWaiver,  bool allMet,  List<String>? missingRequirements)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequirementCheck() when $default != null:
return $default(_that.needsAccount,_that.needsPayment,_that.needsWaiver,_that.allMet,_that.missingRequirements);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool needsAccount,  bool needsPayment,  bool needsWaiver,  bool allMet,  List<String>? missingRequirements)  $default,) {final _that = this;
switch (_that) {
case _RequirementCheck():
return $default(_that.needsAccount,_that.needsPayment,_that.needsWaiver,_that.allMet,_that.missingRequirements);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool needsAccount,  bool needsPayment,  bool needsWaiver,  bool allMet,  List<String>? missingRequirements)?  $default,) {final _that = this;
switch (_that) {
case _RequirementCheck() when $default != null:
return $default(_that.needsAccount,_that.needsPayment,_that.needsWaiver,_that.allMet,_that.missingRequirements);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequirementCheck implements RequirementCheck {
  const _RequirementCheck({this.needsAccount = false, this.needsPayment = false, this.needsWaiver = false, this.allMet = true, final  List<String>? missingRequirements}): _missingRequirements = missingRequirements;
  factory _RequirementCheck.fromJson(Map<String, dynamic> json) => _$RequirementCheckFromJson(json);

@override@JsonKey() final  bool needsAccount;
@override@JsonKey() final  bool needsPayment;
@override@JsonKey() final  bool needsWaiver;
@override@JsonKey() final  bool allMet;
 final  List<String>? _missingRequirements;
@override List<String>? get missingRequirements {
  final value = _missingRequirements;
  if (value == null) return null;
  if (_missingRequirements is EqualUnmodifiableListView) return _missingRequirements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of RequirementCheck
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequirementCheckCopyWith<_RequirementCheck> get copyWith => __$RequirementCheckCopyWithImpl<_RequirementCheck>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequirementCheckToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequirementCheck&&(identical(other.needsAccount, needsAccount) || other.needsAccount == needsAccount)&&(identical(other.needsPayment, needsPayment) || other.needsPayment == needsPayment)&&(identical(other.needsWaiver, needsWaiver) || other.needsWaiver == needsWaiver)&&(identical(other.allMet, allMet) || other.allMet == allMet)&&const DeepCollectionEquality().equals(other._missingRequirements, _missingRequirements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,needsAccount,needsPayment,needsWaiver,allMet,const DeepCollectionEquality().hash(_missingRequirements));

@override
String toString() {
  return 'RequirementCheck(needsAccount: $needsAccount, needsPayment: $needsPayment, needsWaiver: $needsWaiver, allMet: $allMet, missingRequirements: $missingRequirements)';
}


}

/// @nodoc
abstract mixin class _$RequirementCheckCopyWith<$Res> implements $RequirementCheckCopyWith<$Res> {
  factory _$RequirementCheckCopyWith(_RequirementCheck value, $Res Function(_RequirementCheck) _then) = __$RequirementCheckCopyWithImpl;
@override @useResult
$Res call({
 bool needsAccount, bool needsPayment, bool needsWaiver, bool allMet, List<String>? missingRequirements
});




}
/// @nodoc
class __$RequirementCheckCopyWithImpl<$Res>
    implements _$RequirementCheckCopyWith<$Res> {
  __$RequirementCheckCopyWithImpl(this._self, this._then);

  final _RequirementCheck _self;
  final $Res Function(_RequirementCheck) _then;

/// Create a copy of RequirementCheck
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? needsAccount = null,Object? needsPayment = null,Object? needsWaiver = null,Object? allMet = null,Object? missingRequirements = freezed,}) {
  return _then(_RequirementCheck(
needsAccount: null == needsAccount ? _self.needsAccount : needsAccount // ignore: cast_nullable_to_non_nullable
as bool,needsPayment: null == needsPayment ? _self.needsPayment : needsPayment // ignore: cast_nullable_to_non_nullable
as bool,needsWaiver: null == needsWaiver ? _self.needsWaiver : needsWaiver // ignore: cast_nullable_to_non_nullable
as bool,allMet: null == allMet ? _self.allMet : allMet // ignore: cast_nullable_to_non_nullable
as bool,missingRequirements: freezed == missingRequirements ? _self._missingRequirements : missingRequirements // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$ValidationIssue {

 ValidationIssueType get type; String get message; IssueSeverity? get severity; String? get solution;
/// Create a copy of ValidationIssue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidationIssueCopyWith<ValidationIssue> get copyWith => _$ValidationIssueCopyWithImpl<ValidationIssue>(this as ValidationIssue, _$identity);

  /// Serializes this ValidationIssue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidationIssue&&(identical(other.type, type) || other.type == type)&&(identical(other.message, message) || other.message == message)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.solution, solution) || other.solution == solution));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,message,severity,solution);

@override
String toString() {
  return 'ValidationIssue(type: $type, message: $message, severity: $severity, solution: $solution)';
}


}

/// @nodoc
abstract mixin class $ValidationIssueCopyWith<$Res>  {
  factory $ValidationIssueCopyWith(ValidationIssue value, $Res Function(ValidationIssue) _then) = _$ValidationIssueCopyWithImpl;
@useResult
$Res call({
 ValidationIssueType type, String message, IssueSeverity? severity, String? solution
});




}
/// @nodoc
class _$ValidationIssueCopyWithImpl<$Res>
    implements $ValidationIssueCopyWith<$Res> {
  _$ValidationIssueCopyWithImpl(this._self, this._then);

  final ValidationIssue _self;
  final $Res Function(ValidationIssue) _then;

/// Create a copy of ValidationIssue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? message = null,Object? severity = freezed,Object? solution = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ValidationIssueType,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,severity: freezed == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as IssueSeverity?,solution: freezed == solution ? _self.solution : solution // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ValidationIssue].
extension ValidationIssuePatterns on ValidationIssue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ValidationIssue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ValidationIssue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ValidationIssue value)  $default,){
final _that = this;
switch (_that) {
case _ValidationIssue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ValidationIssue value)?  $default,){
final _that = this;
switch (_that) {
case _ValidationIssue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ValidationIssueType type,  String message,  IssueSeverity? severity,  String? solution)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ValidationIssue() when $default != null:
return $default(_that.type,_that.message,_that.severity,_that.solution);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ValidationIssueType type,  String message,  IssueSeverity? severity,  String? solution)  $default,) {final _that = this;
switch (_that) {
case _ValidationIssue():
return $default(_that.type,_that.message,_that.severity,_that.solution);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ValidationIssueType type,  String message,  IssueSeverity? severity,  String? solution)?  $default,) {final _that = this;
switch (_that) {
case _ValidationIssue() when $default != null:
return $default(_that.type,_that.message,_that.severity,_that.solution);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ValidationIssue implements ValidationIssue {
  const _ValidationIssue({required this.type, required this.message, this.severity, this.solution});
  factory _ValidationIssue.fromJson(Map<String, dynamic> json) => _$ValidationIssueFromJson(json);

@override final  ValidationIssueType type;
@override final  String message;
@override final  IssueSeverity? severity;
@override final  String? solution;

/// Create a copy of ValidationIssue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidationIssueCopyWith<_ValidationIssue> get copyWith => __$ValidationIssueCopyWithImpl<_ValidationIssue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValidationIssueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValidationIssue&&(identical(other.type, type) || other.type == type)&&(identical(other.message, message) || other.message == message)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.solution, solution) || other.solution == solution));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,message,severity,solution);

@override
String toString() {
  return 'ValidationIssue(type: $type, message: $message, severity: $severity, solution: $solution)';
}


}

/// @nodoc
abstract mixin class _$ValidationIssueCopyWith<$Res> implements $ValidationIssueCopyWith<$Res> {
  factory _$ValidationIssueCopyWith(_ValidationIssue value, $Res Function(_ValidationIssue) _then) = __$ValidationIssueCopyWithImpl;
@override @useResult
$Res call({
 ValidationIssueType type, String message, IssueSeverity? severity, String? solution
});




}
/// @nodoc
class __$ValidationIssueCopyWithImpl<$Res>
    implements _$ValidationIssueCopyWith<$Res> {
  __$ValidationIssueCopyWithImpl(this._self, this._then);

  final _ValidationIssue _self;
  final $Res Function(_ValidationIssue) _then;

/// Create a copy of ValidationIssue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? message = null,Object? severity = freezed,Object? solution = freezed,}) {
  return _then(_ValidationIssue(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ValidationIssueType,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,severity: freezed == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as IssueSeverity?,solution: freezed == solution ? _self.solution : solution // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BookingExecution {

 List<BookingStep> get steps; ExecutionStatus get overallStatus; DateTime get completedAt; String? get failureReason; BookingResult? get result;
/// Create a copy of BookingExecution
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingExecutionCopyWith<BookingExecution> get copyWith => _$BookingExecutionCopyWithImpl<BookingExecution>(this as BookingExecution, _$identity);

  /// Serializes this BookingExecution to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingExecution&&const DeepCollectionEquality().equals(other.steps, steps)&&(identical(other.overallStatus, overallStatus) || other.overallStatus == overallStatus)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.result, result) || other.result == result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(steps),overallStatus,completedAt,failureReason,result);

@override
String toString() {
  return 'BookingExecution(steps: $steps, overallStatus: $overallStatus, completedAt: $completedAt, failureReason: $failureReason, result: $result)';
}


}

/// @nodoc
abstract mixin class $BookingExecutionCopyWith<$Res>  {
  factory $BookingExecutionCopyWith(BookingExecution value, $Res Function(BookingExecution) _then) = _$BookingExecutionCopyWithImpl;
@useResult
$Res call({
 List<BookingStep> steps, ExecutionStatus overallStatus, DateTime completedAt, String? failureReason, BookingResult? result
});


$BookingResultCopyWith<$Res>? get result;

}
/// @nodoc
class _$BookingExecutionCopyWithImpl<$Res>
    implements $BookingExecutionCopyWith<$Res> {
  _$BookingExecutionCopyWithImpl(this._self, this._then);

  final BookingExecution _self;
  final $Res Function(BookingExecution) _then;

/// Create a copy of BookingExecution
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? steps = null,Object? overallStatus = null,Object? completedAt = null,Object? failureReason = freezed,Object? result = freezed,}) {
  return _then(_self.copyWith(
steps: null == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as List<BookingStep>,overallStatus: null == overallStatus ? _self.overallStatus : overallStatus // ignore: cast_nullable_to_non_nullable
as ExecutionStatus,completedAt: null == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as BookingResult?,
  ));
}
/// Create a copy of BookingExecution
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingResultCopyWith<$Res>? get result {
    if (_self.result == null) {
    return null;
  }

  return $BookingResultCopyWith<$Res>(_self.result!, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookingExecution].
extension BookingExecutionPatterns on BookingExecution {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingExecution value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingExecution() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingExecution value)  $default,){
final _that = this;
switch (_that) {
case _BookingExecution():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingExecution value)?  $default,){
final _that = this;
switch (_that) {
case _BookingExecution() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BookingStep> steps,  ExecutionStatus overallStatus,  DateTime completedAt,  String? failureReason,  BookingResult? result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingExecution() when $default != null:
return $default(_that.steps,_that.overallStatus,_that.completedAt,_that.failureReason,_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BookingStep> steps,  ExecutionStatus overallStatus,  DateTime completedAt,  String? failureReason,  BookingResult? result)  $default,) {final _that = this;
switch (_that) {
case _BookingExecution():
return $default(_that.steps,_that.overallStatus,_that.completedAt,_that.failureReason,_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BookingStep> steps,  ExecutionStatus overallStatus,  DateTime completedAt,  String? failureReason,  BookingResult? result)?  $default,) {final _that = this;
switch (_that) {
case _BookingExecution() when $default != null:
return $default(_that.steps,_that.overallStatus,_that.completedAt,_that.failureReason,_that.result);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingExecution implements BookingExecution {
  const _BookingExecution({required final  List<BookingStep> steps, required this.overallStatus, required this.completedAt, this.failureReason, this.result}): _steps = steps;
  factory _BookingExecution.fromJson(Map<String, dynamic> json) => _$BookingExecutionFromJson(json);

 final  List<BookingStep> _steps;
@override List<BookingStep> get steps {
  if (_steps is EqualUnmodifiableListView) return _steps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_steps);
}

@override final  ExecutionStatus overallStatus;
@override final  DateTime completedAt;
@override final  String? failureReason;
@override final  BookingResult? result;

/// Create a copy of BookingExecution
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingExecutionCopyWith<_BookingExecution> get copyWith => __$BookingExecutionCopyWithImpl<_BookingExecution>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingExecutionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingExecution&&const DeepCollectionEquality().equals(other._steps, _steps)&&(identical(other.overallStatus, overallStatus) || other.overallStatus == overallStatus)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.result, result) || other.result == result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_steps),overallStatus,completedAt,failureReason,result);

@override
String toString() {
  return 'BookingExecution(steps: $steps, overallStatus: $overallStatus, completedAt: $completedAt, failureReason: $failureReason, result: $result)';
}


}

/// @nodoc
abstract mixin class _$BookingExecutionCopyWith<$Res> implements $BookingExecutionCopyWith<$Res> {
  factory _$BookingExecutionCopyWith(_BookingExecution value, $Res Function(_BookingExecution) _then) = __$BookingExecutionCopyWithImpl;
@override @useResult
$Res call({
 List<BookingStep> steps, ExecutionStatus overallStatus, DateTime completedAt, String? failureReason, BookingResult? result
});


@override $BookingResultCopyWith<$Res>? get result;

}
/// @nodoc
class __$BookingExecutionCopyWithImpl<$Res>
    implements _$BookingExecutionCopyWith<$Res> {
  __$BookingExecutionCopyWithImpl(this._self, this._then);

  final _BookingExecution _self;
  final $Res Function(_BookingExecution) _then;

/// Create a copy of BookingExecution
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? steps = null,Object? overallStatus = null,Object? completedAt = null,Object? failureReason = freezed,Object? result = freezed,}) {
  return _then(_BookingExecution(
steps: null == steps ? _self._steps : steps // ignore: cast_nullable_to_non_nullable
as List<BookingStep>,overallStatus: null == overallStatus ? _self.overallStatus : overallStatus // ignore: cast_nullable_to_non_nullable
as ExecutionStatus,completedAt: null == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime,failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as BookingResult?,
  ));
}

/// Create a copy of BookingExecution
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingResultCopyWith<$Res>? get result {
    if (_self.result == null) {
    return null;
  }

  return $BookingResultCopyWith<$Res>(_self.result!, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// @nodoc
mixin _$BookingStep {

 int get step; String get action; StepStatus get status; String? get confirmationNumber; String? get errorMessage; Map<String, dynamic>? get metadata;
/// Create a copy of BookingStep
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingStepCopyWith<BookingStep> get copyWith => _$BookingStepCopyWithImpl<BookingStep>(this as BookingStep, _$identity);

  /// Serializes this BookingStep to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingStep&&(identical(other.step, step) || other.step == step)&&(identical(other.action, action) || other.action == action)&&(identical(other.status, status) || other.status == status)&&(identical(other.confirmationNumber, confirmationNumber) || other.confirmationNumber == confirmationNumber)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,step,action,status,confirmationNumber,errorMessage,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'BookingStep(step: $step, action: $action, status: $status, confirmationNumber: $confirmationNumber, errorMessage: $errorMessage, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $BookingStepCopyWith<$Res>  {
  factory $BookingStepCopyWith(BookingStep value, $Res Function(BookingStep) _then) = _$BookingStepCopyWithImpl;
@useResult
$Res call({
 int step, String action, StepStatus status, String? confirmationNumber, String? errorMessage, Map<String, dynamic>? metadata
});




}
/// @nodoc
class _$BookingStepCopyWithImpl<$Res>
    implements $BookingStepCopyWith<$Res> {
  _$BookingStepCopyWithImpl(this._self, this._then);

  final BookingStep _self;
  final $Res Function(BookingStep) _then;

/// Create a copy of BookingStep
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? step = null,Object? action = null,Object? status = null,Object? confirmationNumber = freezed,Object? errorMessage = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as int,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StepStatus,confirmationNumber: freezed == confirmationNumber ? _self.confirmationNumber : confirmationNumber // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingStep].
extension BookingStepPatterns on BookingStep {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingStep value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingStep() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingStep value)  $default,){
final _that = this;
switch (_that) {
case _BookingStep():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingStep value)?  $default,){
final _that = this;
switch (_that) {
case _BookingStep() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int step,  String action,  StepStatus status,  String? confirmationNumber,  String? errorMessage,  Map<String, dynamic>? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingStep() when $default != null:
return $default(_that.step,_that.action,_that.status,_that.confirmationNumber,_that.errorMessage,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int step,  String action,  StepStatus status,  String? confirmationNumber,  String? errorMessage,  Map<String, dynamic>? metadata)  $default,) {final _that = this;
switch (_that) {
case _BookingStep():
return $default(_that.step,_that.action,_that.status,_that.confirmationNumber,_that.errorMessage,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int step,  String action,  StepStatus status,  String? confirmationNumber,  String? errorMessage,  Map<String, dynamic>? metadata)?  $default,) {final _that = this;
switch (_that) {
case _BookingStep() when $default != null:
return $default(_that.step,_that.action,_that.status,_that.confirmationNumber,_that.errorMessage,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingStep implements BookingStep {
  const _BookingStep({required this.step, required this.action, required this.status, this.confirmationNumber, this.errorMessage, final  Map<String, dynamic>? metadata}): _metadata = metadata;
  factory _BookingStep.fromJson(Map<String, dynamic> json) => _$BookingStepFromJson(json);

@override final  int step;
@override final  String action;
@override final  StepStatus status;
@override final  String? confirmationNumber;
@override final  String? errorMessage;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of BookingStep
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingStepCopyWith<_BookingStep> get copyWith => __$BookingStepCopyWithImpl<_BookingStep>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingStepToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingStep&&(identical(other.step, step) || other.step == step)&&(identical(other.action, action) || other.action == action)&&(identical(other.status, status) || other.status == status)&&(identical(other.confirmationNumber, confirmationNumber) || other.confirmationNumber == confirmationNumber)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,step,action,status,confirmationNumber,errorMessage,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'BookingStep(step: $step, action: $action, status: $status, confirmationNumber: $confirmationNumber, errorMessage: $errorMessage, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$BookingStepCopyWith<$Res> implements $BookingStepCopyWith<$Res> {
  factory _$BookingStepCopyWith(_BookingStep value, $Res Function(_BookingStep) _then) = __$BookingStepCopyWithImpl;
@override @useResult
$Res call({
 int step, String action, StepStatus status, String? confirmationNumber, String? errorMessage, Map<String, dynamic>? metadata
});




}
/// @nodoc
class __$BookingStepCopyWithImpl<$Res>
    implements _$BookingStepCopyWith<$Res> {
  __$BookingStepCopyWithImpl(this._self, this._then);

  final _BookingStep _self;
  final $Res Function(_BookingStep) _then;

/// Create a copy of BookingStep
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? step = null,Object? action = null,Object? status = null,Object? confirmationNumber = freezed,Object? errorMessage = freezed,Object? metadata = freezed,}) {
  return _then(_BookingStep(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as int,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StepStatus,confirmationNumber: freezed == confirmationNumber ? _self.confirmationNumber : confirmationNumber // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$BookingResult {

 ExecutionStatus get status; String get bookingId; String? get confirmationNumber; BookingVenue? get venue; BookingActivity? get activity; CalendarEventResult? get calendar; BookingPricing? get pricing; BookingInstructions? get instructions; TravelInstructions? get directions; List<String>? get nextSteps; String? get anchorNote; BookingAnalytics? get analytics;
/// Create a copy of BookingResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingResultCopyWith<BookingResult> get copyWith => _$BookingResultCopyWithImpl<BookingResult>(this as BookingResult, _$identity);

  /// Serializes this BookingResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingResult&&(identical(other.status, status) || other.status == status)&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.confirmationNumber, confirmationNumber) || other.confirmationNumber == confirmationNumber)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.calendar, calendar) || other.calendar == calendar)&&(identical(other.pricing, pricing) || other.pricing == pricing)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.directions, directions) || other.directions == directions)&&const DeepCollectionEquality().equals(other.nextSteps, nextSteps)&&(identical(other.anchorNote, anchorNote) || other.anchorNote == anchorNote)&&(identical(other.analytics, analytics) || other.analytics == analytics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,bookingId,confirmationNumber,venue,activity,calendar,pricing,instructions,directions,const DeepCollectionEquality().hash(nextSteps),anchorNote,analytics);

@override
String toString() {
  return 'BookingResult(status: $status, bookingId: $bookingId, confirmationNumber: $confirmationNumber, venue: $venue, activity: $activity, calendar: $calendar, pricing: $pricing, instructions: $instructions, directions: $directions, nextSteps: $nextSteps, anchorNote: $anchorNote, analytics: $analytics)';
}


}

/// @nodoc
abstract mixin class $BookingResultCopyWith<$Res>  {
  factory $BookingResultCopyWith(BookingResult value, $Res Function(BookingResult) _then) = _$BookingResultCopyWithImpl;
@useResult
$Res call({
 ExecutionStatus status, String bookingId, String? confirmationNumber, BookingVenue? venue, BookingActivity? activity, CalendarEventResult? calendar, BookingPricing? pricing, BookingInstructions? instructions, TravelInstructions? directions, List<String>? nextSteps, String? anchorNote, BookingAnalytics? analytics
});


$BookingVenueCopyWith<$Res>? get venue;$BookingActivityCopyWith<$Res>? get activity;$CalendarEventResultCopyWith<$Res>? get calendar;$BookingPricingCopyWith<$Res>? get pricing;$BookingInstructionsCopyWith<$Res>? get instructions;$TravelInstructionsCopyWith<$Res>? get directions;$BookingAnalyticsCopyWith<$Res>? get analytics;

}
/// @nodoc
class _$BookingResultCopyWithImpl<$Res>
    implements $BookingResultCopyWith<$Res> {
  _$BookingResultCopyWithImpl(this._self, this._then);

  final BookingResult _self;
  final $Res Function(BookingResult) _then;

/// Create a copy of BookingResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? bookingId = null,Object? confirmationNumber = freezed,Object? venue = freezed,Object? activity = freezed,Object? calendar = freezed,Object? pricing = freezed,Object? instructions = freezed,Object? directions = freezed,Object? nextSteps = freezed,Object? anchorNote = freezed,Object? analytics = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ExecutionStatus,bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String,confirmationNumber: freezed == confirmationNumber ? _self.confirmationNumber : confirmationNumber // ignore: cast_nullable_to_non_nullable
as String?,venue: freezed == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as BookingVenue?,activity: freezed == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as BookingActivity?,calendar: freezed == calendar ? _self.calendar : calendar // ignore: cast_nullable_to_non_nullable
as CalendarEventResult?,pricing: freezed == pricing ? _self.pricing : pricing // ignore: cast_nullable_to_non_nullable
as BookingPricing?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as BookingInstructions?,directions: freezed == directions ? _self.directions : directions // ignore: cast_nullable_to_non_nullable
as TravelInstructions?,nextSteps: freezed == nextSteps ? _self.nextSteps : nextSteps // ignore: cast_nullable_to_non_nullable
as List<String>?,anchorNote: freezed == anchorNote ? _self.anchorNote : anchorNote // ignore: cast_nullable_to_non_nullable
as String?,analytics: freezed == analytics ? _self.analytics : analytics // ignore: cast_nullable_to_non_nullable
as BookingAnalytics?,
  ));
}
/// Create a copy of BookingResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingVenueCopyWith<$Res>? get venue {
    if (_self.venue == null) {
    return null;
  }

  return $BookingVenueCopyWith<$Res>(_self.venue!, (value) {
    return _then(_self.copyWith(venue: value));
  });
}/// Create a copy of BookingResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingActivityCopyWith<$Res>? get activity {
    if (_self.activity == null) {
    return null;
  }

  return $BookingActivityCopyWith<$Res>(_self.activity!, (value) {
    return _then(_self.copyWith(activity: value));
  });
}/// Create a copy of BookingResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalendarEventResultCopyWith<$Res>? get calendar {
    if (_self.calendar == null) {
    return null;
  }

  return $CalendarEventResultCopyWith<$Res>(_self.calendar!, (value) {
    return _then(_self.copyWith(calendar: value));
  });
}/// Create a copy of BookingResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingPricingCopyWith<$Res>? get pricing {
    if (_self.pricing == null) {
    return null;
  }

  return $BookingPricingCopyWith<$Res>(_self.pricing!, (value) {
    return _then(_self.copyWith(pricing: value));
  });
}/// Create a copy of BookingResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingInstructionsCopyWith<$Res>? get instructions {
    if (_self.instructions == null) {
    return null;
  }

  return $BookingInstructionsCopyWith<$Res>(_self.instructions!, (value) {
    return _then(_self.copyWith(instructions: value));
  });
}/// Create a copy of BookingResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TravelInstructionsCopyWith<$Res>? get directions {
    if (_self.directions == null) {
    return null;
  }

  return $TravelInstructionsCopyWith<$Res>(_self.directions!, (value) {
    return _then(_self.copyWith(directions: value));
  });
}/// Create a copy of BookingResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingAnalyticsCopyWith<$Res>? get analytics {
    if (_self.analytics == null) {
    return null;
  }

  return $BookingAnalyticsCopyWith<$Res>(_self.analytics!, (value) {
    return _then(_self.copyWith(analytics: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookingResult].
extension BookingResultPatterns on BookingResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingResult value)  $default,){
final _that = this;
switch (_that) {
case _BookingResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingResult value)?  $default,){
final _that = this;
switch (_that) {
case _BookingResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ExecutionStatus status,  String bookingId,  String? confirmationNumber,  BookingVenue? venue,  BookingActivity? activity,  CalendarEventResult? calendar,  BookingPricing? pricing,  BookingInstructions? instructions,  TravelInstructions? directions,  List<String>? nextSteps,  String? anchorNote,  BookingAnalytics? analytics)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingResult() when $default != null:
return $default(_that.status,_that.bookingId,_that.confirmationNumber,_that.venue,_that.activity,_that.calendar,_that.pricing,_that.instructions,_that.directions,_that.nextSteps,_that.anchorNote,_that.analytics);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ExecutionStatus status,  String bookingId,  String? confirmationNumber,  BookingVenue? venue,  BookingActivity? activity,  CalendarEventResult? calendar,  BookingPricing? pricing,  BookingInstructions? instructions,  TravelInstructions? directions,  List<String>? nextSteps,  String? anchorNote,  BookingAnalytics? analytics)  $default,) {final _that = this;
switch (_that) {
case _BookingResult():
return $default(_that.status,_that.bookingId,_that.confirmationNumber,_that.venue,_that.activity,_that.calendar,_that.pricing,_that.instructions,_that.directions,_that.nextSteps,_that.anchorNote,_that.analytics);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ExecutionStatus status,  String bookingId,  String? confirmationNumber,  BookingVenue? venue,  BookingActivity? activity,  CalendarEventResult? calendar,  BookingPricing? pricing,  BookingInstructions? instructions,  TravelInstructions? directions,  List<String>? nextSteps,  String? anchorNote,  BookingAnalytics? analytics)?  $default,) {final _that = this;
switch (_that) {
case _BookingResult() when $default != null:
return $default(_that.status,_that.bookingId,_that.confirmationNumber,_that.venue,_that.activity,_that.calendar,_that.pricing,_that.instructions,_that.directions,_that.nextSteps,_that.anchorNote,_that.analytics);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingResult implements BookingResult {
  const _BookingResult({required this.status, required this.bookingId, this.confirmationNumber, this.venue, this.activity, this.calendar, this.pricing, this.instructions, this.directions, final  List<String>? nextSteps, this.anchorNote, this.analytics}): _nextSteps = nextSteps;
  factory _BookingResult.fromJson(Map<String, dynamic> json) => _$BookingResultFromJson(json);

@override final  ExecutionStatus status;
@override final  String bookingId;
@override final  String? confirmationNumber;
@override final  BookingVenue? venue;
@override final  BookingActivity? activity;
@override final  CalendarEventResult? calendar;
@override final  BookingPricing? pricing;
@override final  BookingInstructions? instructions;
@override final  TravelInstructions? directions;
 final  List<String>? _nextSteps;
@override List<String>? get nextSteps {
  final value = _nextSteps;
  if (value == null) return null;
  if (_nextSteps is EqualUnmodifiableListView) return _nextSteps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? anchorNote;
@override final  BookingAnalytics? analytics;

/// Create a copy of BookingResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingResultCopyWith<_BookingResult> get copyWith => __$BookingResultCopyWithImpl<_BookingResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingResult&&(identical(other.status, status) || other.status == status)&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.confirmationNumber, confirmationNumber) || other.confirmationNumber == confirmationNumber)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.calendar, calendar) || other.calendar == calendar)&&(identical(other.pricing, pricing) || other.pricing == pricing)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.directions, directions) || other.directions == directions)&&const DeepCollectionEquality().equals(other._nextSteps, _nextSteps)&&(identical(other.anchorNote, anchorNote) || other.anchorNote == anchorNote)&&(identical(other.analytics, analytics) || other.analytics == analytics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,bookingId,confirmationNumber,venue,activity,calendar,pricing,instructions,directions,const DeepCollectionEquality().hash(_nextSteps),anchorNote,analytics);

@override
String toString() {
  return 'BookingResult(status: $status, bookingId: $bookingId, confirmationNumber: $confirmationNumber, venue: $venue, activity: $activity, calendar: $calendar, pricing: $pricing, instructions: $instructions, directions: $directions, nextSteps: $nextSteps, anchorNote: $anchorNote, analytics: $analytics)';
}


}

/// @nodoc
abstract mixin class _$BookingResultCopyWith<$Res> implements $BookingResultCopyWith<$Res> {
  factory _$BookingResultCopyWith(_BookingResult value, $Res Function(_BookingResult) _then) = __$BookingResultCopyWithImpl;
@override @useResult
$Res call({
 ExecutionStatus status, String bookingId, String? confirmationNumber, BookingVenue? venue, BookingActivity? activity, CalendarEventResult? calendar, BookingPricing? pricing, BookingInstructions? instructions, TravelInstructions? directions, List<String>? nextSteps, String? anchorNote, BookingAnalytics? analytics
});


@override $BookingVenueCopyWith<$Res>? get venue;@override $BookingActivityCopyWith<$Res>? get activity;@override $CalendarEventResultCopyWith<$Res>? get calendar;@override $BookingPricingCopyWith<$Res>? get pricing;@override $BookingInstructionsCopyWith<$Res>? get instructions;@override $TravelInstructionsCopyWith<$Res>? get directions;@override $BookingAnalyticsCopyWith<$Res>? get analytics;

}
/// @nodoc
class __$BookingResultCopyWithImpl<$Res>
    implements _$BookingResultCopyWith<$Res> {
  __$BookingResultCopyWithImpl(this._self, this._then);

  final _BookingResult _self;
  final $Res Function(_BookingResult) _then;

/// Create a copy of BookingResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? bookingId = null,Object? confirmationNumber = freezed,Object? venue = freezed,Object? activity = freezed,Object? calendar = freezed,Object? pricing = freezed,Object? instructions = freezed,Object? directions = freezed,Object? nextSteps = freezed,Object? anchorNote = freezed,Object? analytics = freezed,}) {
  return _then(_BookingResult(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ExecutionStatus,bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String,confirmationNumber: freezed == confirmationNumber ? _self.confirmationNumber : confirmationNumber // ignore: cast_nullable_to_non_nullable
as String?,venue: freezed == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as BookingVenue?,activity: freezed == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as BookingActivity?,calendar: freezed == calendar ? _self.calendar : calendar // ignore: cast_nullable_to_non_nullable
as CalendarEventResult?,pricing: freezed == pricing ? _self.pricing : pricing // ignore: cast_nullable_to_non_nullable
as BookingPricing?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as BookingInstructions?,directions: freezed == directions ? _self.directions : directions // ignore: cast_nullable_to_non_nullable
as TravelInstructions?,nextSteps: freezed == nextSteps ? _self._nextSteps : nextSteps // ignore: cast_nullable_to_non_nullable
as List<String>?,anchorNote: freezed == anchorNote ? _self.anchorNote : anchorNote // ignore: cast_nullable_to_non_nullable
as String?,analytics: freezed == analytics ? _self.analytics : analytics // ignore: cast_nullable_to_non_nullable
as BookingAnalytics?,
  ));
}

/// Create a copy of BookingResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingVenueCopyWith<$Res>? get venue {
    if (_self.venue == null) {
    return null;
  }

  return $BookingVenueCopyWith<$Res>(_self.venue!, (value) {
    return _then(_self.copyWith(venue: value));
  });
}/// Create a copy of BookingResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingActivityCopyWith<$Res>? get activity {
    if (_self.activity == null) {
    return null;
  }

  return $BookingActivityCopyWith<$Res>(_self.activity!, (value) {
    return _then(_self.copyWith(activity: value));
  });
}/// Create a copy of BookingResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CalendarEventResultCopyWith<$Res>? get calendar {
    if (_self.calendar == null) {
    return null;
  }

  return $CalendarEventResultCopyWith<$Res>(_self.calendar!, (value) {
    return _then(_self.copyWith(calendar: value));
  });
}/// Create a copy of BookingResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingPricingCopyWith<$Res>? get pricing {
    if (_self.pricing == null) {
    return null;
  }

  return $BookingPricingCopyWith<$Res>(_self.pricing!, (value) {
    return _then(_self.copyWith(pricing: value));
  });
}/// Create a copy of BookingResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingInstructionsCopyWith<$Res>? get instructions {
    if (_self.instructions == null) {
    return null;
  }

  return $BookingInstructionsCopyWith<$Res>(_self.instructions!, (value) {
    return _then(_self.copyWith(instructions: value));
  });
}/// Create a copy of BookingResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TravelInstructionsCopyWith<$Res>? get directions {
    if (_self.directions == null) {
    return null;
  }

  return $TravelInstructionsCopyWith<$Res>(_self.directions!, (value) {
    return _then(_self.copyWith(directions: value));
  });
}/// Create a copy of BookingResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingAnalyticsCopyWith<$Res>? get analytics {
    if (_self.analytics == null) {
    return null;
  }

  return $BookingAnalyticsCopyWith<$Res>(_self.analytics!, (value) {
    return _then(_self.copyWith(analytics: value));
  });
}
}


/// @nodoc
mixin _$CalendarEventResult {

 bool get added; String? get calendarName; String? get eventId; bool get includesTravelTime; int get remindersSet; List<WellnessCalendarEvent>? get events;
/// Create a copy of CalendarEventResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarEventResultCopyWith<CalendarEventResult> get copyWith => _$CalendarEventResultCopyWithImpl<CalendarEventResult>(this as CalendarEventResult, _$identity);

  /// Serializes this CalendarEventResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarEventResult&&(identical(other.added, added) || other.added == added)&&(identical(other.calendarName, calendarName) || other.calendarName == calendarName)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.includesTravelTime, includesTravelTime) || other.includesTravelTime == includesTravelTime)&&(identical(other.remindersSet, remindersSet) || other.remindersSet == remindersSet)&&const DeepCollectionEquality().equals(other.events, events));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,added,calendarName,eventId,includesTravelTime,remindersSet,const DeepCollectionEquality().hash(events));

@override
String toString() {
  return 'CalendarEventResult(added: $added, calendarName: $calendarName, eventId: $eventId, includesTravelTime: $includesTravelTime, remindersSet: $remindersSet, events: $events)';
}


}

/// @nodoc
abstract mixin class $CalendarEventResultCopyWith<$Res>  {
  factory $CalendarEventResultCopyWith(CalendarEventResult value, $Res Function(CalendarEventResult) _then) = _$CalendarEventResultCopyWithImpl;
@useResult
$Res call({
 bool added, String? calendarName, String? eventId, bool includesTravelTime, int remindersSet, List<WellnessCalendarEvent>? events
});




}
/// @nodoc
class _$CalendarEventResultCopyWithImpl<$Res>
    implements $CalendarEventResultCopyWith<$Res> {
  _$CalendarEventResultCopyWithImpl(this._self, this._then);

  final CalendarEventResult _self;
  final $Res Function(CalendarEventResult) _then;

/// Create a copy of CalendarEventResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? added = null,Object? calendarName = freezed,Object? eventId = freezed,Object? includesTravelTime = null,Object? remindersSet = null,Object? events = freezed,}) {
  return _then(_self.copyWith(
added: null == added ? _self.added : added // ignore: cast_nullable_to_non_nullable
as bool,calendarName: freezed == calendarName ? _self.calendarName : calendarName // ignore: cast_nullable_to_non_nullable
as String?,eventId: freezed == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String?,includesTravelTime: null == includesTravelTime ? _self.includesTravelTime : includesTravelTime // ignore: cast_nullable_to_non_nullable
as bool,remindersSet: null == remindersSet ? _self.remindersSet : remindersSet // ignore: cast_nullable_to_non_nullable
as int,events: freezed == events ? _self.events : events // ignore: cast_nullable_to_non_nullable
as List<WellnessCalendarEvent>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CalendarEventResult].
extension CalendarEventResultPatterns on CalendarEventResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarEventResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarEventResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarEventResult value)  $default,){
final _that = this;
switch (_that) {
case _CalendarEventResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarEventResult value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarEventResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool added,  String? calendarName,  String? eventId,  bool includesTravelTime,  int remindersSet,  List<WellnessCalendarEvent>? events)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarEventResult() when $default != null:
return $default(_that.added,_that.calendarName,_that.eventId,_that.includesTravelTime,_that.remindersSet,_that.events);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool added,  String? calendarName,  String? eventId,  bool includesTravelTime,  int remindersSet,  List<WellnessCalendarEvent>? events)  $default,) {final _that = this;
switch (_that) {
case _CalendarEventResult():
return $default(_that.added,_that.calendarName,_that.eventId,_that.includesTravelTime,_that.remindersSet,_that.events);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool added,  String? calendarName,  String? eventId,  bool includesTravelTime,  int remindersSet,  List<WellnessCalendarEvent>? events)?  $default,) {final _that = this;
switch (_that) {
case _CalendarEventResult() when $default != null:
return $default(_that.added,_that.calendarName,_that.eventId,_that.includesTravelTime,_that.remindersSet,_that.events);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CalendarEventResult implements CalendarEventResult {
  const _CalendarEventResult({this.added = false, this.calendarName, this.eventId, this.includesTravelTime = false, this.remindersSet = 0, final  List<WellnessCalendarEvent>? events}): _events = events;
  factory _CalendarEventResult.fromJson(Map<String, dynamic> json) => _$CalendarEventResultFromJson(json);

@override@JsonKey() final  bool added;
@override final  String? calendarName;
@override final  String? eventId;
@override@JsonKey() final  bool includesTravelTime;
@override@JsonKey() final  int remindersSet;
 final  List<WellnessCalendarEvent>? _events;
@override List<WellnessCalendarEvent>? get events {
  final value = _events;
  if (value == null) return null;
  if (_events is EqualUnmodifiableListView) return _events;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CalendarEventResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarEventResultCopyWith<_CalendarEventResult> get copyWith => __$CalendarEventResultCopyWithImpl<_CalendarEventResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CalendarEventResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarEventResult&&(identical(other.added, added) || other.added == added)&&(identical(other.calendarName, calendarName) || other.calendarName == calendarName)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.includesTravelTime, includesTravelTime) || other.includesTravelTime == includesTravelTime)&&(identical(other.remindersSet, remindersSet) || other.remindersSet == remindersSet)&&const DeepCollectionEquality().equals(other._events, _events));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,added,calendarName,eventId,includesTravelTime,remindersSet,const DeepCollectionEquality().hash(_events));

@override
String toString() {
  return 'CalendarEventResult(added: $added, calendarName: $calendarName, eventId: $eventId, includesTravelTime: $includesTravelTime, remindersSet: $remindersSet, events: $events)';
}


}

/// @nodoc
abstract mixin class _$CalendarEventResultCopyWith<$Res> implements $CalendarEventResultCopyWith<$Res> {
  factory _$CalendarEventResultCopyWith(_CalendarEventResult value, $Res Function(_CalendarEventResult) _then) = __$CalendarEventResultCopyWithImpl;
@override @useResult
$Res call({
 bool added, String? calendarName, String? eventId, bool includesTravelTime, int remindersSet, List<WellnessCalendarEvent>? events
});




}
/// @nodoc
class __$CalendarEventResultCopyWithImpl<$Res>
    implements _$CalendarEventResultCopyWith<$Res> {
  __$CalendarEventResultCopyWithImpl(this._self, this._then);

  final _CalendarEventResult _self;
  final $Res Function(_CalendarEventResult) _then;

/// Create a copy of CalendarEventResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? added = null,Object? calendarName = freezed,Object? eventId = freezed,Object? includesTravelTime = null,Object? remindersSet = null,Object? events = freezed,}) {
  return _then(_CalendarEventResult(
added: null == added ? _self.added : added // ignore: cast_nullable_to_non_nullable
as bool,calendarName: freezed == calendarName ? _self.calendarName : calendarName // ignore: cast_nullable_to_non_nullable
as String?,eventId: freezed == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String?,includesTravelTime: null == includesTravelTime ? _self.includesTravelTime : includesTravelTime // ignore: cast_nullable_to_non_nullable
as bool,remindersSet: null == remindersSet ? _self.remindersSet : remindersSet // ignore: cast_nullable_to_non_nullable
as int,events: freezed == events ? _self._events : events // ignore: cast_nullable_to_non_nullable
as List<WellnessCalendarEvent>?,
  ));
}


}


/// @nodoc
mixin _$BookingInstructions {

 List<String>? get provided; List<String>? get bring; int? get arriveEarly; String? get parkingInfo; String? get checkInInfo;
/// Create a copy of BookingInstructions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingInstructionsCopyWith<BookingInstructions> get copyWith => _$BookingInstructionsCopyWithImpl<BookingInstructions>(this as BookingInstructions, _$identity);

  /// Serializes this BookingInstructions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingInstructions&&const DeepCollectionEquality().equals(other.provided, provided)&&const DeepCollectionEquality().equals(other.bring, bring)&&(identical(other.arriveEarly, arriveEarly) || other.arriveEarly == arriveEarly)&&(identical(other.parkingInfo, parkingInfo) || other.parkingInfo == parkingInfo)&&(identical(other.checkInInfo, checkInInfo) || other.checkInInfo == checkInInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(provided),const DeepCollectionEquality().hash(bring),arriveEarly,parkingInfo,checkInInfo);

@override
String toString() {
  return 'BookingInstructions(provided: $provided, bring: $bring, arriveEarly: $arriveEarly, parkingInfo: $parkingInfo, checkInInfo: $checkInInfo)';
}


}

/// @nodoc
abstract mixin class $BookingInstructionsCopyWith<$Res>  {
  factory $BookingInstructionsCopyWith(BookingInstructions value, $Res Function(BookingInstructions) _then) = _$BookingInstructionsCopyWithImpl;
@useResult
$Res call({
 List<String>? provided, List<String>? bring, int? arriveEarly, String? parkingInfo, String? checkInInfo
});




}
/// @nodoc
class _$BookingInstructionsCopyWithImpl<$Res>
    implements $BookingInstructionsCopyWith<$Res> {
  _$BookingInstructionsCopyWithImpl(this._self, this._then);

  final BookingInstructions _self;
  final $Res Function(BookingInstructions) _then;

/// Create a copy of BookingInstructions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? provided = freezed,Object? bring = freezed,Object? arriveEarly = freezed,Object? parkingInfo = freezed,Object? checkInInfo = freezed,}) {
  return _then(_self.copyWith(
provided: freezed == provided ? _self.provided : provided // ignore: cast_nullable_to_non_nullable
as List<String>?,bring: freezed == bring ? _self.bring : bring // ignore: cast_nullable_to_non_nullable
as List<String>?,arriveEarly: freezed == arriveEarly ? _self.arriveEarly : arriveEarly // ignore: cast_nullable_to_non_nullable
as int?,parkingInfo: freezed == parkingInfo ? _self.parkingInfo : parkingInfo // ignore: cast_nullable_to_non_nullable
as String?,checkInInfo: freezed == checkInInfo ? _self.checkInInfo : checkInInfo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingInstructions].
extension BookingInstructionsPatterns on BookingInstructions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingInstructions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingInstructions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingInstructions value)  $default,){
final _that = this;
switch (_that) {
case _BookingInstructions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingInstructions value)?  $default,){
final _that = this;
switch (_that) {
case _BookingInstructions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String>? provided,  List<String>? bring,  int? arriveEarly,  String? parkingInfo,  String? checkInInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingInstructions() when $default != null:
return $default(_that.provided,_that.bring,_that.arriveEarly,_that.parkingInfo,_that.checkInInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String>? provided,  List<String>? bring,  int? arriveEarly,  String? parkingInfo,  String? checkInInfo)  $default,) {final _that = this;
switch (_that) {
case _BookingInstructions():
return $default(_that.provided,_that.bring,_that.arriveEarly,_that.parkingInfo,_that.checkInInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String>? provided,  List<String>? bring,  int? arriveEarly,  String? parkingInfo,  String? checkInInfo)?  $default,) {final _that = this;
switch (_that) {
case _BookingInstructions() when $default != null:
return $default(_that.provided,_that.bring,_that.arriveEarly,_that.parkingInfo,_that.checkInInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingInstructions implements BookingInstructions {
  const _BookingInstructions({final  List<String>? provided, final  List<String>? bring, this.arriveEarly, this.parkingInfo, this.checkInInfo}): _provided = provided,_bring = bring;
  factory _BookingInstructions.fromJson(Map<String, dynamic> json) => _$BookingInstructionsFromJson(json);

 final  List<String>? _provided;
@override List<String>? get provided {
  final value = _provided;
  if (value == null) return null;
  if (_provided is EqualUnmodifiableListView) return _provided;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _bring;
@override List<String>? get bring {
  final value = _bring;
  if (value == null) return null;
  if (_bring is EqualUnmodifiableListView) return _bring;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? arriveEarly;
@override final  String? parkingInfo;
@override final  String? checkInInfo;

/// Create a copy of BookingInstructions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingInstructionsCopyWith<_BookingInstructions> get copyWith => __$BookingInstructionsCopyWithImpl<_BookingInstructions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingInstructionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingInstructions&&const DeepCollectionEquality().equals(other._provided, _provided)&&const DeepCollectionEquality().equals(other._bring, _bring)&&(identical(other.arriveEarly, arriveEarly) || other.arriveEarly == arriveEarly)&&(identical(other.parkingInfo, parkingInfo) || other.parkingInfo == parkingInfo)&&(identical(other.checkInInfo, checkInInfo) || other.checkInInfo == checkInInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_provided),const DeepCollectionEquality().hash(_bring),arriveEarly,parkingInfo,checkInInfo);

@override
String toString() {
  return 'BookingInstructions(provided: $provided, bring: $bring, arriveEarly: $arriveEarly, parkingInfo: $parkingInfo, checkInInfo: $checkInInfo)';
}


}

/// @nodoc
abstract mixin class _$BookingInstructionsCopyWith<$Res> implements $BookingInstructionsCopyWith<$Res> {
  factory _$BookingInstructionsCopyWith(_BookingInstructions value, $Res Function(_BookingInstructions) _then) = __$BookingInstructionsCopyWithImpl;
@override @useResult
$Res call({
 List<String>? provided, List<String>? bring, int? arriveEarly, String? parkingInfo, String? checkInInfo
});




}
/// @nodoc
class __$BookingInstructionsCopyWithImpl<$Res>
    implements _$BookingInstructionsCopyWith<$Res> {
  __$BookingInstructionsCopyWithImpl(this._self, this._then);

  final _BookingInstructions _self;
  final $Res Function(_BookingInstructions) _then;

/// Create a copy of BookingInstructions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? provided = freezed,Object? bring = freezed,Object? arriveEarly = freezed,Object? parkingInfo = freezed,Object? checkInInfo = freezed,}) {
  return _then(_BookingInstructions(
provided: freezed == provided ? _self._provided : provided // ignore: cast_nullable_to_non_nullable
as List<String>?,bring: freezed == bring ? _self._bring : bring // ignore: cast_nullable_to_non_nullable
as List<String>?,arriveEarly: freezed == arriveEarly ? _self.arriveEarly : arriveEarly // ignore: cast_nullable_to_non_nullable
as int?,parkingInfo: freezed == parkingInfo ? _self.parkingInfo : parkingInfo // ignore: cast_nullable_to_non_nullable
as String?,checkInInfo: freezed == checkInInfo ? _self.checkInInfo : checkInInfo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TravelInstructions {

 String? get from; String? get distance; int? get walkTime; String? get mapUrl; List<String>? get directions;
/// Create a copy of TravelInstructions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TravelInstructionsCopyWith<TravelInstructions> get copyWith => _$TravelInstructionsCopyWithImpl<TravelInstructions>(this as TravelInstructions, _$identity);

  /// Serializes this TravelInstructions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelInstructions&&(identical(other.from, from) || other.from == from)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.walkTime, walkTime) || other.walkTime == walkTime)&&(identical(other.mapUrl, mapUrl) || other.mapUrl == mapUrl)&&const DeepCollectionEquality().equals(other.directions, directions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,distance,walkTime,mapUrl,const DeepCollectionEquality().hash(directions));

@override
String toString() {
  return 'TravelInstructions(from: $from, distance: $distance, walkTime: $walkTime, mapUrl: $mapUrl, directions: $directions)';
}


}

/// @nodoc
abstract mixin class $TravelInstructionsCopyWith<$Res>  {
  factory $TravelInstructionsCopyWith(TravelInstructions value, $Res Function(TravelInstructions) _then) = _$TravelInstructionsCopyWithImpl;
@useResult
$Res call({
 String? from, String? distance, int? walkTime, String? mapUrl, List<String>? directions
});




}
/// @nodoc
class _$TravelInstructionsCopyWithImpl<$Res>
    implements $TravelInstructionsCopyWith<$Res> {
  _$TravelInstructionsCopyWithImpl(this._self, this._then);

  final TravelInstructions _self;
  final $Res Function(TravelInstructions) _then;

/// Create a copy of TravelInstructions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = freezed,Object? distance = freezed,Object? walkTime = freezed,Object? mapUrl = freezed,Object? directions = freezed,}) {
  return _then(_self.copyWith(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as String?,walkTime: freezed == walkTime ? _self.walkTime : walkTime // ignore: cast_nullable_to_non_nullable
as int?,mapUrl: freezed == mapUrl ? _self.mapUrl : mapUrl // ignore: cast_nullable_to_non_nullable
as String?,directions: freezed == directions ? _self.directions : directions // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TravelInstructions].
extension TravelInstructionsPatterns on TravelInstructions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TravelInstructions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TravelInstructions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TravelInstructions value)  $default,){
final _that = this;
switch (_that) {
case _TravelInstructions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TravelInstructions value)?  $default,){
final _that = this;
switch (_that) {
case _TravelInstructions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? from,  String? distance,  int? walkTime,  String? mapUrl,  List<String>? directions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TravelInstructions() when $default != null:
return $default(_that.from,_that.distance,_that.walkTime,_that.mapUrl,_that.directions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? from,  String? distance,  int? walkTime,  String? mapUrl,  List<String>? directions)  $default,) {final _that = this;
switch (_that) {
case _TravelInstructions():
return $default(_that.from,_that.distance,_that.walkTime,_that.mapUrl,_that.directions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? from,  String? distance,  int? walkTime,  String? mapUrl,  List<String>? directions)?  $default,) {final _that = this;
switch (_that) {
case _TravelInstructions() when $default != null:
return $default(_that.from,_that.distance,_that.walkTime,_that.mapUrl,_that.directions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TravelInstructions implements TravelInstructions {
  const _TravelInstructions({this.from, this.distance, this.walkTime, this.mapUrl, final  List<String>? directions}): _directions = directions;
  factory _TravelInstructions.fromJson(Map<String, dynamic> json) => _$TravelInstructionsFromJson(json);

@override final  String? from;
@override final  String? distance;
@override final  int? walkTime;
@override final  String? mapUrl;
 final  List<String>? _directions;
@override List<String>? get directions {
  final value = _directions;
  if (value == null) return null;
  if (_directions is EqualUnmodifiableListView) return _directions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of TravelInstructions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TravelInstructionsCopyWith<_TravelInstructions> get copyWith => __$TravelInstructionsCopyWithImpl<_TravelInstructions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TravelInstructionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TravelInstructions&&(identical(other.from, from) || other.from == from)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.walkTime, walkTime) || other.walkTime == walkTime)&&(identical(other.mapUrl, mapUrl) || other.mapUrl == mapUrl)&&const DeepCollectionEquality().equals(other._directions, _directions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,distance,walkTime,mapUrl,const DeepCollectionEquality().hash(_directions));

@override
String toString() {
  return 'TravelInstructions(from: $from, distance: $distance, walkTime: $walkTime, mapUrl: $mapUrl, directions: $directions)';
}


}

/// @nodoc
abstract mixin class _$TravelInstructionsCopyWith<$Res> implements $TravelInstructionsCopyWith<$Res> {
  factory _$TravelInstructionsCopyWith(_TravelInstructions value, $Res Function(_TravelInstructions) _then) = __$TravelInstructionsCopyWithImpl;
@override @useResult
$Res call({
 String? from, String? distance, int? walkTime, String? mapUrl, List<String>? directions
});




}
/// @nodoc
class __$TravelInstructionsCopyWithImpl<$Res>
    implements _$TravelInstructionsCopyWith<$Res> {
  __$TravelInstructionsCopyWithImpl(this._self, this._then);

  final _TravelInstructions _self;
  final $Res Function(_TravelInstructions) _then;

/// Create a copy of TravelInstructions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = freezed,Object? distance = freezed,Object? walkTime = freezed,Object? mapUrl = freezed,Object? directions = freezed,}) {
  return _then(_TravelInstructions(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as String?,walkTime: freezed == walkTime ? _self.walkTime : walkTime // ignore: cast_nullable_to_non_nullable
as int?,mapUrl: freezed == mapUrl ? _self.mapUrl : mapUrl // ignore: cast_nullable_to_non_nullable
as String?,directions: freezed == directions ? _self._directions : directions // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$BookingAnalytics {

 DateTime get bookingTime; String get activityType; String? get venue; String? get city; int? get advanceBookingHours; BookingSource? get source; Map<String, dynamic>? get customData;
/// Create a copy of BookingAnalytics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingAnalyticsCopyWith<BookingAnalytics> get copyWith => _$BookingAnalyticsCopyWithImpl<BookingAnalytics>(this as BookingAnalytics, _$identity);

  /// Serializes this BookingAnalytics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingAnalytics&&(identical(other.bookingTime, bookingTime) || other.bookingTime == bookingTime)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.city, city) || other.city == city)&&(identical(other.advanceBookingHours, advanceBookingHours) || other.advanceBookingHours == advanceBookingHours)&&(identical(other.source, source) || other.source == source)&&const DeepCollectionEquality().equals(other.customData, customData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookingTime,activityType,venue,city,advanceBookingHours,source,const DeepCollectionEquality().hash(customData));

@override
String toString() {
  return 'BookingAnalytics(bookingTime: $bookingTime, activityType: $activityType, venue: $venue, city: $city, advanceBookingHours: $advanceBookingHours, source: $source, customData: $customData)';
}


}

/// @nodoc
abstract mixin class $BookingAnalyticsCopyWith<$Res>  {
  factory $BookingAnalyticsCopyWith(BookingAnalytics value, $Res Function(BookingAnalytics) _then) = _$BookingAnalyticsCopyWithImpl;
@useResult
$Res call({
 DateTime bookingTime, String activityType, String? venue, String? city, int? advanceBookingHours, BookingSource? source, Map<String, dynamic>? customData
});




}
/// @nodoc
class _$BookingAnalyticsCopyWithImpl<$Res>
    implements $BookingAnalyticsCopyWith<$Res> {
  _$BookingAnalyticsCopyWithImpl(this._self, this._then);

  final BookingAnalytics _self;
  final $Res Function(BookingAnalytics) _then;

/// Create a copy of BookingAnalytics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bookingTime = null,Object? activityType = null,Object? venue = freezed,Object? city = freezed,Object? advanceBookingHours = freezed,Object? source = freezed,Object? customData = freezed,}) {
  return _then(_self.copyWith(
bookingTime: null == bookingTime ? _self.bookingTime : bookingTime // ignore: cast_nullable_to_non_nullable
as DateTime,activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,venue: freezed == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,advanceBookingHours: freezed == advanceBookingHours ? _self.advanceBookingHours : advanceBookingHours // ignore: cast_nullable_to_non_nullable
as int?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as BookingSource?,customData: freezed == customData ? _self.customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingAnalytics].
extension BookingAnalyticsPatterns on BookingAnalytics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingAnalytics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingAnalytics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingAnalytics value)  $default,){
final _that = this;
switch (_that) {
case _BookingAnalytics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingAnalytics value)?  $default,){
final _that = this;
switch (_that) {
case _BookingAnalytics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime bookingTime,  String activityType,  String? venue,  String? city,  int? advanceBookingHours,  BookingSource? source,  Map<String, dynamic>? customData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingAnalytics() when $default != null:
return $default(_that.bookingTime,_that.activityType,_that.venue,_that.city,_that.advanceBookingHours,_that.source,_that.customData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime bookingTime,  String activityType,  String? venue,  String? city,  int? advanceBookingHours,  BookingSource? source,  Map<String, dynamic>? customData)  $default,) {final _that = this;
switch (_that) {
case _BookingAnalytics():
return $default(_that.bookingTime,_that.activityType,_that.venue,_that.city,_that.advanceBookingHours,_that.source,_that.customData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime bookingTime,  String activityType,  String? venue,  String? city,  int? advanceBookingHours,  BookingSource? source,  Map<String, dynamic>? customData)?  $default,) {final _that = this;
switch (_that) {
case _BookingAnalytics() when $default != null:
return $default(_that.bookingTime,_that.activityType,_that.venue,_that.city,_that.advanceBookingHours,_that.source,_that.customData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingAnalytics implements BookingAnalytics {
  const _BookingAnalytics({required this.bookingTime, required this.activityType, this.venue, this.city, this.advanceBookingHours, this.source, final  Map<String, dynamic>? customData}): _customData = customData;
  factory _BookingAnalytics.fromJson(Map<String, dynamic> json) => _$BookingAnalyticsFromJson(json);

@override final  DateTime bookingTime;
@override final  String activityType;
@override final  String? venue;
@override final  String? city;
@override final  int? advanceBookingHours;
@override final  BookingSource? source;
 final  Map<String, dynamic>? _customData;
@override Map<String, dynamic>? get customData {
  final value = _customData;
  if (value == null) return null;
  if (_customData is EqualUnmodifiableMapView) return _customData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of BookingAnalytics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingAnalyticsCopyWith<_BookingAnalytics> get copyWith => __$BookingAnalyticsCopyWithImpl<_BookingAnalytics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingAnalyticsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingAnalytics&&(identical(other.bookingTime, bookingTime) || other.bookingTime == bookingTime)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.city, city) || other.city == city)&&(identical(other.advanceBookingHours, advanceBookingHours) || other.advanceBookingHours == advanceBookingHours)&&(identical(other.source, source) || other.source == source)&&const DeepCollectionEquality().equals(other._customData, _customData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookingTime,activityType,venue,city,advanceBookingHours,source,const DeepCollectionEquality().hash(_customData));

@override
String toString() {
  return 'BookingAnalytics(bookingTime: $bookingTime, activityType: $activityType, venue: $venue, city: $city, advanceBookingHours: $advanceBookingHours, source: $source, customData: $customData)';
}


}

/// @nodoc
abstract mixin class _$BookingAnalyticsCopyWith<$Res> implements $BookingAnalyticsCopyWith<$Res> {
  factory _$BookingAnalyticsCopyWith(_BookingAnalytics value, $Res Function(_BookingAnalytics) _then) = __$BookingAnalyticsCopyWithImpl;
@override @useResult
$Res call({
 DateTime bookingTime, String activityType, String? venue, String? city, int? advanceBookingHours, BookingSource? source, Map<String, dynamic>? customData
});




}
/// @nodoc
class __$BookingAnalyticsCopyWithImpl<$Res>
    implements _$BookingAnalyticsCopyWith<$Res> {
  __$BookingAnalyticsCopyWithImpl(this._self, this._then);

  final _BookingAnalytics _self;
  final $Res Function(_BookingAnalytics) _then;

/// Create a copy of BookingAnalytics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bookingTime = null,Object? activityType = null,Object? venue = freezed,Object? city = freezed,Object? advanceBookingHours = freezed,Object? source = freezed,Object? customData = freezed,}) {
  return _then(_BookingAnalytics(
bookingTime: null == bookingTime ? _self.bookingTime : bookingTime // ignore: cast_nullable_to_non_nullable
as DateTime,activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,venue: freezed == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,advanceBookingHours: freezed == advanceBookingHours ? _self.advanceBookingHours : advanceBookingHours // ignore: cast_nullable_to_non_nullable
as int?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as BookingSource?,customData: freezed == customData ? _self._customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$BookingError {

 BookingErrorType get errorType; String get userMessage; String? get technicalMessage; List<BookingAlternative>? get alternatives; List<ErrorAction>? get actions; bool? get canRetry;
/// Create a copy of BookingError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingErrorCopyWith<BookingError> get copyWith => _$BookingErrorCopyWithImpl<BookingError>(this as BookingError, _$identity);

  /// Serializes this BookingError to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingError&&(identical(other.errorType, errorType) || other.errorType == errorType)&&(identical(other.userMessage, userMessage) || other.userMessage == userMessage)&&(identical(other.technicalMessage, technicalMessage) || other.technicalMessage == technicalMessage)&&const DeepCollectionEquality().equals(other.alternatives, alternatives)&&const DeepCollectionEquality().equals(other.actions, actions)&&(identical(other.canRetry, canRetry) || other.canRetry == canRetry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,errorType,userMessage,technicalMessage,const DeepCollectionEquality().hash(alternatives),const DeepCollectionEquality().hash(actions),canRetry);

@override
String toString() {
  return 'BookingError(errorType: $errorType, userMessage: $userMessage, technicalMessage: $technicalMessage, alternatives: $alternatives, actions: $actions, canRetry: $canRetry)';
}


}

/// @nodoc
abstract mixin class $BookingErrorCopyWith<$Res>  {
  factory $BookingErrorCopyWith(BookingError value, $Res Function(BookingError) _then) = _$BookingErrorCopyWithImpl;
@useResult
$Res call({
 BookingErrorType errorType, String userMessage, String? technicalMessage, List<BookingAlternative>? alternatives, List<ErrorAction>? actions, bool? canRetry
});




}
/// @nodoc
class _$BookingErrorCopyWithImpl<$Res>
    implements $BookingErrorCopyWith<$Res> {
  _$BookingErrorCopyWithImpl(this._self, this._then);

  final BookingError _self;
  final $Res Function(BookingError) _then;

/// Create a copy of BookingError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? errorType = null,Object? userMessage = null,Object? technicalMessage = freezed,Object? alternatives = freezed,Object? actions = freezed,Object? canRetry = freezed,}) {
  return _then(_self.copyWith(
errorType: null == errorType ? _self.errorType : errorType // ignore: cast_nullable_to_non_nullable
as BookingErrorType,userMessage: null == userMessage ? _self.userMessage : userMessage // ignore: cast_nullable_to_non_nullable
as String,technicalMessage: freezed == technicalMessage ? _self.technicalMessage : technicalMessage // ignore: cast_nullable_to_non_nullable
as String?,alternatives: freezed == alternatives ? _self.alternatives : alternatives // ignore: cast_nullable_to_non_nullable
as List<BookingAlternative>?,actions: freezed == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as List<ErrorAction>?,canRetry: freezed == canRetry ? _self.canRetry : canRetry // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingError].
extension BookingErrorPatterns on BookingError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingError value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingError() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingError value)  $default,){
final _that = this;
switch (_that) {
case _BookingError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingError value)?  $default,){
final _that = this;
switch (_that) {
case _BookingError() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BookingErrorType errorType,  String userMessage,  String? technicalMessage,  List<BookingAlternative>? alternatives,  List<ErrorAction>? actions,  bool? canRetry)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingError() when $default != null:
return $default(_that.errorType,_that.userMessage,_that.technicalMessage,_that.alternatives,_that.actions,_that.canRetry);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BookingErrorType errorType,  String userMessage,  String? technicalMessage,  List<BookingAlternative>? alternatives,  List<ErrorAction>? actions,  bool? canRetry)  $default,) {final _that = this;
switch (_that) {
case _BookingError():
return $default(_that.errorType,_that.userMessage,_that.technicalMessage,_that.alternatives,_that.actions,_that.canRetry);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BookingErrorType errorType,  String userMessage,  String? technicalMessage,  List<BookingAlternative>? alternatives,  List<ErrorAction>? actions,  bool? canRetry)?  $default,) {final _that = this;
switch (_that) {
case _BookingError() when $default != null:
return $default(_that.errorType,_that.userMessage,_that.technicalMessage,_that.alternatives,_that.actions,_that.canRetry);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingError implements BookingError {
  const _BookingError({required this.errorType, required this.userMessage, this.technicalMessage, final  List<BookingAlternative>? alternatives, final  List<ErrorAction>? actions, this.canRetry}): _alternatives = alternatives,_actions = actions;
  factory _BookingError.fromJson(Map<String, dynamic> json) => _$BookingErrorFromJson(json);

@override final  BookingErrorType errorType;
@override final  String userMessage;
@override final  String? technicalMessage;
 final  List<BookingAlternative>? _alternatives;
@override List<BookingAlternative>? get alternatives {
  final value = _alternatives;
  if (value == null) return null;
  if (_alternatives is EqualUnmodifiableListView) return _alternatives;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ErrorAction>? _actions;
@override List<ErrorAction>? get actions {
  final value = _actions;
  if (value == null) return null;
  if (_actions is EqualUnmodifiableListView) return _actions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? canRetry;

/// Create a copy of BookingError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingErrorCopyWith<_BookingError> get copyWith => __$BookingErrorCopyWithImpl<_BookingError>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingErrorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingError&&(identical(other.errorType, errorType) || other.errorType == errorType)&&(identical(other.userMessage, userMessage) || other.userMessage == userMessage)&&(identical(other.technicalMessage, technicalMessage) || other.technicalMessage == technicalMessage)&&const DeepCollectionEquality().equals(other._alternatives, _alternatives)&&const DeepCollectionEquality().equals(other._actions, _actions)&&(identical(other.canRetry, canRetry) || other.canRetry == canRetry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,errorType,userMessage,technicalMessage,const DeepCollectionEquality().hash(_alternatives),const DeepCollectionEquality().hash(_actions),canRetry);

@override
String toString() {
  return 'BookingError(errorType: $errorType, userMessage: $userMessage, technicalMessage: $technicalMessage, alternatives: $alternatives, actions: $actions, canRetry: $canRetry)';
}


}

/// @nodoc
abstract mixin class _$BookingErrorCopyWith<$Res> implements $BookingErrorCopyWith<$Res> {
  factory _$BookingErrorCopyWith(_BookingError value, $Res Function(_BookingError) _then) = __$BookingErrorCopyWithImpl;
@override @useResult
$Res call({
 BookingErrorType errorType, String userMessage, String? technicalMessage, List<BookingAlternative>? alternatives, List<ErrorAction>? actions, bool? canRetry
});




}
/// @nodoc
class __$BookingErrorCopyWithImpl<$Res>
    implements _$BookingErrorCopyWith<$Res> {
  __$BookingErrorCopyWithImpl(this._self, this._then);

  final _BookingError _self;
  final $Res Function(_BookingError) _then;

/// Create a copy of BookingError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? errorType = null,Object? userMessage = null,Object? technicalMessage = freezed,Object? alternatives = freezed,Object? actions = freezed,Object? canRetry = freezed,}) {
  return _then(_BookingError(
errorType: null == errorType ? _self.errorType : errorType // ignore: cast_nullable_to_non_nullable
as BookingErrorType,userMessage: null == userMessage ? _self.userMessage : userMessage // ignore: cast_nullable_to_non_nullable
as String,technicalMessage: freezed == technicalMessage ? _self.technicalMessage : technicalMessage // ignore: cast_nullable_to_non_nullable
as String?,alternatives: freezed == alternatives ? _self._alternatives : alternatives // ignore: cast_nullable_to_non_nullable
as List<BookingAlternative>?,actions: freezed == actions ? _self._actions : actions // ignore: cast_nullable_to_non_nullable
as List<ErrorAction>?,canRetry: freezed == canRetry ? _self.canRetry : canRetry // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$BookingAlternative {

 String get venue; String get activityName; DateTime get time; int? get spots; String? get note; double? get distance;
/// Create a copy of BookingAlternative
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingAlternativeCopyWith<BookingAlternative> get copyWith => _$BookingAlternativeCopyWithImpl<BookingAlternative>(this as BookingAlternative, _$identity);

  /// Serializes this BookingAlternative to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingAlternative&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.activityName, activityName) || other.activityName == activityName)&&(identical(other.time, time) || other.time == time)&&(identical(other.spots, spots) || other.spots == spots)&&(identical(other.note, note) || other.note == note)&&(identical(other.distance, distance) || other.distance == distance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,venue,activityName,time,spots,note,distance);

@override
String toString() {
  return 'BookingAlternative(venue: $venue, activityName: $activityName, time: $time, spots: $spots, note: $note, distance: $distance)';
}


}

/// @nodoc
abstract mixin class $BookingAlternativeCopyWith<$Res>  {
  factory $BookingAlternativeCopyWith(BookingAlternative value, $Res Function(BookingAlternative) _then) = _$BookingAlternativeCopyWithImpl;
@useResult
$Res call({
 String venue, String activityName, DateTime time, int? spots, String? note, double? distance
});




}
/// @nodoc
class _$BookingAlternativeCopyWithImpl<$Res>
    implements $BookingAlternativeCopyWith<$Res> {
  _$BookingAlternativeCopyWithImpl(this._self, this._then);

  final BookingAlternative _self;
  final $Res Function(BookingAlternative) _then;

/// Create a copy of BookingAlternative
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? venue = null,Object? activityName = null,Object? time = null,Object? spots = freezed,Object? note = freezed,Object? distance = freezed,}) {
  return _then(_self.copyWith(
venue: null == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String,activityName: null == activityName ? _self.activityName : activityName // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,spots: freezed == spots ? _self.spots : spots // ignore: cast_nullable_to_non_nullable
as int?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingAlternative].
extension BookingAlternativePatterns on BookingAlternative {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingAlternative value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingAlternative() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingAlternative value)  $default,){
final _that = this;
switch (_that) {
case _BookingAlternative():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingAlternative value)?  $default,){
final _that = this;
switch (_that) {
case _BookingAlternative() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String venue,  String activityName,  DateTime time,  int? spots,  String? note,  double? distance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingAlternative() when $default != null:
return $default(_that.venue,_that.activityName,_that.time,_that.spots,_that.note,_that.distance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String venue,  String activityName,  DateTime time,  int? spots,  String? note,  double? distance)  $default,) {final _that = this;
switch (_that) {
case _BookingAlternative():
return $default(_that.venue,_that.activityName,_that.time,_that.spots,_that.note,_that.distance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String venue,  String activityName,  DateTime time,  int? spots,  String? note,  double? distance)?  $default,) {final _that = this;
switch (_that) {
case _BookingAlternative() when $default != null:
return $default(_that.venue,_that.activityName,_that.time,_that.spots,_that.note,_that.distance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingAlternative implements BookingAlternative {
  const _BookingAlternative({required this.venue, required this.activityName, required this.time, this.spots, this.note, this.distance});
  factory _BookingAlternative.fromJson(Map<String, dynamic> json) => _$BookingAlternativeFromJson(json);

@override final  String venue;
@override final  String activityName;
@override final  DateTime time;
@override final  int? spots;
@override final  String? note;
@override final  double? distance;

/// Create a copy of BookingAlternative
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingAlternativeCopyWith<_BookingAlternative> get copyWith => __$BookingAlternativeCopyWithImpl<_BookingAlternative>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingAlternativeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingAlternative&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.activityName, activityName) || other.activityName == activityName)&&(identical(other.time, time) || other.time == time)&&(identical(other.spots, spots) || other.spots == spots)&&(identical(other.note, note) || other.note == note)&&(identical(other.distance, distance) || other.distance == distance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,venue,activityName,time,spots,note,distance);

@override
String toString() {
  return 'BookingAlternative(venue: $venue, activityName: $activityName, time: $time, spots: $spots, note: $note, distance: $distance)';
}


}

/// @nodoc
abstract mixin class _$BookingAlternativeCopyWith<$Res> implements $BookingAlternativeCopyWith<$Res> {
  factory _$BookingAlternativeCopyWith(_BookingAlternative value, $Res Function(_BookingAlternative) _then) = __$BookingAlternativeCopyWithImpl;
@override @useResult
$Res call({
 String venue, String activityName, DateTime time, int? spots, String? note, double? distance
});




}
/// @nodoc
class __$BookingAlternativeCopyWithImpl<$Res>
    implements _$BookingAlternativeCopyWith<$Res> {
  __$BookingAlternativeCopyWithImpl(this._self, this._then);

  final _BookingAlternative _self;
  final $Res Function(_BookingAlternative) _then;

/// Create a copy of BookingAlternative
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? venue = null,Object? activityName = null,Object? time = null,Object? spots = freezed,Object? note = freezed,Object? distance = freezed,}) {
  return _then(_BookingAlternative(
venue: null == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String,activityName: null == activityName ? _self.activityName : activityName // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,spots: freezed == spots ? _self.spots : spots // ignore: cast_nullable_to_non_nullable
as int?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$ErrorAction {

 String get label; String get action; bool? get enabled; Map<String, dynamic>? get params;
/// Create a copy of ErrorAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorActionCopyWith<ErrorAction> get copyWith => _$ErrorActionCopyWithImpl<ErrorAction>(this as ErrorAction, _$identity);

  /// Serializes this ErrorAction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorAction&&(identical(other.label, label) || other.label == label)&&(identical(other.action, action) || other.action == action)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other.params, params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,action,enabled,const DeepCollectionEquality().hash(params));

@override
String toString() {
  return 'ErrorAction(label: $label, action: $action, enabled: $enabled, params: $params)';
}


}

/// @nodoc
abstract mixin class $ErrorActionCopyWith<$Res>  {
  factory $ErrorActionCopyWith(ErrorAction value, $Res Function(ErrorAction) _then) = _$ErrorActionCopyWithImpl;
@useResult
$Res call({
 String label, String action, bool? enabled, Map<String, dynamic>? params
});




}
/// @nodoc
class _$ErrorActionCopyWithImpl<$Res>
    implements $ErrorActionCopyWith<$Res> {
  _$ErrorActionCopyWithImpl(this._self, this._then);

  final ErrorAction _self;
  final $Res Function(ErrorAction) _then;

/// Create a copy of ErrorAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? action = null,Object? enabled = freezed,Object? params = freezed,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,enabled: freezed == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool?,params: freezed == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ErrorAction].
extension ErrorActionPatterns on ErrorAction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ErrorAction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorAction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ErrorAction value)  $default,){
final _that = this;
switch (_that) {
case _ErrorAction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ErrorAction value)?  $default,){
final _that = this;
switch (_that) {
case _ErrorAction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  String action,  bool? enabled,  Map<String, dynamic>? params)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorAction() when $default != null:
return $default(_that.label,_that.action,_that.enabled,_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  String action,  bool? enabled,  Map<String, dynamic>? params)  $default,) {final _that = this;
switch (_that) {
case _ErrorAction():
return $default(_that.label,_that.action,_that.enabled,_that.params);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  String action,  bool? enabled,  Map<String, dynamic>? params)?  $default,) {final _that = this;
switch (_that) {
case _ErrorAction() when $default != null:
return $default(_that.label,_that.action,_that.enabled,_that.params);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ErrorAction implements ErrorAction {
  const _ErrorAction({required this.label, required this.action, this.enabled, final  Map<String, dynamic>? params}): _params = params;
  factory _ErrorAction.fromJson(Map<String, dynamic> json) => _$ErrorActionFromJson(json);

@override final  String label;
@override final  String action;
@override final  bool? enabled;
 final  Map<String, dynamic>? _params;
@override Map<String, dynamic>? get params {
  final value = _params;
  if (value == null) return null;
  if (_params is EqualUnmodifiableMapView) return _params;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ErrorAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorActionCopyWith<_ErrorAction> get copyWith => __$ErrorActionCopyWithImpl<_ErrorAction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorActionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorAction&&(identical(other.label, label) || other.label == label)&&(identical(other.action, action) || other.action == action)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other._params, _params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,action,enabled,const DeepCollectionEquality().hash(_params));

@override
String toString() {
  return 'ErrorAction(label: $label, action: $action, enabled: $enabled, params: $params)';
}


}

/// @nodoc
abstract mixin class _$ErrorActionCopyWith<$Res> implements $ErrorActionCopyWith<$Res> {
  factory _$ErrorActionCopyWith(_ErrorAction value, $Res Function(_ErrorAction) _then) = __$ErrorActionCopyWithImpl;
@override @useResult
$Res call({
 String label, String action, bool? enabled, Map<String, dynamic>? params
});




}
/// @nodoc
class __$ErrorActionCopyWithImpl<$Res>
    implements _$ErrorActionCopyWith<$Res> {
  __$ErrorActionCopyWithImpl(this._self, this._then);

  final _ErrorAction _self;
  final $Res Function(_ErrorAction) _then;

/// Create a copy of ErrorAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? action = null,Object? enabled = freezed,Object? params = freezed,}) {
  return _then(_ErrorAction(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,enabled: freezed == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool?,params: freezed == params ? _self._params : params // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$CancellationRequest {

 String get bookingId; String get userId; CancellationReason get reason; String? get note;
/// Create a copy of CancellationRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancellationRequestCopyWith<CancellationRequest> get copyWith => _$CancellationRequestCopyWithImpl<CancellationRequest>(this as CancellationRequest, _$identity);

  /// Serializes this CancellationRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancellationRequest&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookingId,userId,reason,note);

@override
String toString() {
  return 'CancellationRequest(bookingId: $bookingId, userId: $userId, reason: $reason, note: $note)';
}


}

/// @nodoc
abstract mixin class $CancellationRequestCopyWith<$Res>  {
  factory $CancellationRequestCopyWith(CancellationRequest value, $Res Function(CancellationRequest) _then) = _$CancellationRequestCopyWithImpl;
@useResult
$Res call({
 String bookingId, String userId, CancellationReason reason, String? note
});




}
/// @nodoc
class _$CancellationRequestCopyWithImpl<$Res>
    implements $CancellationRequestCopyWith<$Res> {
  _$CancellationRequestCopyWithImpl(this._self, this._then);

  final CancellationRequest _self;
  final $Res Function(CancellationRequest) _then;

/// Create a copy of CancellationRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bookingId = null,Object? userId = null,Object? reason = null,Object? note = freezed,}) {
  return _then(_self.copyWith(
bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as CancellationReason,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CancellationRequest].
extension CancellationRequestPatterns on CancellationRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CancellationRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CancellationRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CancellationRequest value)  $default,){
final _that = this;
switch (_that) {
case _CancellationRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CancellationRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CancellationRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String bookingId,  String userId,  CancellationReason reason,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CancellationRequest() when $default != null:
return $default(_that.bookingId,_that.userId,_that.reason,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String bookingId,  String userId,  CancellationReason reason,  String? note)  $default,) {final _that = this;
switch (_that) {
case _CancellationRequest():
return $default(_that.bookingId,_that.userId,_that.reason,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String bookingId,  String userId,  CancellationReason reason,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _CancellationRequest() when $default != null:
return $default(_that.bookingId,_that.userId,_that.reason,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CancellationRequest implements CancellationRequest {
  const _CancellationRequest({required this.bookingId, required this.userId, required this.reason, this.note});
  factory _CancellationRequest.fromJson(Map<String, dynamic> json) => _$CancellationRequestFromJson(json);

@override final  String bookingId;
@override final  String userId;
@override final  CancellationReason reason;
@override final  String? note;

/// Create a copy of CancellationRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CancellationRequestCopyWith<_CancellationRequest> get copyWith => __$CancellationRequestCopyWithImpl<_CancellationRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CancellationRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CancellationRequest&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bookingId,userId,reason,note);

@override
String toString() {
  return 'CancellationRequest(bookingId: $bookingId, userId: $userId, reason: $reason, note: $note)';
}


}

/// @nodoc
abstract mixin class _$CancellationRequestCopyWith<$Res> implements $CancellationRequestCopyWith<$Res> {
  factory _$CancellationRequestCopyWith(_CancellationRequest value, $Res Function(_CancellationRequest) _then) = __$CancellationRequestCopyWithImpl;
@override @useResult
$Res call({
 String bookingId, String userId, CancellationReason reason, String? note
});




}
/// @nodoc
class __$CancellationRequestCopyWithImpl<$Res>
    implements _$CancellationRequestCopyWith<$Res> {
  __$CancellationRequestCopyWithImpl(this._self, this._then);

  final _CancellationRequest _self;
  final $Res Function(_CancellationRequest) _then;

/// Create a copy of CancellationRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bookingId = null,Object? userId = null,Object? reason = null,Object? note = freezed,}) {
  return _then(_CancellationRequest(
bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as CancellationReason,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CancellationResult {

 bool get success; String get message; bool? get penaltyFree; bool? get creditRefunded; String? get refundAmount; CancellationFollowUp? get followUp;
/// Create a copy of CancellationResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancellationResultCopyWith<CancellationResult> get copyWith => _$CancellationResultCopyWithImpl<CancellationResult>(this as CancellationResult, _$identity);

  /// Serializes this CancellationResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancellationResult&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.penaltyFree, penaltyFree) || other.penaltyFree == penaltyFree)&&(identical(other.creditRefunded, creditRefunded) || other.creditRefunded == creditRefunded)&&(identical(other.refundAmount, refundAmount) || other.refundAmount == refundAmount)&&(identical(other.followUp, followUp) || other.followUp == followUp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,penaltyFree,creditRefunded,refundAmount,followUp);

@override
String toString() {
  return 'CancellationResult(success: $success, message: $message, penaltyFree: $penaltyFree, creditRefunded: $creditRefunded, refundAmount: $refundAmount, followUp: $followUp)';
}


}

/// @nodoc
abstract mixin class $CancellationResultCopyWith<$Res>  {
  factory $CancellationResultCopyWith(CancellationResult value, $Res Function(CancellationResult) _then) = _$CancellationResultCopyWithImpl;
@useResult
$Res call({
 bool success, String message, bool? penaltyFree, bool? creditRefunded, String? refundAmount, CancellationFollowUp? followUp
});


$CancellationFollowUpCopyWith<$Res>? get followUp;

}
/// @nodoc
class _$CancellationResultCopyWithImpl<$Res>
    implements $CancellationResultCopyWith<$Res> {
  _$CancellationResultCopyWithImpl(this._self, this._then);

  final CancellationResult _self;
  final $Res Function(CancellationResult) _then;

/// Create a copy of CancellationResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? penaltyFree = freezed,Object? creditRefunded = freezed,Object? refundAmount = freezed,Object? followUp = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,penaltyFree: freezed == penaltyFree ? _self.penaltyFree : penaltyFree // ignore: cast_nullable_to_non_nullable
as bool?,creditRefunded: freezed == creditRefunded ? _self.creditRefunded : creditRefunded // ignore: cast_nullable_to_non_nullable
as bool?,refundAmount: freezed == refundAmount ? _self.refundAmount : refundAmount // ignore: cast_nullable_to_non_nullable
as String?,followUp: freezed == followUp ? _self.followUp : followUp // ignore: cast_nullable_to_non_nullable
as CancellationFollowUp?,
  ));
}
/// Create a copy of CancellationResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CancellationFollowUpCopyWith<$Res>? get followUp {
    if (_self.followUp == null) {
    return null;
  }

  return $CancellationFollowUpCopyWith<$Res>(_self.followUp!, (value) {
    return _then(_self.copyWith(followUp: value));
  });
}
}


/// Adds pattern-matching-related methods to [CancellationResult].
extension CancellationResultPatterns on CancellationResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CancellationResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CancellationResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CancellationResult value)  $default,){
final _that = this;
switch (_that) {
case _CancellationResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CancellationResult value)?  $default,){
final _that = this;
switch (_that) {
case _CancellationResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  bool? penaltyFree,  bool? creditRefunded,  String? refundAmount,  CancellationFollowUp? followUp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CancellationResult() when $default != null:
return $default(_that.success,_that.message,_that.penaltyFree,_that.creditRefunded,_that.refundAmount,_that.followUp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  bool? penaltyFree,  bool? creditRefunded,  String? refundAmount,  CancellationFollowUp? followUp)  $default,) {final _that = this;
switch (_that) {
case _CancellationResult():
return $default(_that.success,_that.message,_that.penaltyFree,_that.creditRefunded,_that.refundAmount,_that.followUp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  bool? penaltyFree,  bool? creditRefunded,  String? refundAmount,  CancellationFollowUp? followUp)?  $default,) {final _that = this;
switch (_that) {
case _CancellationResult() when $default != null:
return $default(_that.success,_that.message,_that.penaltyFree,_that.creditRefunded,_that.refundAmount,_that.followUp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CancellationResult implements CancellationResult {
  const _CancellationResult({required this.success, required this.message, this.penaltyFree, this.creditRefunded, this.refundAmount, this.followUp});
  factory _CancellationResult.fromJson(Map<String, dynamic> json) => _$CancellationResultFromJson(json);

@override final  bool success;
@override final  String message;
@override final  bool? penaltyFree;
@override final  bool? creditRefunded;
@override final  String? refundAmount;
@override final  CancellationFollowUp? followUp;

/// Create a copy of CancellationResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CancellationResultCopyWith<_CancellationResult> get copyWith => __$CancellationResultCopyWithImpl<_CancellationResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CancellationResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CancellationResult&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.penaltyFree, penaltyFree) || other.penaltyFree == penaltyFree)&&(identical(other.creditRefunded, creditRefunded) || other.creditRefunded == creditRefunded)&&(identical(other.refundAmount, refundAmount) || other.refundAmount == refundAmount)&&(identical(other.followUp, followUp) || other.followUp == followUp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,penaltyFree,creditRefunded,refundAmount,followUp);

@override
String toString() {
  return 'CancellationResult(success: $success, message: $message, penaltyFree: $penaltyFree, creditRefunded: $creditRefunded, refundAmount: $refundAmount, followUp: $followUp)';
}


}

/// @nodoc
abstract mixin class _$CancellationResultCopyWith<$Res> implements $CancellationResultCopyWith<$Res> {
  factory _$CancellationResultCopyWith(_CancellationResult value, $Res Function(_CancellationResult) _then) = __$CancellationResultCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, bool? penaltyFree, bool? creditRefunded, String? refundAmount, CancellationFollowUp? followUp
});


@override $CancellationFollowUpCopyWith<$Res>? get followUp;

}
/// @nodoc
class __$CancellationResultCopyWithImpl<$Res>
    implements _$CancellationResultCopyWith<$Res> {
  __$CancellationResultCopyWithImpl(this._self, this._then);

  final _CancellationResult _self;
  final $Res Function(_CancellationResult) _then;

/// Create a copy of CancellationResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? penaltyFree = freezed,Object? creditRefunded = freezed,Object? refundAmount = freezed,Object? followUp = freezed,}) {
  return _then(_CancellationResult(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,penaltyFree: freezed == penaltyFree ? _self.penaltyFree : penaltyFree // ignore: cast_nullable_to_non_nullable
as bool?,creditRefunded: freezed == creditRefunded ? _self.creditRefunded : creditRefunded // ignore: cast_nullable_to_non_nullable
as bool?,refundAmount: freezed == refundAmount ? _self.refundAmount : refundAmount // ignore: cast_nullable_to_non_nullable
as String?,followUp: freezed == followUp ? _self.followUp : followUp // ignore: cast_nullable_to_non_nullable
as CancellationFollowUp?,
  ));
}

/// Create a copy of CancellationResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CancellationFollowUpCopyWith<$Res>? get followUp {
    if (_self.followUp == null) {
    return null;
  }

  return $CancellationFollowUpCopyWith<$Res>(_self.followUp!, (value) {
    return _then(_self.copyWith(followUp: value));
  });
}
}


/// @nodoc
mixin _$CancellationFollowUp {

 String get message; List<String>? get actions; List<BookingAlternative>? get alternatives;
/// Create a copy of CancellationFollowUp
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancellationFollowUpCopyWith<CancellationFollowUp> get copyWith => _$CancellationFollowUpCopyWithImpl<CancellationFollowUp>(this as CancellationFollowUp, _$identity);

  /// Serializes this CancellationFollowUp to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancellationFollowUp&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.actions, actions)&&const DeepCollectionEquality().equals(other.alternatives, alternatives));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(actions),const DeepCollectionEquality().hash(alternatives));

@override
String toString() {
  return 'CancellationFollowUp(message: $message, actions: $actions, alternatives: $alternatives)';
}


}

/// @nodoc
abstract mixin class $CancellationFollowUpCopyWith<$Res>  {
  factory $CancellationFollowUpCopyWith(CancellationFollowUp value, $Res Function(CancellationFollowUp) _then) = _$CancellationFollowUpCopyWithImpl;
@useResult
$Res call({
 String message, List<String>? actions, List<BookingAlternative>? alternatives
});




}
/// @nodoc
class _$CancellationFollowUpCopyWithImpl<$Res>
    implements $CancellationFollowUpCopyWith<$Res> {
  _$CancellationFollowUpCopyWithImpl(this._self, this._then);

  final CancellationFollowUp _self;
  final $Res Function(CancellationFollowUp) _then;

/// Create a copy of CancellationFollowUp
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? actions = freezed,Object? alternatives = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,actions: freezed == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as List<String>?,alternatives: freezed == alternatives ? _self.alternatives : alternatives // ignore: cast_nullable_to_non_nullable
as List<BookingAlternative>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CancellationFollowUp].
extension CancellationFollowUpPatterns on CancellationFollowUp {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CancellationFollowUp value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CancellationFollowUp() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CancellationFollowUp value)  $default,){
final _that = this;
switch (_that) {
case _CancellationFollowUp():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CancellationFollowUp value)?  $default,){
final _that = this;
switch (_that) {
case _CancellationFollowUp() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  List<String>? actions,  List<BookingAlternative>? alternatives)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CancellationFollowUp() when $default != null:
return $default(_that.message,_that.actions,_that.alternatives);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  List<String>? actions,  List<BookingAlternative>? alternatives)  $default,) {final _that = this;
switch (_that) {
case _CancellationFollowUp():
return $default(_that.message,_that.actions,_that.alternatives);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  List<String>? actions,  List<BookingAlternative>? alternatives)?  $default,) {final _that = this;
switch (_that) {
case _CancellationFollowUp() when $default != null:
return $default(_that.message,_that.actions,_that.alternatives);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CancellationFollowUp implements CancellationFollowUp {
  const _CancellationFollowUp({required this.message, final  List<String>? actions, final  List<BookingAlternative>? alternatives}): _actions = actions,_alternatives = alternatives;
  factory _CancellationFollowUp.fromJson(Map<String, dynamic> json) => _$CancellationFollowUpFromJson(json);

@override final  String message;
 final  List<String>? _actions;
@override List<String>? get actions {
  final value = _actions;
  if (value == null) return null;
  if (_actions is EqualUnmodifiableListView) return _actions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<BookingAlternative>? _alternatives;
@override List<BookingAlternative>? get alternatives {
  final value = _alternatives;
  if (value == null) return null;
  if (_alternatives is EqualUnmodifiableListView) return _alternatives;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CancellationFollowUp
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CancellationFollowUpCopyWith<_CancellationFollowUp> get copyWith => __$CancellationFollowUpCopyWithImpl<_CancellationFollowUp>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CancellationFollowUpToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CancellationFollowUp&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._actions, _actions)&&const DeepCollectionEquality().equals(other._alternatives, _alternatives));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_actions),const DeepCollectionEquality().hash(_alternatives));

@override
String toString() {
  return 'CancellationFollowUp(message: $message, actions: $actions, alternatives: $alternatives)';
}


}

/// @nodoc
abstract mixin class _$CancellationFollowUpCopyWith<$Res> implements $CancellationFollowUpCopyWith<$Res> {
  factory _$CancellationFollowUpCopyWith(_CancellationFollowUp value, $Res Function(_CancellationFollowUp) _then) = __$CancellationFollowUpCopyWithImpl;
@override @useResult
$Res call({
 String message, List<String>? actions, List<BookingAlternative>? alternatives
});




}
/// @nodoc
class __$CancellationFollowUpCopyWithImpl<$Res>
    implements _$CancellationFollowUpCopyWith<$Res> {
  __$CancellationFollowUpCopyWithImpl(this._self, this._then);

  final _CancellationFollowUp _self;
  final $Res Function(_CancellationFollowUp) _then;

/// Create a copy of CancellationFollowUp
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? actions = freezed,Object? alternatives = freezed,}) {
  return _then(_CancellationFollowUp(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,actions: freezed == actions ? _self._actions : actions // ignore: cast_nullable_to_non_nullable
as List<String>?,alternatives: freezed == alternatives ? _self._alternatives : alternatives // ignore: cast_nullable_to_non_nullable
as List<BookingAlternative>?,
  ));
}


}


/// @nodoc
mixin _$ReminderConfig {

 List<StandardReminder> get standard; List<ContextualReminder>? get contextual;
/// Create a copy of ReminderConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReminderConfigCopyWith<ReminderConfig> get copyWith => _$ReminderConfigCopyWithImpl<ReminderConfig>(this as ReminderConfig, _$identity);

  /// Serializes this ReminderConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderConfig&&const DeepCollectionEquality().equals(other.standard, standard)&&const DeepCollectionEquality().equals(other.contextual, contextual));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(standard),const DeepCollectionEquality().hash(contextual));

@override
String toString() {
  return 'ReminderConfig(standard: $standard, contextual: $contextual)';
}


}

/// @nodoc
abstract mixin class $ReminderConfigCopyWith<$Res>  {
  factory $ReminderConfigCopyWith(ReminderConfig value, $Res Function(ReminderConfig) _then) = _$ReminderConfigCopyWithImpl;
@useResult
$Res call({
 List<StandardReminder> standard, List<ContextualReminder>? contextual
});




}
/// @nodoc
class _$ReminderConfigCopyWithImpl<$Res>
    implements $ReminderConfigCopyWith<$Res> {
  _$ReminderConfigCopyWithImpl(this._self, this._then);

  final ReminderConfig _self;
  final $Res Function(ReminderConfig) _then;

/// Create a copy of ReminderConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? standard = null,Object? contextual = freezed,}) {
  return _then(_self.copyWith(
standard: null == standard ? _self.standard : standard // ignore: cast_nullable_to_non_nullable
as List<StandardReminder>,contextual: freezed == contextual ? _self.contextual : contextual // ignore: cast_nullable_to_non_nullable
as List<ContextualReminder>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReminderConfig].
extension ReminderConfigPatterns on ReminderConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReminderConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReminderConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReminderConfig value)  $default,){
final _that = this;
switch (_that) {
case _ReminderConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReminderConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ReminderConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<StandardReminder> standard,  List<ContextualReminder>? contextual)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReminderConfig() when $default != null:
return $default(_that.standard,_that.contextual);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<StandardReminder> standard,  List<ContextualReminder>? contextual)  $default,) {final _that = this;
switch (_that) {
case _ReminderConfig():
return $default(_that.standard,_that.contextual);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<StandardReminder> standard,  List<ContextualReminder>? contextual)?  $default,) {final _that = this;
switch (_that) {
case _ReminderConfig() when $default != null:
return $default(_that.standard,_that.contextual);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReminderConfig implements ReminderConfig {
  const _ReminderConfig({required final  List<StandardReminder> standard, final  List<ContextualReminder>? contextual}): _standard = standard,_contextual = contextual;
  factory _ReminderConfig.fromJson(Map<String, dynamic> json) => _$ReminderConfigFromJson(json);

 final  List<StandardReminder> _standard;
@override List<StandardReminder> get standard {
  if (_standard is EqualUnmodifiableListView) return _standard;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_standard);
}

 final  List<ContextualReminder>? _contextual;
@override List<ContextualReminder>? get contextual {
  final value = _contextual;
  if (value == null) return null;
  if (_contextual is EqualUnmodifiableListView) return _contextual;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ReminderConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReminderConfigCopyWith<_ReminderConfig> get copyWith => __$ReminderConfigCopyWithImpl<_ReminderConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReminderConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReminderConfig&&const DeepCollectionEquality().equals(other._standard, _standard)&&const DeepCollectionEquality().equals(other._contextual, _contextual));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_standard),const DeepCollectionEquality().hash(_contextual));

@override
String toString() {
  return 'ReminderConfig(standard: $standard, contextual: $contextual)';
}


}

/// @nodoc
abstract mixin class _$ReminderConfigCopyWith<$Res> implements $ReminderConfigCopyWith<$Res> {
  factory _$ReminderConfigCopyWith(_ReminderConfig value, $Res Function(_ReminderConfig) _then) = __$ReminderConfigCopyWithImpl;
@override @useResult
$Res call({
 List<StandardReminder> standard, List<ContextualReminder>? contextual
});




}
/// @nodoc
class __$ReminderConfigCopyWithImpl<$Res>
    implements _$ReminderConfigCopyWith<$Res> {
  __$ReminderConfigCopyWithImpl(this._self, this._then);

  final _ReminderConfig _self;
  final $Res Function(_ReminderConfig) _then;

/// Create a copy of ReminderConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? standard = null,Object? contextual = freezed,}) {
  return _then(_ReminderConfig(
standard: null == standard ? _self._standard : standard // ignore: cast_nullable_to_non_nullable
as List<StandardReminder>,contextual: freezed == contextual ? _self._contextual : contextual // ignore: cast_nullable_to_non_nullable
as List<ContextualReminder>?,
  ));
}


}


/// @nodoc
mixin _$StandardReminder {

 ReminderTiming get when; String get message; String? get action;
/// Create a copy of StandardReminder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StandardReminderCopyWith<StandardReminder> get copyWith => _$StandardReminderCopyWithImpl<StandardReminder>(this as StandardReminder, _$identity);

  /// Serializes this StandardReminder to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StandardReminder&&(identical(other.when, when) || other.when == when)&&(identical(other.message, message) || other.message == message)&&(identical(other.action, action) || other.action == action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,when,message,action);

@override
String toString() {
  return 'StandardReminder(when: $when, message: $message, action: $action)';
}


}

/// @nodoc
abstract mixin class $StandardReminderCopyWith<$Res>  {
  factory $StandardReminderCopyWith(StandardReminder value, $Res Function(StandardReminder) _then) = _$StandardReminderCopyWithImpl;
@useResult
$Res call({
 ReminderTiming when, String message, String? action
});




}
/// @nodoc
class _$StandardReminderCopyWithImpl<$Res>
    implements $StandardReminderCopyWith<$Res> {
  _$StandardReminderCopyWithImpl(this._self, this._then);

  final StandardReminder _self;
  final $Res Function(StandardReminder) _then;

/// Create a copy of StandardReminder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? when = null,Object? message = null,Object? action = freezed,}) {
  return _then(_self.copyWith(
when: null == when ? _self.when : when // ignore: cast_nullable_to_non_nullable
as ReminderTiming,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StandardReminder].
extension StandardReminderPatterns on StandardReminder {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StandardReminder value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StandardReminder() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StandardReminder value)  $default,){
final _that = this;
switch (_that) {
case _StandardReminder():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StandardReminder value)?  $default,){
final _that = this;
switch (_that) {
case _StandardReminder() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReminderTiming when,  String message,  String? action)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StandardReminder() when $default != null:
return $default(_that.when,_that.message,_that.action);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReminderTiming when,  String message,  String? action)  $default,) {final _that = this;
switch (_that) {
case _StandardReminder():
return $default(_that.when,_that.message,_that.action);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReminderTiming when,  String message,  String? action)?  $default,) {final _that = this;
switch (_that) {
case _StandardReminder() when $default != null:
return $default(_that.when,_that.message,_that.action);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StandardReminder implements StandardReminder {
  const _StandardReminder({required this.when, required this.message, this.action});
  factory _StandardReminder.fromJson(Map<String, dynamic> json) => _$StandardReminderFromJson(json);

@override final  ReminderTiming when;
@override final  String message;
@override final  String? action;

/// Create a copy of StandardReminder
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StandardReminderCopyWith<_StandardReminder> get copyWith => __$StandardReminderCopyWithImpl<_StandardReminder>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StandardReminderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StandardReminder&&(identical(other.when, when) || other.when == when)&&(identical(other.message, message) || other.message == message)&&(identical(other.action, action) || other.action == action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,when,message,action);

@override
String toString() {
  return 'StandardReminder(when: $when, message: $message, action: $action)';
}


}

/// @nodoc
abstract mixin class _$StandardReminderCopyWith<$Res> implements $StandardReminderCopyWith<$Res> {
  factory _$StandardReminderCopyWith(_StandardReminder value, $Res Function(_StandardReminder) _then) = __$StandardReminderCopyWithImpl;
@override @useResult
$Res call({
 ReminderTiming when, String message, String? action
});




}
/// @nodoc
class __$StandardReminderCopyWithImpl<$Res>
    implements _$StandardReminderCopyWith<$Res> {
  __$StandardReminderCopyWithImpl(this._self, this._then);

  final _StandardReminder _self;
  final $Res Function(_StandardReminder) _then;

/// Create a copy of StandardReminder
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? when = null,Object? message = null,Object? action = freezed,}) {
  return _then(_StandardReminder(
when: null == when ? _self.when : when // ignore: cast_nullable_to_non_nullable
as ReminderTiming,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ContextualReminder {

 ReminderCondition get condition; ReminderTiming get timing; String get message;
/// Create a copy of ContextualReminder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContextualReminderCopyWith<ContextualReminder> get copyWith => _$ContextualReminderCopyWithImpl<ContextualReminder>(this as ContextualReminder, _$identity);

  /// Serializes this ContextualReminder to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContextualReminder&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.timing, timing) || other.timing == timing)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,condition,timing,message);

@override
String toString() {
  return 'ContextualReminder(condition: $condition, timing: $timing, message: $message)';
}


}

/// @nodoc
abstract mixin class $ContextualReminderCopyWith<$Res>  {
  factory $ContextualReminderCopyWith(ContextualReminder value, $Res Function(ContextualReminder) _then) = _$ContextualReminderCopyWithImpl;
@useResult
$Res call({
 ReminderCondition condition, ReminderTiming timing, String message
});




}
/// @nodoc
class _$ContextualReminderCopyWithImpl<$Res>
    implements $ContextualReminderCopyWith<$Res> {
  _$ContextualReminderCopyWithImpl(this._self, this._then);

  final ContextualReminder _self;
  final $Res Function(ContextualReminder) _then;

/// Create a copy of ContextualReminder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? condition = null,Object? timing = null,Object? message = null,}) {
  return _then(_self.copyWith(
condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ReminderCondition,timing: null == timing ? _self.timing : timing // ignore: cast_nullable_to_non_nullable
as ReminderTiming,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ContextualReminder].
extension ContextualReminderPatterns on ContextualReminder {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContextualReminder value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContextualReminder() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContextualReminder value)  $default,){
final _that = this;
switch (_that) {
case _ContextualReminder():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContextualReminder value)?  $default,){
final _that = this;
switch (_that) {
case _ContextualReminder() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReminderCondition condition,  ReminderTiming timing,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContextualReminder() when $default != null:
return $default(_that.condition,_that.timing,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReminderCondition condition,  ReminderTiming timing,  String message)  $default,) {final _that = this;
switch (_that) {
case _ContextualReminder():
return $default(_that.condition,_that.timing,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReminderCondition condition,  ReminderTiming timing,  String message)?  $default,) {final _that = this;
switch (_that) {
case _ContextualReminder() when $default != null:
return $default(_that.condition,_that.timing,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContextualReminder implements ContextualReminder {
  const _ContextualReminder({required this.condition, required this.timing, required this.message});
  factory _ContextualReminder.fromJson(Map<String, dynamic> json) => _$ContextualReminderFromJson(json);

@override final  ReminderCondition condition;
@override final  ReminderTiming timing;
@override final  String message;

/// Create a copy of ContextualReminder
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContextualReminderCopyWith<_ContextualReminder> get copyWith => __$ContextualReminderCopyWithImpl<_ContextualReminder>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContextualReminderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContextualReminder&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.timing, timing) || other.timing == timing)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,condition,timing,message);

@override
String toString() {
  return 'ContextualReminder(condition: $condition, timing: $timing, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ContextualReminderCopyWith<$Res> implements $ContextualReminderCopyWith<$Res> {
  factory _$ContextualReminderCopyWith(_ContextualReminder value, $Res Function(_ContextualReminder) _then) = __$ContextualReminderCopyWithImpl;
@override @useResult
$Res call({
 ReminderCondition condition, ReminderTiming timing, String message
});




}
/// @nodoc
class __$ContextualReminderCopyWithImpl<$Res>
    implements _$ContextualReminderCopyWith<$Res> {
  __$ContextualReminderCopyWithImpl(this._self, this._then);

  final _ContextualReminder _self;
  final $Res Function(_ContextualReminder) _then;

/// Create a copy of ContextualReminder
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? condition = null,Object? timing = null,Object? message = null,}) {
  return _then(_ContextualReminder(
condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ReminderCondition,timing: null == timing ? _self.timing : timing // ignore: cast_nullable_to_non_nullable
as ReminderTiming,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
