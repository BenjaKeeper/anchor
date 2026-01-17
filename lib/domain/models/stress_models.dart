import 'package:freezed_annotation/freezed_annotation.dart';

part 'stress_models.freezed.dart';
part 'stress_models.g.dart';

// ============================================================================
// ENUMS
// ============================================================================

/// Burnout risk classification levels
enum BurnoutRisk {
  low,
  moderate,
  high,
  critical;

  String get displayName {
    switch (this) {
      case BurnoutRisk.low:
        return 'Low';
      case BurnoutRisk.moderate:
        return 'Moderate';
      case BurnoutRisk.high:
        return 'High';
      case BurnoutRisk.critical:
        return 'Critical';
    }
  }
}

/// Intervention urgency levels
enum InterventionUrgency {
  low,
  moderate,
  high,
  critical;

  String get displayName {
    switch (this) {
      case InterventionUrgency.low:
        return 'Low';
      case InterventionUrgency.moderate:
        return 'Moderate';
      case InterventionUrgency.high:
        return 'High';
      case InterventionUrgency.critical:
        return 'Critical';
    }
  }
}

/// Trend direction for health metrics
enum StressTrend {
  declining,
  stable,
  improving;

  String get displayName {
    switch (this) {
      case StressTrend.declining:
        return 'Declining';
      case StressTrend.stable:
        return 'Stable';
      case StressTrend.improving:
        return 'Improving';
    }
  }
}

/// Sleep quality classification
enum SleepQuality {
  poor,
  fair,
  good,
  excellent;

  String get displayName {
    switch (this) {
      case SleepQuality.poor:
        return 'Poor';
      case SleepQuality.fair:
        return 'Fair';
      case SleepQuality.good:
        return 'Good';
      case SleepQuality.excellent:
        return 'Excellent';
    }
  }
}

// ============================================================================
// INPUT MODELS
// ============================================================================

/// Calendar event data
@freezed
abstract class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent({
    required String title,
    required DateTime start,
    required DateTime end,
    String? location,
    String? timezone,
  }) = _CalendarEvent;

  factory CalendarEvent.fromJson(Map<String, dynamic> json) =>
      _$CalendarEventFromJson(json);
}

/// Calendar data input for stress analysis
@freezed
abstract class CalendarData with _$CalendarData {
  const factory CalendarData({
    @Default([]) List<CalendarEvent> events,
    @Default(0) int travelDays,
    @Default(0) int consecutiveTravelDays,
    @Default(0) int timezoneChanges,
    @Default(0.0) double meetingDensity,
    @Default(0) int freeWindowsAvailable,
  }) = _CalendarData;

  factory CalendarData.fromJson(Map<String, dynamic> json) =>
      _$CalendarDataFromJson(json);
}

/// Heart Rate Variability data
@freezed
abstract class HrvData with _$HrvData {
  const factory HrvData({
    required double current,
    required double baseline,
    required StressTrend trend,
    required double changePercent,
  }) = _HrvData;

  factory HrvData.fromJson(Map<String, dynamic> json) =>
      _$HrvDataFromJson(json);
}

/// Sleep data metrics
@freezed
abstract class SleepData with _$SleepData {
  const factory SleepData({
    required double hoursLastNight,
    required double averageLast7Days,
    required double debtHours,
    required SleepQuality quality,
  }) = _SleepData;

  factory SleepData.fromJson(Map<String, dynamic> json) =>
      _$SleepDataFromJson(json);
}

/// Resting heart rate data
@freezed
abstract class RestingHrData with _$RestingHrData {
  const factory RestingHrData({
    required int current,
    required int baseline,
    required bool elevated,
  }) = _RestingHrData;

  factory RestingHrData.fromJson(Map<String, dynamic> json) =>
      _$RestingHrDataFromJson(json);
}

/// Activity gap data
@freezed
abstract class ActivityGapData with _$ActivityGapData {
  const factory ActivityGapData({
    required int daysSinceLastWorkout,
    required String typicalFrequency,
  }) = _ActivityGapData;

  factory ActivityGapData.fromJson(Map<String, dynamic> json) =>
      _$ActivityGapDataFromJson(json);
}

/// Complete health data input
@freezed
abstract class HealthData with _$HealthData {
  const factory HealthData({
    required HrvData hrv,
    required SleepData sleep,
    required RestingHrData restingHR,
    required ActivityGapData activityGap,
  }) = _HealthData;

  factory HealthData.fromJson(Map<String, dynamic> json) =>
      _$HealthDataFromJson(json);
}

/// User's baseline thresholds and patterns
@freezed
abstract class UserBaseline with _$UserBaseline {
  const factory UserBaseline({
    required int burnoutThreshold,
    @Default([]) List<String> stressTriggersIdentified,
  }) = _UserBaseline;

  factory UserBaseline.fromJson(Map<String, dynamic> json) =>
      _$UserBaselineFromJson(json);
}

/// Recent pattern data
@freezed
abstract class RecentPattern with _$RecentPattern {
  const factory RecentPattern({
    required DateTime lastWellnessActivity,
    required StressTrend stressLevel7DayTrend,
  }) = _RecentPattern;

  factory RecentPattern.fromJson(Map<String, dynamic> json) =>
      _$RecentPatternFromJson(json);
}

/// Historical context input
@freezed
abstract class HistoricalContext with _$HistoricalContext {
  const factory HistoricalContext({
    required UserBaseline userBaseline,
    required RecentPattern recentPattern,
  }) = _HistoricalContext;

  factory HistoricalContext.fromJson(Map<String, dynamic> json) =>
      _$HistoricalContextFromJson(json);
}

// ============================================================================
// OUTPUT MODELS
// ============================================================================

/// Trigger analysis breakdown
@freezed
abstract class TriggerAnalysis with _$TriggerAnalysis {
  const factory TriggerAnalysis({
    required String primary,
    required String secondary,
    required String contextual,
  }) = _TriggerAnalysis;

  factory TriggerAnalysis.fromJson(Map<String, dynamic> json) =>
      _$TriggerAnalysisFromJson(json);
}

/// Intervention recommendation output
@freezed
abstract class InterventionRecommendation with _$InterventionRecommendation {
  const factory InterventionRecommendation({
    required InterventionUrgency urgency,
    required String timing,
    required String reasoning,
    @Default([]) List<String> suggestedActions,
  }) = _InterventionRecommendation;

  factory InterventionRecommendation.fromJson(Map<String, dynamic> json) =>
      _$InterventionRecommendationFromJson(json);
}

/// Conversational context for AI messaging
@freezed
abstract class ConversationalContext with _$ConversationalContext {
  const factory ConversationalContext({
    required String tone,
    required String messageSuggestion,
  }) = _ConversationalContext;

  factory ConversationalContext.fromJson(Map<String, dynamic> json) =>
      _$ConversationalContextFromJson(json);
}

/// Complete stress detection result
@freezed
abstract class StressDetectionResult with _$StressDetectionResult {
  const factory StressDetectionResult({
    required int stressScore,
    required BurnoutRisk burnoutRisk,
    required double confidence,
    @Default([]) List<String> keySignals,
    required TriggerAnalysis triggerAnalysis,
    required InterventionRecommendation interventionRecommendation,
    required ConversationalContext conversationalContext,
  }) = _StressDetectionResult;

  factory StressDetectionResult.fromJson(Map<String, dynamic> json) =>
      _$StressDetectionResultFromJson(json);
}

/// Intermediate stress score result with component breakdowns
@freezed
abstract class StressScoreResult with _$StressScoreResult {
  const factory StressScoreResult({
    required double totalScore,
    required double calendarScore,
    required double healthScore,
    required double contextScore,
    @Default([]) List<String> contributingFactors,
  }) = _StressScoreResult;

  factory StressScoreResult.fromJson(Map<String, dynamic> json) =>
      _$StressScoreResultFromJson(json);
}

/// Burnout prediction result
@freezed
abstract class BurnoutPrediction with _$BurnoutPrediction {
  const factory BurnoutPrediction({
    required BurnoutRisk risk,
    required double confidence,
    required int daysUntilThreshold,
    required String explanation,
  }) = _BurnoutPrediction;

  factory BurnoutPrediction.fromJson(Map<String, dynamic> json) =>
      _$BurnoutPredictionFromJson(json);
}
