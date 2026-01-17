import 'package:freezed_annotation/freezed_annotation.dart';

part 'wellness_models.freezed.dart';
part 'wellness_models.g.dart';

/// Type of wellness activity
enum WellnessType {
  yoga,
  meditation,
  spa,
  gym,
  running,
  swimming,
  other;

  String get displayName {
    switch (this) {
      case WellnessType.yoga:
        return 'Yoga';
      case WellnessType.meditation:
        return 'Meditation';
      case WellnessType.spa:
        return 'Spa & Recovery';
      case WellnessType.gym:
        return 'Gym';
      case WellnessType.running:
        return 'Running';
      case WellnessType.swimming:
        return 'Swimming';
      case WellnessType.other:
        return 'Wellness';
    }
  }
}

/// A specific wellness option (gym, studio, etc.)
@freezed
abstract class WellnessOption with _$WellnessOption {
  const factory WellnessOption({
    required String id,
    required String name,
    required WellnessType type,
    required String time,
    required String distance,
    required String price,
    required String whyRecommended,
    required String address,
    required double rating,
    String? imageUrl,
    String? bookingUrl,
  }) = _WellnessOption;

  factory WellnessOption.fromJson(Map<String, dynamic> json) =>
      _$WellnessOptionFromJson(json);
}

/// A time window available for wellness activities
@freezed
abstract class WellnessWindow with _$WellnessWindow {
  const factory WellnessWindow({
    required DateTime date,
    required DateTime startTime,
    required DateTime endTime,
    required String location,
    required Duration duration,
    @Default(false) bool isBlocked,
  }) = _WellnessWindow;

  factory WellnessWindow.fromJson(Map<String, dynamic> json) =>
      _$WellnessWindowFromJson(json);
}

/// Request to book a wellness activity
@freezed
abstract class BookingRequest with _$BookingRequest {
  const factory BookingRequest({
    required String optionId,
    required String userId,
    required DateTime selectedTime,
    String? notes,
  }) = _BookingRequest;

  factory BookingRequest.fromJson(Map<String, dynamic> json) =>
      _$BookingRequestFromJson(json);
}

/// Confirmation of a booking
@freezed
abstract class BookingConfirmation with _$BookingConfirmation {
  const factory BookingConfirmation({
    required bool success,
    required String confirmationCode,
    String? calendarEventId,
    String? errorMessage,
    required DateTime timestamp,
  }) = _BookingConfirmation;

  factory BookingConfirmation.fromJson(Map<String, dynamic> json) =>
      _$BookingConfirmationFromJson(json);
}
