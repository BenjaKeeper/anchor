// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wellness_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WellnessOption _$WellnessOptionFromJson(Map<String, dynamic> json) =>
    _WellnessOption(
      id: json['id'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$WellnessTypeEnumMap, json['type']),
      time: json['time'] as String,
      distance: json['distance'] as String,
      price: json['price'] as String,
      whyRecommended: json['whyRecommended'] as String,
      address: json['address'] as String,
      rating: (json['rating'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String?,
      bookingUrl: json['bookingUrl'] as String?,
    );

Map<String, dynamic> _$WellnessOptionToJson(_WellnessOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$WellnessTypeEnumMap[instance.type]!,
      'time': instance.time,
      'distance': instance.distance,
      'price': instance.price,
      'whyRecommended': instance.whyRecommended,
      'address': instance.address,
      'rating': instance.rating,
      'imageUrl': instance.imageUrl,
      'bookingUrl': instance.bookingUrl,
    };

const _$WellnessTypeEnumMap = {
  WellnessType.yoga: 'yoga',
  WellnessType.meditation: 'meditation',
  WellnessType.spa: 'spa',
  WellnessType.gym: 'gym',
  WellnessType.running: 'running',
  WellnessType.swimming: 'swimming',
  WellnessType.other: 'other',
};

_WellnessWindow _$WellnessWindowFromJson(Map<String, dynamic> json) =>
    _WellnessWindow(
      date: DateTime.parse(json['date'] as String),
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      location: json['location'] as String,
      duration: Duration(microseconds: (json['duration'] as num).toInt()),
      isBlocked: json['isBlocked'] as bool? ?? false,
    );

Map<String, dynamic> _$WellnessWindowToJson(_WellnessWindow instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'location': instance.location,
      'duration': instance.duration.inMicroseconds,
      'isBlocked': instance.isBlocked,
    };

_BookingRequest _$BookingRequestFromJson(Map<String, dynamic> json) =>
    _BookingRequest(
      optionId: json['optionId'] as String,
      userId: json['userId'] as String,
      selectedTime: DateTime.parse(json['selectedTime'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$BookingRequestToJson(_BookingRequest instance) =>
    <String, dynamic>{
      'optionId': instance.optionId,
      'userId': instance.userId,
      'selectedTime': instance.selectedTime.toIso8601String(),
      'notes': instance.notes,
    };

_BookingConfirmation _$BookingConfirmationFromJson(Map<String, dynamic> json) =>
    _BookingConfirmation(
      success: json['success'] as bool,
      confirmationCode: json['confirmationCode'] as String,
      calendarEventId: json['calendarEventId'] as String?,
      errorMessage: json['errorMessage'] as String?,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$BookingConfirmationToJson(
  _BookingConfirmation instance,
) => <String, dynamic>{
  'success': instance.success,
  'confirmationCode': instance.confirmationCode,
  'calendarEventId': instance.calendarEventId,
  'errorMessage': instance.errorMessage,
  'timestamp': instance.timestamp.toIso8601String(),
};
