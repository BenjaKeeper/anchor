import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_models.freezed.dart';
part 'learning_models.g.dart';

// ============================================================================
// INPUT MODELS
// ============================================================================

/// User feedback for a completed activity
@freezed
abstract class UserActivityFeedback with _$UserActivityFeedback {
  const factory UserActivityFeedback({
    required int rating,
    required String feeling,
    String? comments,
  }) = _UserActivityFeedback;

  factory UserActivityFeedback.fromJson(Map<String, dynamic> json) =>
      _$UserActivityFeedbackFromJson(json);
}

/// Context details for a completed activity
@freezed
abstract class ActivityContext with _$ActivityContext {
  const factory ActivityContext({
    String? beforeEvent,
    String? travelStatus,
    int? daysSinceLastActivity,
    int? stressScoreBefore,
    bool? afterFlight,
    int? hoursAfterLanding,
    double? sleepLastNight,
    String? dayOfWeek,
    String? locationType, // hotel, home, studio
  }) = _ActivityContext;

  factory ActivityContext.fromJson(Map<String, dynamic> json) =>
      _$ActivityContextFromJson(json);
}

/// Records details of a completed activity
@freezed
abstract class ActivityCompletion with _$ActivityCompletion {
  const factory ActivityCompletion({
    required String activityId,
    required String type, // yoga, gym, meditation, etc.
    required String date, // ISO 8601 YYYY-MM-DD
    required String time, // HH:MM
    required int duration, // minutes
    required String location,
    String? provider,
    required ActivityContext context,
    required bool completed,
    UserActivityFeedback? userFeedback,
  }) = _ActivityCompletion;

  factory ActivityCompletion.fromJson(Map<String, dynamic> json) =>
      _$ActivityCompletionFromJson(json);
}

/// Health metrics measured before and after an activity
@freezed
abstract class HealthMetricsChange with _$HealthMetricsChange {
  const factory HealthMetricsChange({
    required double hrvBefore,
    required double hrvAfter,
    required String hrvChange, // e.g., "+17.8%"
    required int sleepQualityNight,
    required int sleepQualityAvg,
    required int restingHRNextDay,
    required int restingHRBaseline,
    required int stressScoreAfter,
    required int stressScoreDelta,
  }) = _HealthMetricsChange;

  factory HealthMetricsChange.fromJson(Map<String, dynamic> json) =>
      _$HealthMetricsChangeFromJson(json);
}

/// Measures health impact linked to an activity
@freezed
abstract class HealthImpact with _$HealthImpact {
  const factory HealthImpact({
    required String activityId,
    required HealthMetricsChange healthMetrics,
    required String timeframe, // e.g., "24h post-activity"
  }) = _HealthImpact;

  factory HealthImpact.fromJson(Map<String, dynamic> json) =>
      _$HealthImpactFromJson(json);
}

/// Captures reasons for skipped or cancelled activities
@freezed
abstract class SkipData with _$SkipData {
  const factory SkipData({
    required String activityId,
    required String type,
    required bool scheduled,
    required bool completed, // should be false
    required String cancellationReason,
    required ActivityContext context,
  }) = _SkipData;

  factory SkipData.fromJson(Map<String, dynamic> json) =>
      _$SkipDataFromJson(json);
}

// ============================================================================
// LEARNED PATTERNS & INSIGHTS
// ============================================================================

/// Aggregates stats for specific activity types
@freezed
abstract class ActivityEffectiveness with _$ActivityEffectiveness {
  const factory ActivityEffectiveness({
    required String activityType,
    required double completionRate,
    String? avgHRVImprovement,
    String? avgSleepImprovement,
    int? avgStressReduction,
    @Default([]) List<String> mostEffectiveContexts,
    @Default([]) List<String> leastEffectiveContexts,
    @Default([]) List<String> skipReasons,
    String? userSentiment, // positive, negative, neutral
    String? recommendation, // e.g., "STOP suggesting hotel gyms"
    required double confidence,
  }) = _ActivityEffectiveness;

  factory ActivityEffectiveness.fromJson(Map<String, dynamic> json) =>
      _$ActivityEffectivenessFromJson(json);
}

/// Represents a specific triggered stress pattern
@freezed
abstract class StressTrigger with _$StressTrigger {
  const factory StressTrigger({
    required String trigger,
    required double correlation,
    required int avgStressIncrease,
    required String confidence, // high, moderate, low
  }) = _StressTrigger;

  factory StressTrigger.fromJson(Map<String, dynamic> json) =>
      _$StressTriggerFromJson(json);
}

/// Represents a recovery pattern that works for the user
@freezed
abstract class RecoveryPattern with _$RecoveryPattern {
  const factory RecoveryPattern({
    required String pattern,
    required String effectiveness,
    required String frequency,
    required double successRate,
    required bool shouldPrioritize,
  }) = _RecoveryPattern;

  factory RecoveryPattern.fromJson(Map<String, dynamic> json) =>
      _$RecoveryPatternFromJson(json);
}

/// Helper model for burnout threshold info
@freezed
abstract class BurnoutThresholdInfo with _$BurnoutThresholdInfo {
  const factory BurnoutThresholdInfo({
    required int daysWithoutActivity,
    required double confidence,
    @Default([]) List<String> basedOnEvents,
  }) = _BurnoutThresholdInfo;

  factory BurnoutThresholdInfo.fromJson(Map<String, dynamic> json) =>
      _$BurnoutThresholdInfoFromJson(json);
}

/// Collection of identified personal patterns
@freezed
abstract class PersonalPatterns with _$PersonalPatterns {
  const factory PersonalPatterns({
    @Default([]) List<StressTrigger> stressTriggersIdentified,
    @Default([]) List<RecoveryPattern> recoveryPatterns,
    required BurnoutThresholdInfo burnoutThreshold,
  }) = _PersonalPatterns;

  factory PersonalPatterns.fromJson(Map<String, dynamic> json) =>
      _$PersonalPatternsFromJson(json);
}

/// A specific rule derived from learning
@freezed
abstract class RecommendationRule with _$RecommendationRule {
  const factory RecommendationRule({
    required String rule,
    required String reasoning,
    required String priority, // high, medium, low
  }) = _RecommendationRule;

  factory RecommendationRule.fromJson(Map<String, dynamic> json) =>
      _$RecommendationRuleFromJson(json);
}

/// Consolidated view of user preferences, triggers, and rules
@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String userId,
    required String profileLastUpdated,
    required int dataPointsAnalyzed,
    required String confidenceLevel,
    required Map<String, dynamic> preferences, // deeply nested JSON structure
    required Map<String, dynamic> effectiveness, // nested structure
    required PersonalPatterns
    triggers, // Mapped to 'triggers' in JSON example but reusing PersonalPatterns structure roughly
    @Default([]) List<RecommendationRule> recommendationRules,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}

/// Human-readable insight structure
@freezed
abstract class InsightItem with _$InsightItem {
  const factory InsightItem({
    required String activity, // or pattern name
    String? impact,
    String? skipRate, // for negative insights
    String? timesUsed,
    required String message,
    String? confidence, // for patterns
    String? actionable, // for patterns
  }) = _InsightItem;

  factory InsightItem.fromJson(Map<String, dynamic> json) =>
      _$InsightItemFromJson(json);
}

@freezed
abstract class MonthlyInsightsSummary with _$MonthlyInsightsSummary {
  const factory MonthlyInsightsSummary({
    required int activitiesCompleted,
    required String avgHRVBoost,
    required String stressPrevented,
  }) = _MonthlyInsightsSummary;

  factory MonthlyInsightsSummary.fromJson(Map<String, dynamic> json) =>
      _$MonthlyInsightsSummaryFromJson(json);
}

@freezed
abstract class MonthlyInsights with _$MonthlyInsights {
  const factory MonthlyInsights({
    required String period,
    required MonthlyInsightsSummary summary,
    @Default([]) List<InsightItem> whatWorksForYou,
    @Default([]) List<InsightItem> whatDoesntWork,
    @Default([]) List<InsightItem> patternsDiscovered,
  }) = _MonthlyInsights;

  factory MonthlyInsights.fromJson(Map<String, dynamic> json) =>
      _$MonthlyInsightsFromJson(json);
}
