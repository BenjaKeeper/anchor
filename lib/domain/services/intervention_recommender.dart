import '../models/stress_models.dart';
import '../models/learning_models.dart';

/// Recommends intervention timing and specific actions
class InterventionRecommender {
  /// Determine intervention urgency based on risk and score
  InterventionUrgency determineUrgency(BurnoutRisk risk, double stressScore) {
    switch (risk) {
      case BurnoutRisk.critical:
        return InterventionUrgency.critical;
      case BurnoutRisk.high:
        // High risk with very high score = critical urgency
        if (stressScore >= 75) {
          return InterventionUrgency.critical;
        }
        return InterventionUrgency.high;
      case BurnoutRisk.moderate:
        if (stressScore >= 55) {
          return InterventionUrgency.high;
        }
        return InterventionUrgency.moderate;
      case BurnoutRisk.low:
        return InterventionUrgency.low;
    }
  }

  /// Determine intervention timing based on urgency
  String determineTiming(InterventionUrgency urgency) {
    switch (urgency) {
      case InterventionUrgency.critical:
        return 'immediate';
      case InterventionUrgency.high:
        return 'within 24 hours';
      case InterventionUrgency.moderate:
        return 'within 48 hours';
      case InterventionUrgency.low:
        return 'within this week';
    }
  }

  /// Generate reasoning for intervention
  String generateReasoning(
    HealthData health,
    HistoricalContext context,
    BurnoutRisk risk,
    double stressScore,
  ) {
    final now = DateTime.now();
    final daysSinceWellness = now
        .difference(context.recentPattern.lastWellnessActivity)
        .inDays;
    final daysToThreshold =
        context.userBaseline.burnoutThreshold - daysSinceWellness;

    final buffer = StringBuffer();

    // Start with the current state
    buffer.write(
      'User is trending toward their known burnout threshold (${context.userBaseline.burnoutThreshold} days). ',
    );
    buffer.write('Current gap is $daysSinceWellness days. ');

    // Add urgency reasoning
    if (daysToThreshold <= 2) {
      buffer.write(
        'Without intervention in next 48 hours, will likely hit burnout state. ',
      );
    } else if (daysToThreshold <= 5) {
      buffer.write(
        'Proactive intervention now can prevent reaching critical threshold. ',
      );
    } else {
      buffer.write('Early intervention recommended to maintain resilience. ');
    }

    // Add health context
    if (health.hrv.changePercent <= -20) {
      buffer.write('HRV decline indicates body is not recovering adequately. ');
    }
    if (health.sleep.debtHours >= 4) {
      buffer.write(
        'Sleep debt is accumulating and will compound stress effects. ',
      );
    }

    return buffer.toString().trim();
  }

  /// Suggest specific actions based on risk and triggers
  List<String> suggestActions(
    BurnoutRisk risk,
    TriggerAnalysis triggers,
    HealthData health,
    HistoricalContext context, {
    UserProfile? userProfile,
  }) {
    final actions = <String>[];

    // Urgency-based primary action
    switch (risk) {
      case BurnoutRisk.critical:
        actions.add('Find immediate wellness window in next 24 hours');
        actions.add('Consider rescheduling non-essential commitments');
        break;
      case BurnoutRisk.high:
        actions.add('Find wellness window in next 2 days');
        actions.add('Block recovery time after travel sequence ends');
        break;
      case BurnoutRisk.moderate:
        actions.add('Schedule wellness activity for this week');
        break;
      case BurnoutRisk.low:
        actions.add('Continue maintaining current wellness routine');
        break;
    }

    // Sleep-specific actions
    if (health.sleep.quality == SleepQuality.poor ||
        health.sleep.debtHours >= 3) {
      actions.add('Prioritize sleep-supporting activities');
      if (health.sleep.debtHours >= 5) {
        actions.add('Try to get to bed 30-60 minutes earlier tonight');
      }
    }

    // Activity gap actions
    if (health.activityGap.daysSinceLastWorkout >= 7) {
      // Recommend gentle activity for someone who hasn't exercised in a while
      actions.add('Start with gentle movement (walk, yoga, stretching)');
    }

    // HRV-specific actions
    if (health.hrv.trend == StressTrend.declining &&
        health.hrv.changePercent <= -15) {
      actions.add(
        'Consider stress-reducing activities (meditation, breathing exercises)',
      );
    }

    // START PERSONALIZATION
    if (userProfile != null) {
      // Filter out avoided activities
      final avoidList = userProfile.preferences['avoidActivities'] as List?;
      if (avoidList != null) {
        // This is a naive filter string matching for demo purposes
        // In reality, 'actions' would be structured objects
        // final avoidedTypes = avoidList.map((e) => e['type'] as String).toList();
        // If we had specific activities in 'actions', we would filter them here
      }

      // Add "What works for you" based on recovery patterns
      for (final pattern in userProfile.triggers.recoveryPatterns) {
        if (pattern.shouldPrioritize && pattern.successRate > 0.8) {
          // Add highly successful known patterns if relevant to context
          // For simplicity, we just add the top one if list is not full
          if (actions.length < 5) {
            actions.add(
              "Try your proven recovery: ${pattern.pattern} (${pattern.effectiveness})",
            );
          }
        }
      }
    }
    // END PERSONALIZATION

    // Limit to most relevant actions
    return actions.take(5).toList();
  }

  /// Generate full recommendation
  InterventionRecommendation recommend({
    required BurnoutRisk risk,
    required double stressScore,
    required HealthData health,
    required HistoricalContext context,
    required TriggerAnalysis triggers,
    UserProfile? userProfile,
  }) {
    final urgency = determineUrgency(risk, stressScore);
    final timing = determineTiming(urgency);
    final reasoning = generateReasoning(health, context, risk, stressScore);
    final actions = suggestActions(
      risk,
      triggers,
      health,
      context,
      userProfile: userProfile,
    );

    return InterventionRecommendation(
      urgency: urgency,
      timing: timing,
      reasoning: reasoning,
      suggestedActions: actions,
    );
  }
}
