// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stress_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CalendarEvent _$CalendarEventFromJson(Map<String, dynamic> json) =>
    _CalendarEvent(
      title: json['title'] as String,
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
      location: json['location'] as String?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$CalendarEventToJson(_CalendarEvent instance) =>
    <String, dynamic>{
      'title': instance.title,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'location': instance.location,
      'timezone': instance.timezone,
    };

_CalendarData _$CalendarDataFromJson(
  Map<String, dynamic> json,
) => _CalendarData(
  events:
      (json['events'] as List<dynamic>?)
          ?.map((e) => CalendarEvent.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  travelDays: (json['travelDays'] as num?)?.toInt() ?? 0,
  consecutiveTravelDays: (json['consecutiveTravelDays'] as num?)?.toInt() ?? 0,
  timezoneChanges: (json['timezoneChanges'] as num?)?.toInt() ?? 0,
  meetingDensity: (json['meetingDensity'] as num?)?.toDouble() ?? 0.0,
  freeWindowsAvailable: (json['freeWindowsAvailable'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$CalendarDataToJson(_CalendarData instance) =>
    <String, dynamic>{
      'events': instance.events,
      'travelDays': instance.travelDays,
      'consecutiveTravelDays': instance.consecutiveTravelDays,
      'timezoneChanges': instance.timezoneChanges,
      'meetingDensity': instance.meetingDensity,
      'freeWindowsAvailable': instance.freeWindowsAvailable,
    };

_HrvData _$HrvDataFromJson(Map<String, dynamic> json) => _HrvData(
  current: (json['current'] as num).toDouble(),
  baseline: (json['baseline'] as num).toDouble(),
  trend: $enumDecode(_$StressTrendEnumMap, json['trend']),
  changePercent: (json['changePercent'] as num).toDouble(),
);

Map<String, dynamic> _$HrvDataToJson(_HrvData instance) => <String, dynamic>{
  'current': instance.current,
  'baseline': instance.baseline,
  'trend': _$StressTrendEnumMap[instance.trend]!,
  'changePercent': instance.changePercent,
};

const _$StressTrendEnumMap = {
  StressTrend.declining: 'declining',
  StressTrend.stable: 'stable',
  StressTrend.improving: 'improving',
};

_SleepData _$SleepDataFromJson(Map<String, dynamic> json) => _SleepData(
  hoursLastNight: (json['hoursLastNight'] as num).toDouble(),
  averageLast7Days: (json['averageLast7Days'] as num).toDouble(),
  debtHours: (json['debtHours'] as num).toDouble(),
  quality: $enumDecode(_$SleepQualityEnumMap, json['quality']),
);

Map<String, dynamic> _$SleepDataToJson(_SleepData instance) =>
    <String, dynamic>{
      'hoursLastNight': instance.hoursLastNight,
      'averageLast7Days': instance.averageLast7Days,
      'debtHours': instance.debtHours,
      'quality': _$SleepQualityEnumMap[instance.quality]!,
    };

const _$SleepQualityEnumMap = {
  SleepQuality.poor: 'poor',
  SleepQuality.fair: 'fair',
  SleepQuality.good: 'good',
  SleepQuality.excellent: 'excellent',
};

_RestingHrData _$RestingHrDataFromJson(Map<String, dynamic> json) =>
    _RestingHrData(
      current: (json['current'] as num).toInt(),
      baseline: (json['baseline'] as num).toInt(),
      elevated: json['elevated'] as bool,
    );

Map<String, dynamic> _$RestingHrDataToJson(_RestingHrData instance) =>
    <String, dynamic>{
      'current': instance.current,
      'baseline': instance.baseline,
      'elevated': instance.elevated,
    };

_ActivityGapData _$ActivityGapDataFromJson(Map<String, dynamic> json) =>
    _ActivityGapData(
      daysSinceLastWorkout: (json['daysSinceLastWorkout'] as num).toInt(),
      typicalFrequency: json['typicalFrequency'] as String,
    );

Map<String, dynamic> _$ActivityGapDataToJson(_ActivityGapData instance) =>
    <String, dynamic>{
      'daysSinceLastWorkout': instance.daysSinceLastWorkout,
      'typicalFrequency': instance.typicalFrequency,
    };

_HealthData _$HealthDataFromJson(Map<String, dynamic> json) => _HealthData(
  hrv: HrvData.fromJson(json['hrv'] as Map<String, dynamic>),
  sleep: SleepData.fromJson(json['sleep'] as Map<String, dynamic>),
  restingHR: RestingHrData.fromJson(json['restingHR'] as Map<String, dynamic>),
  activityGap: ActivityGapData.fromJson(
    json['activityGap'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$HealthDataToJson(_HealthData instance) =>
    <String, dynamic>{
      'hrv': instance.hrv,
      'sleep': instance.sleep,
      'restingHR': instance.restingHR,
      'activityGap': instance.activityGap,
    };

_UserBaseline _$UserBaselineFromJson(Map<String, dynamic> json) =>
    _UserBaseline(
      burnoutThreshold: (json['burnoutThreshold'] as num).toInt(),
      stressTriggersIdentified:
          (json['stressTriggersIdentified'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$UserBaselineToJson(_UserBaseline instance) =>
    <String, dynamic>{
      'burnoutThreshold': instance.burnoutThreshold,
      'stressTriggersIdentified': instance.stressTriggersIdentified,
    };

_RecentPattern _$RecentPatternFromJson(Map<String, dynamic> json) =>
    _RecentPattern(
      lastWellnessActivity: DateTime.parse(
        json['lastWellnessActivity'] as String,
      ),
      stressLevel7DayTrend: $enumDecode(
        _$StressTrendEnumMap,
        json['stressLevel7DayTrend'],
      ),
    );

Map<String, dynamic> _$RecentPatternToJson(
  _RecentPattern instance,
) => <String, dynamic>{
  'lastWellnessActivity': instance.lastWellnessActivity.toIso8601String(),
  'stressLevel7DayTrend': _$StressTrendEnumMap[instance.stressLevel7DayTrend]!,
};

_HistoricalContext _$HistoricalContextFromJson(Map<String, dynamic> json) =>
    _HistoricalContext(
      userBaseline: UserBaseline.fromJson(
        json['userBaseline'] as Map<String, dynamic>,
      ),
      recentPattern: RecentPattern.fromJson(
        json['recentPattern'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$HistoricalContextToJson(_HistoricalContext instance) =>
    <String, dynamic>{
      'userBaseline': instance.userBaseline,
      'recentPattern': instance.recentPattern,
    };

_TriggerAnalysis _$TriggerAnalysisFromJson(Map<String, dynamic> json) =>
    _TriggerAnalysis(
      primary: json['primary'] as String,
      secondary: json['secondary'] as String,
      contextual: json['contextual'] as String,
    );

Map<String, dynamic> _$TriggerAnalysisToJson(_TriggerAnalysis instance) =>
    <String, dynamic>{
      'primary': instance.primary,
      'secondary': instance.secondary,
      'contextual': instance.contextual,
    };

_InterventionRecommendation _$InterventionRecommendationFromJson(
  Map<String, dynamic> json,
) => _InterventionRecommendation(
  urgency: $enumDecode(_$InterventionUrgencyEnumMap, json['urgency']),
  timing: json['timing'] as String,
  reasoning: json['reasoning'] as String,
  suggestedActions:
      (json['suggestedActions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$InterventionRecommendationToJson(
  _InterventionRecommendation instance,
) => <String, dynamic>{
  'urgency': _$InterventionUrgencyEnumMap[instance.urgency]!,
  'timing': instance.timing,
  'reasoning': instance.reasoning,
  'suggestedActions': instance.suggestedActions,
};

const _$InterventionUrgencyEnumMap = {
  InterventionUrgency.low: 'low',
  InterventionUrgency.moderate: 'moderate',
  InterventionUrgency.high: 'high',
  InterventionUrgency.critical: 'critical',
};

_ConversationalContext _$ConversationalContextFromJson(
  Map<String, dynamic> json,
) => _ConversationalContext(
  tone: json['tone'] as String,
  messageSuggestion: json['messageSuggestion'] as String,
);

Map<String, dynamic> _$ConversationalContextToJson(
  _ConversationalContext instance,
) => <String, dynamic>{
  'tone': instance.tone,
  'messageSuggestion': instance.messageSuggestion,
};

_StressDetectionResult _$StressDetectionResultFromJson(
  Map<String, dynamic> json,
) => _StressDetectionResult(
  stressScore: (json['stressScore'] as num).toInt(),
  burnoutRisk: $enumDecode(_$BurnoutRiskEnumMap, json['burnoutRisk']),
  confidence: (json['confidence'] as num).toDouble(),
  keySignals:
      (json['keySignals'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  triggerAnalysis: TriggerAnalysis.fromJson(
    json['triggerAnalysis'] as Map<String, dynamic>,
  ),
  interventionRecommendation: InterventionRecommendation.fromJson(
    json['interventionRecommendation'] as Map<String, dynamic>,
  ),
  conversationalContext: ConversationalContext.fromJson(
    json['conversationalContext'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$StressDetectionResultToJson(
  _StressDetectionResult instance,
) => <String, dynamic>{
  'stressScore': instance.stressScore,
  'burnoutRisk': _$BurnoutRiskEnumMap[instance.burnoutRisk]!,
  'confidence': instance.confidence,
  'keySignals': instance.keySignals,
  'triggerAnalysis': instance.triggerAnalysis,
  'interventionRecommendation': instance.interventionRecommendation,
  'conversationalContext': instance.conversationalContext,
};

const _$BurnoutRiskEnumMap = {
  BurnoutRisk.low: 'low',
  BurnoutRisk.moderate: 'moderate',
  BurnoutRisk.high: 'high',
  BurnoutRisk.critical: 'critical',
};

_StressScoreResult _$StressScoreResultFromJson(Map<String, dynamic> json) =>
    _StressScoreResult(
      totalScore: (json['totalScore'] as num).toDouble(),
      calendarScore: (json['calendarScore'] as num).toDouble(),
      healthScore: (json['healthScore'] as num).toDouble(),
      contextScore: (json['contextScore'] as num).toDouble(),
      contributingFactors:
          (json['contributingFactors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$StressScoreResultToJson(_StressScoreResult instance) =>
    <String, dynamic>{
      'totalScore': instance.totalScore,
      'calendarScore': instance.calendarScore,
      'healthScore': instance.healthScore,
      'contextScore': instance.contextScore,
      'contributingFactors': instance.contributingFactors,
    };

_BurnoutPrediction _$BurnoutPredictionFromJson(Map<String, dynamic> json) =>
    _BurnoutPrediction(
      risk: $enumDecode(_$BurnoutRiskEnumMap, json['risk']),
      confidence: (json['confidence'] as num).toDouble(),
      daysUntilThreshold: (json['daysUntilThreshold'] as num).toInt(),
      explanation: json['explanation'] as String,
    );

Map<String, dynamic> _$BurnoutPredictionToJson(_BurnoutPrediction instance) =>
    <String, dynamic>{
      'risk': _$BurnoutRiskEnumMap[instance.risk]!,
      'confidence': instance.confidence,
      'daysUntilThreshold': instance.daysUntilThreshold,
      'explanation': instance.explanation,
    };
