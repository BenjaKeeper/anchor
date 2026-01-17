// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proactive_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProactiveInsight _$ProactiveInsightFromJson(Map<String, dynamic> json) =>
    _ProactiveInsight(
      id: json['id'] as String,
      trigger: $enumDecode(_$InsightTriggerEnumMap, json['trigger']),
      priority: $enumDecode(_$InsightPriorityEnumMap, json['priority']),
      title: json['title'] as String,
      message: json['message'] as String,
      generatedAt: DateTime.parse(json['generatedAt'] as String),
      suggestedActions:
          (json['suggestedActions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      wellnessOptions:
          (json['wellnessOptions'] as List<dynamic>?)
              ?.map((e) => WellnessOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      dismissed: json['dismissed'] as bool? ?? false,
      actedUpon: json['actedUpon'] as bool? ?? false,
    );

Map<String, dynamic> _$ProactiveInsightToJson(_ProactiveInsight instance) =>
    <String, dynamic>{
      'id': instance.id,
      'trigger': _$InsightTriggerEnumMap[instance.trigger]!,
      'priority': _$InsightPriorityEnumMap[instance.priority]!,
      'title': instance.title,
      'message': instance.message,
      'generatedAt': instance.generatedAt.toIso8601String(),
      'suggestedActions': instance.suggestedActions,
      'wellnessOptions': instance.wellnessOptions,
      'dismissed': instance.dismissed,
      'actedUpon': instance.actedUpon,
    };

const _$InsightTriggerEnumMap = {
  InsightTrigger.stressTrendingUp: 'stressTrendingUp',
  InsightTrigger.activityGap: 'activityGap',
  InsightTrigger.newCityTravel: 'newCityTravel',
  InsightTrigger.recoveryOpportunity: 'recoveryOpportunity',
  InsightTrigger.bookingReminder: 'bookingReminder',
};

const _$InsightPriorityEnumMap = {
  InsightPriority.low: 'low',
  InsightPriority.medium: 'medium',
  InsightPriority.high: 'high',
  InsightPriority.critical: 'critical',
};

_AnchorContext _$AnchorContextFromJson(Map<String, dynamic> json) =>
    _AnchorContext(
      stressAnalysis: json['stressAnalysis'] == null
          ? null
          : StressDetectionResult.fromJson(
              json['stressAnalysis'] as Map<String, dynamic>,
            ),
      upcomingSchedule: json['upcomingSchedule'] == null
          ? null
          : CalendarData.fromJson(
              json['upcomingSchedule'] as Map<String, dynamic>,
            ),
      wellnessOptions:
          (json['wellnessOptions'] as List<dynamic>?)
              ?.map((e) => WellnessOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      userPatterns: json['userPatterns'] == null
          ? null
          : HistoricalContext.fromJson(
              json['userPatterns'] as Map<String, dynamic>,
            ),
      userLocation: json['userLocation'] as String,
      recentMoods:
          (json['recentMoods'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AnchorContextToJson(_AnchorContext instance) =>
    <String, dynamic>{
      'stressAnalysis': instance.stressAnalysis,
      'upcomingSchedule': instance.upcomingSchedule,
      'wellnessOptions': instance.wellnessOptions,
      'userPatterns': instance.userPatterns,
      'userLocation': instance.userLocation,
      'recentMoods': instance.recentMoods,
    };
