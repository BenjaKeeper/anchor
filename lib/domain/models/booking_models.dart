import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_models.freezed.dart';
part 'booking_models.g.dart';

// ============================================================================
// BOOKING REQUEST & CONTEXT MODELS
// ============================================================================

/// Complete booking request with all context
@freezed
abstract class AnchorBookingRequest with _$AnchorBookingRequest {
  const factory AnchorBookingRequest({
    required String userId,
    required String activityId,
    required BookingVenue venue,
    required BookingActivity activity,
    required BookingPricing pricing,
    required UserContext userContext,
    required BookingPreferences preferences,
  }) = _AnchorBookingRequest;

  factory AnchorBookingRequest.fromJson(Map<String, dynamic> json) =>
      _$AnchorBookingRequestFromJson(json);
}

/// Venue information
@freezed
abstract class BookingVenue with _$BookingVenue {
  const factory BookingVenue({
    required String id,
    required String name,
    required String address,
    required String phone,
    double? latitude,
    double? longitude,
    String? website,
    Map<String, String>? amenities,
  }) = _BookingVenue;

  factory BookingVenue.fromJson(Map<String, dynamic> json) =>
      _$BookingVenueFromJson(json);
}

/// Activity details
@freezed
abstract class BookingActivity with _$BookingActivity {
  const factory BookingActivity({
    required ActivityType type,
    required String name,
    required DateTime date,
    required DateTime time,
    required int duration, // minutes
    required String instructor,
    required String level,
    String? description,
    List<String>? equipment,
    String? imageUrl,
  }) = _BookingActivity;

  factory BookingActivity.fromJson(Map<String, dynamic> json) =>
      _$BookingActivityFromJson(json);
}

/// Pricing and provider information
@freezed
abstract class BookingPricing with _$BookingPricing {
  const factory BookingPricing({
    required BookingProvider provider,
    required String cost,
    required String cancellationPolicy,
    String? refundPolicy,
    double? priceAmount,
    String? currency,
  }) = _BookingPricing;

  factory BookingPricing.fromJson(Map<String, dynamic> json) =>
      _$BookingPricingFromJson(json);
}

/// User context around the booking
@freezed
abstract class UserContext with _$UserContext {
  const factory UserContext({
    String? beforeEvent,
    String? afterEvent,
    TravelBuffer? travelBuffer,
    StressLevel? stressLevel,
    String? location,
    String? travelMode,
  }) = _UserContext;

  factory UserContext.fromJson(Map<String, dynamic> json) =>
      _$UserContextFromJson(json);
}

/// User preferences for booking
@freezed
abstract class BookingPreferences with _$BookingPreferences {
  const factory BookingPreferences({
    @Default(true) bool autoAddToCalendar,
    @Default(true) bool enableReminders,
    @Default(true) bool blockTravelTime,
    @Default(10) int arriveEarlyMinutes,
    String? preferredCalendar,
    List<ReminderTiming>? customReminders,
  }) = _BookingPreferences;

  factory BookingPreferences.fromJson(Map<String, dynamic> json) =>
      _$BookingPreferencesFromJson(json);
}

// ============================================================================
// CALENDAR INTEGRATION MODELS
// ============================================================================

/// Calendar integration configuration
@freezed
abstract class CalendarIntegration with _$CalendarIntegration {
  const factory CalendarIntegration({
    required CalendarProvider provider,
    required String accessToken,
    required String primaryCalendar,
    required List<CalendarInfo> calendars,
    Map<String, String>? settings,
  }) = _CalendarIntegration;

  factory CalendarIntegration.fromJson(Map<String, dynamic> json) =>
      _$CalendarIntegrationFromJson(json);
}

/// Individual calendar information
@freezed
abstract class CalendarInfo with _$CalendarInfo {
  const factory CalendarInfo({
    required String id,
    required String name,
    @Default(false) bool isDefault,
    String? description,
    String? colorId,
    bool? isWritable,
  }) = _CalendarInfo;

  factory CalendarInfo.fromJson(Map<String, dynamic> json) =>
      _$CalendarInfoFromJson(json);
}

/// Calendar event for wellness activities
@freezed
abstract class WellnessCalendarEvent with _$WellnessCalendarEvent {
  const factory WellnessCalendarEvent({
    required String title,
    required DateTime start,
    required DateTime end,
    required String location,
    required String description,
    String? eventId,
    List<CalendarAttendee>? attendees,
    CalendarReminders? reminders,
    String? colorId,
    EventTransparency? transparency,
    Map<String, String>? extendedProperties,
  }) = _WellnessCalendarEvent;

  factory WellnessCalendarEvent.fromJson(Map<String, dynamic> json) =>
      _$WellnessCalendarEventFromJson(json);
}

/// Calendar attendee
@freezed
abstract class CalendarAttendee with _$CalendarAttendee {
  const factory CalendarAttendee({
    required String email,
    String? displayName,
    @Default(ResponseStatus.accepted) ResponseStatus responseStatus,
  }) = _CalendarAttendee;

  factory CalendarAttendee.fromJson(Map<String, dynamic> json) =>
      _$CalendarAttendeeFromJson(json);
}

/// Calendar reminders configuration
@freezed
abstract class CalendarReminders with _$CalendarReminders {
  const factory CalendarReminders({
    @Default(false) bool useDefault,
    List<ReminderOverride>? overrides,
  }) = _CalendarReminders;

  factory CalendarReminders.fromJson(Map<String, dynamic> json) =>
      _$CalendarRemindersFromJson(json);
}

/// Individual reminder override
@freezed
abstract class ReminderOverride with _$ReminderOverride {
  const factory ReminderOverride({
    required ReminderMethod method,
    required int minutes,
    String? customMessage,
  }) = _ReminderOverride;

  factory ReminderOverride.fromJson(Map<String, dynamic> json) =>
      _$ReminderOverrideFromJson(json);
}

// ============================================================================
// BOOKING VALIDATION & EXECUTION MODELS
// ============================================================================

/// Pre-booking validation result
@freezed
abstract class BookingValidation with _$BookingValidation {
  const factory BookingValidation({
    required AvailabilityCheck availability,
    required CalendarConflictCheck calendarConflict,
    required RequirementCheck requirements,
    required ValidationRecommendation recommendation,
    List<ValidationIssue>? issues,
    TravelTimeAnalysis? travelTime,
  }) = _BookingValidation;

  factory BookingValidation.fromJson(Map<String, dynamic> json) =>
      _$BookingValidationFromJson(json);
}

/// Availability check result
@freezed
abstract class AvailabilityCheck with _$AvailabilityCheck {
  const factory AvailabilityCheck({
    required AvailabilityStatus status,
    int? spotsLeft,
    required DateTime timestamp,
    String? waitlistAvailable,
  }) = _AvailabilityCheck;

  factory AvailabilityCheck.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityCheckFromJson(json);
}

/// Calendar conflict check
@freezed
abstract class CalendarConflictCheck with _$CalendarConflictCheck {
  const factory CalendarConflictCheck({
    @Default(false) bool hasConflict,
    List<CalendarConflict>? conflicts,
    TravelTimeAnalysis? travelTime,
  }) = _CalendarConflictCheck;

  factory CalendarConflictCheck.fromJson(Map<String, dynamic> json) =>
      _$CalendarConflictCheckFromJson(json);
}

/// Individual calendar conflict
@freezed
abstract class CalendarConflict with _$CalendarConflict {
  const factory CalendarConflict({
    required String eventTitle,
    required DateTime eventStart,
    required DateTime eventEnd,
    ConflictSeverity? severity,
    String? resolution,
  }) = _CalendarConflict;

  factory CalendarConflict.fromJson(Map<String, dynamic> json) =>
      _$CalendarConflictFromJson(json);
}

/// Travel time analysis
@freezed
abstract class TravelTimeAnalysis with _$TravelTimeAnalysis {
  const factory TravelTimeAnalysis({
    TravelLeg? before,
    TravelLeg? after,
    @Default(true) bool isEnoughTime,
    String? suggestions,
  }) = _TravelTimeAnalysis;

  factory TravelTimeAnalysis.fromJson(Map<String, dynamic> json) =>
      _$TravelTimeAnalysisFromJson(json);
}

/// Travel leg information
@freezed
abstract class TravelLeg with _$TravelLeg {
  const factory TravelLeg({
    String? from,
    String? to,
    required int duration, // minutes
    required TravelMethod method,
    String? route,
  }) = _TravelLeg;

  factory TravelLeg.fromJson(Map<String, dynamic> json) =>
      _$TravelLegFromJson(json);
}

/// Requirements check
@freezed
abstract class RequirementCheck with _$RequirementCheck {
  const factory RequirementCheck({
    @Default(false) bool needsAccount,
    @Default(false) bool needsPayment,
    @Default(false) bool needsWaiver,
    @Default(true) bool allMet,
    List<String>? missingRequirements,
  }) = _RequirementCheck;

  factory RequirementCheck.fromJson(Map<String, dynamic> json) =>
      _$RequirementCheckFromJson(json);
}

/// Validation issue
@freezed
abstract class ValidationIssue with _$ValidationIssue {
  const factory ValidationIssue({
    required ValidationIssueType type,
    required String message,
    IssueSeverity? severity,
    String? solution,
  }) = _ValidationIssue;

  factory ValidationIssue.fromJson(Map<String, dynamic> json) =>
      _$ValidationIssueFromJson(json);
}

// ============================================================================
// BOOKING EXECUTION MODELS
// ============================================================================

/// Booking execution result
@freezed
abstract class BookingExecution with _$BookingExecution {
  const factory BookingExecution({
    required List<BookingStep> steps,
    required ExecutionStatus overallStatus,
    required DateTime completedAt,
    String? failureReason,
    BookingResult? result,
  }) = _BookingExecution;

  factory BookingExecution.fromJson(Map<String, dynamic> json) =>
      _$BookingExecutionFromJson(json);
}

/// Individual booking step
@freezed
abstract class BookingStep with _$BookingStep {
  const factory BookingStep({
    required int step,
    required String action,
    required StepStatus status,
    String? confirmationNumber,
    String? errorMessage,
    Map<String, dynamic>? metadata,
  }) = _BookingStep;

  factory BookingStep.fromJson(Map<String, dynamic> json) =>
      _$BookingStepFromJson(json);
}

/// Complete booking result
@freezed
abstract class BookingResult with _$BookingResult {
  const factory BookingResult({
    required ExecutionStatus status,
    required String bookingId,
    String? confirmationNumber,
    BookingVenue? venue,
    BookingActivity? activity,
    CalendarEventResult? calendar,
    BookingPricing? pricing,
    BookingInstructions? instructions,
    TravelInstructions? directions,
    List<String>? nextSteps,
    String? anchorNote,
    BookingAnalytics? analytics,
  }) = _BookingResult;

  factory BookingResult.fromJson(Map<String, dynamic> json) =>
      _$BookingResultFromJson(json);
}

/// Calendar event result
@freezed
abstract class CalendarEventResult with _$CalendarEventResult {
  const factory CalendarEventResult({
    @Default(false) bool added,
    String? calendarName,
    String? eventId,
    @Default(false) bool includesTravelTime,
    @Default(0) int remindersSet,
    List<WellnessCalendarEvent>? events,
  }) = _CalendarEventResult;

  factory CalendarEventResult.fromJson(Map<String, dynamic> json) =>
      _$CalendarEventResultFromJson(json);
}

/// Booking instructions
@freezed
abstract class BookingInstructions with _$BookingInstructions {
  const factory BookingInstructions({
    List<String>? provided,
    List<String>? bring,
    int? arriveEarly,
    String? parkingInfo,
    String? checkInInfo,
  }) = _BookingInstructions;

  factory BookingInstructions.fromJson(Map<String, dynamic> json) =>
      _$BookingInstructionsFromJson(json);
}

/// Travel instructions
@freezed
abstract class TravelInstructions with _$TravelInstructions {
  const factory TravelInstructions({
    String? from,
    String? distance,
    int? walkTime,
    String? mapUrl,
    List<String>? directions,
  }) = _TravelInstructions;

  factory TravelInstructions.fromJson(Map<String, dynamic> json) =>
      _$TravelInstructionsFromJson(json);
}

/// Booking analytics
@freezed
abstract class BookingAnalytics with _$BookingAnalytics {
  const factory BookingAnalytics({
    required DateTime bookingTime,
    required String activityType,
    String? venue,
    String? city,
    int? advanceBookingHours,
    BookingSource? source,
    Map<String, dynamic>? customData,
  }) = _BookingAnalytics;

  factory BookingAnalytics.fromJson(Map<String, dynamic> json) =>
      _$BookingAnalyticsFromJson(json);
}

// ============================================================================
// ERROR HANDLING MODELS
// ============================================================================

/// Booking error with alternatives
@freezed
abstract class BookingError with _$BookingError {
  const factory BookingError({
    required BookingErrorType errorType,
    required String userMessage,
    String? technicalMessage,
    List<BookingAlternative>? alternatives,
    List<ErrorAction>? actions,
    bool? canRetry,
  }) = _BookingError;

  factory BookingError.fromJson(Map<String, dynamic> json) =>
      _$BookingErrorFromJson(json);
}

/// Booking alternative
@freezed
abstract class BookingAlternative with _$BookingAlternative {
  const factory BookingAlternative({
    required String venue,
    required String activityName,
    required DateTime time,
    int? spots,
    String? note,
    double? distance,
  }) = _BookingAlternative;

  factory BookingAlternative.fromJson(Map<String, dynamic> json) =>
      _$BookingAlternativeFromJson(json);
}

/// Error action
@freezed
abstract class ErrorAction with _$ErrorAction {
  const factory ErrorAction({
    required String label,
    required String action,
    bool? enabled,
    Map<String, dynamic>? params,
  }) = _ErrorAction;

  factory ErrorAction.fromJson(Map<String, dynamic> json) =>
      _$ErrorActionFromJson(json);
}

// ============================================================================
// CANCELLATION & RESCHEDULING MODELS
// ============================================================================

/// Cancellation request
@freezed
abstract class CancellationRequest with _$CancellationRequest {
  const factory CancellationRequest({
    required String bookingId,
    required String userId,
    required CancellationReason reason,
    String? note,
  }) = _CancellationRequest;

  factory CancellationRequest.fromJson(Map<String, dynamic> json) =>
      _$CancellationRequestFromJson(json);
}

/// Cancellation result
@freezed
abstract class CancellationResult with _$CancellationResult {
  const factory CancellationResult({
    required bool success,
    required String message,
    bool? penaltyFree,
    bool? creditRefunded,
    String? refundAmount,
    CancellationFollowUp? followUp,
  }) = _CancellationResult;

  factory CancellationResult.fromJson(Map<String, dynamic> json) =>
      _$CancellationResultFromJson(json);
}

/// Cancellation follow-up
@freezed
abstract class CancellationFollowUp with _$CancellationFollowUp {
  const factory CancellationFollowUp({
    required String message,
    List<String>? actions,
    List<BookingAlternative>? alternatives,
  }) = _CancellationFollowUp;

  factory CancellationFollowUp.fromJson(Map<String, dynamic> json) =>
      _$CancellationFollowUpFromJson(json);
}

// ============================================================================
// REMINDER MODELS
// ============================================================================

/// Reminder configuration
@freezed
abstract class ReminderConfig with _$ReminderConfig {
  const factory ReminderConfig({
    required List<StandardReminder> standard,
    List<ContextualReminder>? contextual,
  }) = _ReminderConfig;

  factory ReminderConfig.fromJson(Map<String, dynamic> json) =>
      _$ReminderConfigFromJson(json);
}

/// Standard reminder
@freezed
abstract class StandardReminder with _$StandardReminder {
  const factory StandardReminder({
    required ReminderTiming when,
    required String message,
    String? action,
  }) = _StandardReminder;

  factory StandardReminder.fromJson(Map<String, dynamic> json) =>
      _$StandardReminderFromJson(json);
}

/// Contextual reminder
@freezed
abstract class ContextualReminder with _$ContextualReminder {
  const factory ContextualReminder({
    required ReminderCondition condition,
    required ReminderTiming timing,
    required String message,
  }) = _ContextualReminder;

  factory ContextualReminder.fromJson(Map<String, dynamic> json) =>
      _$ContextualReminderFromJson(json);
}

// ============================================================================
// ENUMS
// ============================================================================

enum ActivityType {
  yoga,
  pilates,
  meditation,
  fitness,
  spa,
  massage,
  wellness,
  other;

  String get displayName {
    switch (this) {
      case ActivityType.yoga:
        return 'Yoga';
      case ActivityType.pilates:
        return 'Pilates';
      case ActivityType.meditation:
        return 'Meditation';
      case ActivityType.fitness:
        return 'Fitness';
      case ActivityType.spa:
        return 'Spa';
      case ActivityType.massage:
        return 'Massage';
      case ActivityType.wellness:
        return 'Wellness';
      case ActivityType.other:
        return 'Other';
    }
  }
}

enum BookingProvider {
  classpass,
  mindbody,
  direct,
  partner,
  other;

  String get displayName {
    switch (this) {
      case BookingProvider.classpass:
        return 'ClassPass';
      case BookingProvider.mindbody:
        return 'MindBody';
      case BookingProvider.direct:
        return 'Direct Booking';
      case BookingProvider.partner:
        return 'Partner';
      case BookingProvider.other:
        return 'Other';
    }
  }
}

enum TravelBuffer { none, minimal, standard, extended }

enum StressLevel { low, moderate, high, severe }

enum CalendarProvider { google, outlook, apple, other }

enum ResponseStatus { needsAction, declined, tentative, accepted }

enum EventTransparency { opaque, transparent }

enum ReminderMethod { popup, notification, email, sms }

enum ReminderTiming {
  twentyFourHours,
  twelveHours,
  twoHours,
  oneHour,
  thirtyMinutes,
  tenMinutes,
  custom;

  int get minutes {
    switch (this) {
      case ReminderTiming.twentyFourHours:
        return 1440;
      case ReminderTiming.twelveHours:
        return 720;
      case ReminderTiming.twoHours:
        return 120;
      case ReminderTiming.oneHour:
        return 60;
      case ReminderTiming.thirtyMinutes:
        return 30;
      case ReminderTiming.tenMinutes:
        return 10;
      case ReminderTiming.custom:
        return 0;
    }
  }
}

enum AvailabilityStatus { available, full, waitlist, cancelled, unknown }

enum ConflictSeverity { minor, moderate, severe }

enum ValidationRecommendation {
  safeToBook,
  checkConflicts,
  requiresAction,
  doNotBook,
}

enum ValidationIssueType { conflict, requirement, availability, other }

enum IssueSeverity { info, warning, error }

enum ExecutionStatus { success, partial, failed, pending }

enum StepStatus { pending, inProgress, success, failed }

enum TravelMethod { walk, bike, car, public, rideshare }

enum BookingErrorType {
  fullyBooked,
  calendarConflict,
  paymentRequired,
  accountRequired,
  networkError,
  serverError,
  validationError,
  other,
}

enum BookingSource { chat, discovery, recommendation, manual }

enum CancellationReason {
  userRequest,
  conflict,
  emergency,
  illness,
  travel,
  other,
}

enum ReminderCondition {
  firstTimeVenue,
  tightSchedule,
  travelDay,
  highStress,
  weatherDependent,
  other,
}
