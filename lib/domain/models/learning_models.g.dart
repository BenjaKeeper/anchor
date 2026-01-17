// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserActivityFeedback _$UserActivityFeedbackFromJson(
  Map<String, dynamic> json,
) => _UserActivityFeedback(
  rating: (json['rating'] as num).toInt(),
  feeling: json['feeling'] as String,
  comments: json['comments'] as String?,
);

Map<String, dynamic> _$UserActivityFeedbackToJson(
  _UserActivityFeedback instance,
) => <String, dynamic>{
  'rating': instance.rating,
  'feeling': instance.feeling,
  'comments': instance.comments,
};

_ActivityContext _$ActivityContextFromJson(Map<String, dynamic> json) =>
    _ActivityContext(
      beforeEvent: json['beforeEvent'] as String?,
      travelStatus: json['travelStatus'] as String?,
      daysSinceLastActivity: (json['daysSinceLastActivity'] as num?)?.toInt(),
      stressScoreBefore: (json['stressScoreBefore'] as num?)?.toInt(),
      afterFlight: json['afterFlight'] as bool?,
      hoursAfterLanding: (json['hoursAfterLanding'] as num?)?.toInt(),
      sleepLastNight: (json['sleepLastNight'] as num?)?.toDouble(),
      dayOfWeek: json['dayOfWeek'] as String?,
      locationType: json['locationType'] as String?,
    );

Map<String, dynamic> _$ActivityContextToJson(_ActivityContext instance) =>
    <String, dynamic>{
      'beforeEvent': instance.beforeEvent,
      'travelStatus': instance.travelStatus,
      'daysSinceLastActivity': instance.daysSinceLastActivity,
      'stressScoreBefore': instance.stressScoreBefore,
      'afterFlight': instance.afterFlight,
      'hoursAfterLanding': instance.hoursAfterLanding,
      'sleepLastNight': instance.sleepLastNight,
      'dayOfWeek': instance.dayOfWeek,
      'locationType': instance.locationType,
    };

_ActivityCompletion _$ActivityCompletionFromJson(Map<String, dynamic> json) =>
    _ActivityCompletion(
      activityId: json['activityId'] as String,
      type: json['type'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      duration: (json['duration'] as num).toInt(),
      location: json['location'] as String,
      provider: json['provider'] as String?,
      context: ActivityContext.fromJson(
        json['context'] as Map<String, dynamic>,
      ),
      completed: json['completed'] as bool,
      userFeedback: json['userFeedback'] == null
          ? null
          : UserActivityFeedback.fromJson(
              json['userFeedback'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ActivityCompletionToJson(_ActivityCompletion instance) =>
    <String, dynamic>{
      'activityId': instance.activityId,
      'type': instance.type,
      'date': instance.date,
      'time': instance.time,
      'duration': instance.duration,
      'location': instance.location,
      'provider': instance.provider,
      'context': instance.context,
      'completed': instance.completed,
      'userFeedback': instance.userFeedback,
    };

_HealthMetricsChange _$HealthMetricsChangeFromJson(Map<String, dynamic> json) =>
    _HealthMetricsChange(
      hrvBefore: (json['hrvBefore'] as num).toDouble(),
      hrvAfter: (json['hrvAfter'] as num).toDouble(),
      hrvChange: json['hrvChange'] as String,
      sleepQualityNight: (json['sleepQualityNight'] as num).toInt(),
      sleepQualityAvg: (json['sleepQualityAvg'] as num).toInt(),
      restingHRNextDay: (json['restingHRNextDay'] as num).toInt(),
      restingHRBaseline: (json['restingHRBaseline'] as num).toInt(),
      stressScoreAfter: (json['stressScoreAfter'] as num).toInt(),
      stressScoreDelta: (json['stressScoreDelta'] as num).toInt(),
    );

Map<String, dynamic> _$HealthMetricsChangeToJson(
  _HealthMetricsChange instance,
) => <String, dynamic>{
  'hrvBefore': instance.hrvBefore,
  'hrvAfter': instance.hrvAfter,
  'hrvChange': instance.hrvChange,
  'sleepQualityNight': instance.sleepQualityNight,
  'sleepQualityAvg': instance.sleepQualityAvg,
  'restingHRNextDay': instance.restingHRNextDay,
  'restingHRBaseline': instance.restingHRBaseline,
  'stressScoreAfter': instance.stressScoreAfter,
  'stressScoreDelta': instance.stressScoreDelta,
};

_HealthImpact _$HealthImpactFromJson(Map<String, dynamic> json) =>
    _HealthImpact(
      activityId: json['activityId'] as String,
      healthMetrics: HealthMetricsChange.fromJson(
        json['healthMetrics'] as Map<String, dynamic>,
      ),
      timeframe: json['timeframe'] as String,
    );

Map<String, dynamic> _$HealthImpactToJson(_HealthImpact instance) =>
    <String, dynamic>{
      'activityId': instance.activityId,
      'healthMetrics': instance.healthMetrics,
      'timeframe': instance.timeframe,
    };

_SkipData _$SkipDataFromJson(Map<String, dynamic> json) => _SkipData(
  activityId: json['activityId'] as String,
  type: json['type'] as String,
  scheduled: json['scheduled'] as bool,
  completed: json['completed'] as bool,
  cancellationReason: json['cancellationReason'] as String,
  context: ActivityContext.fromJson(json['context'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SkipDataToJson(_SkipData instance) => <String, dynamic>{
  'activityId': instance.activityId,
  'type': instance.type,
  'scheduled': instance.scheduled,
  'completed': instance.completed,
  'cancellationReason': instance.cancellationReason,
  'context': instance.context,
};

_ActivityEffectiveness _$ActivityEffectivenessFromJson(
  Map<String, dynamic> json,
) => _ActivityEffectiveness(
  activityType: json['activityType'] as String,
  completionRate: (json['completionRate'] as num).toDouble(),
  avgHRVImprovement: json['avgHRVImprovement'] as String?,
  avgSleepImprovement: json['avgSleepImprovement'] as String?,
  avgStressReduction: (json['avgStressReduction'] as num?)?.toInt(),
  mostEffectiveContexts:
      (json['mostEffectiveContexts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  leastEffectiveContexts:
      (json['leastEffectiveContexts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  skipReasons:
      (json['skipReasons'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  userSentiment: json['userSentiment'] as String?,
  recommendation: json['recommendation'] as String?,
  confidence: (json['confidence'] as num).toDouble(),
);

Map<String, dynamic> _$ActivityEffectivenessToJson(
  _ActivityEffectiveness instance,
) => <String, dynamic>{
  'activityType': instance.activityType,
  'completionRate': instance.completionRate,
  'avgHRVImprovement': instance.avgHRVImprovement,
  'avgSleepImprovement': instance.avgSleepImprovement,
  'avgStressReduction': instance.avgStressReduction,
  'mostEffectiveContexts': instance.mostEffectiveContexts,
  'leastEffectiveContexts': instance.leastEffectiveContexts,
  'skipReasons': instance.skipReasons,
  'userSentiment': instance.userSentiment,
  'recommendation': instance.recommendation,
  'confidence': instance.confidence,
};

_StressTrigger _$StressTriggerFromJson(Map<String, dynamic> json) =>
    _StressTrigger(
      trigger: json['trigger'] as String,
      correlation: (json['correlation'] as num).toDouble(),
      avgStressIncrease: (json['avgStressIncrease'] as num).toInt(),
      confidence: json['confidence'] as String,
    );

Map<String, dynamic> _$StressTriggerToJson(_StressTrigger instance) =>
    <String, dynamic>{
      'trigger': instance.trigger,
      'correlation': instance.correlation,
      'avgStressIncrease': instance.avgStressIncrease,
      'confidence': instance.confidence,
    };

_RecoveryPattern _$RecoveryPatternFromJson(Map<String, dynamic> json) =>
    _RecoveryPattern(
      pattern: json['pattern'] as String,
      effectiveness: json['effectiveness'] as String,
      frequency: json['frequency'] as String,
      successRate: (json['successRate'] as num).toDouble(),
      shouldPrioritize: json['shouldPrioritize'] as bool,
    );

Map<String, dynamic> _$RecoveryPatternToJson(_RecoveryPattern instance) =>
    <String, dynamic>{
      'pattern': instance.pattern,
      'effectiveness': instance.effectiveness,
      'frequency': instance.frequency,
      'successRate': instance.successRate,
      'shouldPrioritize': instance.shouldPrioritize,
    };

_BurnoutThresholdInfo _$BurnoutThresholdInfoFromJson(
  Map<String, dynamic> json,
) => _BurnoutThresholdInfo(
  daysWithoutActivity: (json['daysWithoutActivity'] as num).toInt(),
  confidence: (json['confidence'] as num).toDouble(),
  basedOnEvents:
      (json['basedOnEvents'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$BurnoutThresholdInfoToJson(
  _BurnoutThresholdInfo instance,
) => <String, dynamic>{
  'daysWithoutActivity': instance.daysWithoutActivity,
  'confidence': instance.confidence,
  'basedOnEvents': instance.basedOnEvents,
};

_PersonalPatterns _$PersonalPatternsFromJson(Map<String, dynamic> json) =>
    _PersonalPatterns(
      stressTriggersIdentified:
          (json['stressTriggersIdentified'] as List<dynamic>?)
              ?.map((e) => StressTrigger.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      recoveryPatterns:
          (json['recoveryPatterns'] as List<dynamic>?)
              ?.map((e) => RecoveryPattern.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      burnoutThreshold: BurnoutThresholdInfo.fromJson(
        json['burnoutThreshold'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$PersonalPatternsToJson(_PersonalPatterns instance) =>
    <String, dynamic>{
      'stressTriggersIdentified': instance.stressTriggersIdentified,
      'recoveryPatterns': instance.recoveryPatterns,
      'burnoutThreshold': instance.burnoutThreshold,
    };

_RecommendationRule _$RecommendationRuleFromJson(Map<String, dynamic> json) =>
    _RecommendationRule(
      rule: json['rule'] as String,
      reasoning: json['reasoning'] as String,
      priority: json['priority'] as String,
    );

Map<String, dynamic> _$RecommendationRuleToJson(_RecommendationRule instance) =>
    <String, dynamic>{
      'rule': instance.rule,
      'reasoning': instance.reasoning,
      'priority': instance.priority,
    };

_UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => _UserProfile(
  userId: json['userId'] as String,
  profileLastUpdated: json['profileLastUpdated'] as String,
  dataPointsAnalyzed: (json['dataPointsAnalyzed'] as num).toInt(),
  confidenceLevel: json['confidenceLevel'] as String,
  preferences: json['preferences'] as Map<String, dynamic>,
  effectiveness: json['effectiveness'] as Map<String, dynamic>,
  triggers: PersonalPatterns.fromJson(json['triggers'] as Map<String, dynamic>),
  recommendationRules:
      (json['recommendationRules'] as List<dynamic>?)
          ?.map((e) => RecommendationRule.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$UserProfileToJson(_UserProfile instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'profileLastUpdated': instance.profileLastUpdated,
      'dataPointsAnalyzed': instance.dataPointsAnalyzed,
      'confidenceLevel': instance.confidenceLevel,
      'preferences': instance.preferences,
      'effectiveness': instance.effectiveness,
      'triggers': instance.triggers,
      'recommendationRules': instance.recommendationRules,
    };

_InsightItem _$InsightItemFromJson(Map<String, dynamic> json) => _InsightItem(
  activity: json['activity'] as String,
  impact: json['impact'] as String?,
  skipRate: json['skipRate'] as String?,
  timesUsed: json['timesUsed'] as String?,
  message: json['message'] as String,
  confidence: json['confidence'] as String?,
  actionable: json['actionable'] as String?,
);

Map<String, dynamic> _$InsightItemToJson(_InsightItem instance) =>
    <String, dynamic>{
      'activity': instance.activity,
      'impact': instance.impact,
      'skipRate': instance.skipRate,
      'timesUsed': instance.timesUsed,
      'message': instance.message,
      'confidence': instance.confidence,
      'actionable': instance.actionable,
    };

_MonthlyInsightsSummary _$MonthlyInsightsSummaryFromJson(
  Map<String, dynamic> json,
) => _MonthlyInsightsSummary(
  activitiesCompleted: (json['activitiesCompleted'] as num).toInt(),
  avgHRVBoost: json['avgHRVBoost'] as String,
  stressPrevented: json['stressPrevented'] as String,
);

Map<String, dynamic> _$MonthlyInsightsSummaryToJson(
  _MonthlyInsightsSummary instance,
) => <String, dynamic>{
  'activitiesCompleted': instance.activitiesCompleted,
  'avgHRVBoost': instance.avgHRVBoost,
  'stressPrevented': instance.stressPrevented,
};

_MonthlyInsights _$MonthlyInsightsFromJson(Map<String, dynamic> json) =>
    _MonthlyInsights(
      period: json['period'] as String,
      summary: MonthlyInsightsSummary.fromJson(
        json['summary'] as Map<String, dynamic>,
      ),
      whatWorksForYou:
          (json['whatWorksForYou'] as List<dynamic>?)
              ?.map((e) => InsightItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      whatDoesntWork:
          (json['whatDoesntWork'] as List<dynamic>?)
              ?.map((e) => InsightItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      patternsDiscovered:
          (json['patternsDiscovered'] as List<dynamic>?)
              ?.map((e) => InsightItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$MonthlyInsightsToJson(_MonthlyInsights instance) =>
    <String, dynamic>{
      'period': instance.period,
      'summary': instance.summary,
      'whatWorksForYou': instance.whatWorksForYou,
      'whatDoesntWork': instance.whatDoesntWork,
      'patternsDiscovered': instance.patternsDiscovered,
    };
