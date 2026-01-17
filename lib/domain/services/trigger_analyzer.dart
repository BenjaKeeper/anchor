import '../models/stress_models.dart';

/// Analyzes triggers and identifies specific stress drivers
class TriggerAnalyzer {
  /// Identify key signals from the data
  List<String> identifyKeySignals(
    CalendarData calendar,
    HealthData health,
    HistoricalContext context,
  ) {
    final signals = <String>[];

    // Health signals
    if (health.hrv.changePercent <= -15) {
      signals.add(
        'HRV down ${health.hrv.changePercent.abs().toStringAsFixed(0)}% from baseline',
      );
    }

    if (health.sleep.debtHours >= 3) {
      signals.add(
        'Sleep debt at ${health.sleep.debtHours.toStringAsFixed(1)} hours',
      );
    }

    if (health.sleep.quality == SleepQuality.poor) {
      signals.add('Poor sleep quality');
    }

    if (health.restingHR.elevated) {
      final elevation = health.restingHR.current - health.restingHR.baseline;
      signals.add('Resting HR elevated by $elevation bpm');
    }

    // Activity signals
    if (health.activityGap.daysSinceLastWorkout >= 7) {
      signals.add(
        '${health.activityGap.daysSinceLastWorkout} days without exercise',
      );
    }

    // Calendar signals
    if (calendar.consecutiveTravelDays >= 3) {
      signals.add(
        '${calendar.consecutiveTravelDays} consecutive travel days ahead',
      );
    }

    if (calendar.timezoneChanges >= 2) {
      signals.add('${calendar.timezoneChanges} timezone changes in schedule');
    }

    if (calendar.meetingDensity >= 0.7) {
      signals.add(
        'High meeting density (${(calendar.meetingDensity * 100).toInt()}%)',
      );
    }

    // Context signals
    final now = DateTime.now();
    final daysSinceWellness = now
        .difference(context.recentPattern.lastWellnessActivity)
        .inDays;
    if (daysSinceWellness >= 7) {
      signals.add('$daysSinceWellness days since last wellness activity');
    }

    // Check for known triggers in upcoming events
    final knownTriggers = context.userBaseline.stressTriggersIdentified;
    for (final event in calendar.events) {
      for (final trigger in knownTriggers) {
        if (_matchesTrigger(event, trigger)) {
          signals.add('Known trigger: "${event.title}"');
          break;
        }
      }
    }

    return signals;
  }

  /// Analyze and categorize triggers into primary, secondary, and contextual
  TriggerAnalysis analyze(
    CalendarData calendar,
    HealthData health,
    HistoricalContext context,
  ) {
    // Calculate which category has the highest score
    final categoryScores = _calculateCategoryScores(calendar, health, context);

    String primary;
    String secondary;
    String contextual;

    // Determine primary trigger based on highest-scoring category
    if (categoryScores['travel']! >= categoryScores['health']! &&
        categoryScores['travel']! >= categoryScores['recovery']!) {
      primary = _getTravelTrigger(calendar);
      secondary = _getHealthTrigger(health);
    } else if (categoryScores['health']! >= categoryScores['recovery']!) {
      primary = _getHealthTrigger(health);
      secondary = _getRecoveryTrigger(health, context);
    } else {
      primary = _getRecoveryTrigger(health, context);
      secondary = _getHealthTrigger(health);
    }

    // Contextual is always about environmental/timing factors
    contextual = _getContextualTrigger(calendar, context);

    return TriggerAnalysis(
      primary: primary,
      secondary: secondary,
      contextual: contextual,
    );
  }

  Map<String, double> _calculateCategoryScores(
    CalendarData calendar,
    HealthData health,
    HistoricalContext context,
  ) {
    double travelScore = 0;
    double healthScore = 0;
    double recoveryScore = 0;

    // Travel category
    travelScore += calendar.consecutiveTravelDays * 10;
    travelScore += calendar.timezoneChanges * 8;
    travelScore += calendar.travelDays * 5;

    // Health category
    healthScore += health.hrv.changePercent.abs();
    healthScore += health.sleep.debtHours * 5;
    if (health.restingHR.elevated) {
      healthScore += (health.restingHR.current - health.restingHR.baseline) * 2;
    }

    // Recovery category
    final now = DateTime.now();
    final daysSinceWellness = now
        .difference(context.recentPattern.lastWellnessActivity)
        .inDays;
    recoveryScore += daysSinceWellness * 3;
    recoveryScore += health.activityGap.daysSinceLastWorkout * 2;

    return {
      'travel': travelScore,
      'health': healthScore,
      'recovery': recoveryScore,
    };
  }

  String _getTravelTrigger(CalendarData calendar) {
    if (calendar.consecutiveTravelDays >= 4) {
      return 'Accumulated travel fatigue from extended trip sequence';
    } else if (calendar.consecutiveTravelDays >= 2) {
      return 'Back-to-back travel without adequate rest';
    } else if (calendar.timezoneChanges >= 3) {
      return 'Multiple timezone transitions disrupting circadian rhythm';
    } else if (calendar.meetingDensity >= 0.8) {
      return 'Intense schedule with minimal buffer time';
    }
    return 'Travel-related schedule demands';
  }

  String _getHealthTrigger(HealthData health) {
    if (health.hrv.changePercent <= -25) {
      return 'Significant HRV decline indicating physiological stress';
    } else if (health.sleep.debtHours >= 5) {
      return 'Severe sleep debt affecting recovery capacity';
    } else if (health.sleep.quality == SleepQuality.poor &&
        health.sleep.debtHours >= 3) {
      return 'Poor sleep quality compounding with sleep debt';
    } else if (health.restingHR.elevated) {
      return 'Elevated resting heart rate signaling stress response';
    }
    return 'Declining health metrics requiring attention';
  }

  String _getRecoveryTrigger(HealthData health, HistoricalContext context) {
    final now = DateTime.now();
    final daysSinceWellness = now
        .difference(context.recentPattern.lastWellnessActivity)
        .inDays;
    final daysToThreshold =
        context.userBaseline.burnoutThreshold - daysSinceWellness;

    if (daysToThreshold <= 2) {
      return 'Approaching personal burnout threshold without recovery';
    } else if (health.activityGap.daysSinceLastWorkout >= 10) {
      return 'Extended break from physical activity reducing stress resilience';
    } else if (daysSinceWellness >= 10) {
      return 'Prolonged period without dedicated wellness time';
    }
    return 'Insufficient recovery time between stressors';
  }

  String _getContextualTrigger(
    CalendarData calendar,
    HistoricalContext context,
  ) {
    // Check for known trigger keywords in events
    final triggerKeywords = context.userBaseline.stressTriggersIdentified;
    for (final event in calendar.events) {
      for (final trigger in triggerKeywords) {
        if (_matchesTrigger(event, trigger)) {
          return 'High-stakes event "${event.title}" matching known stress pattern';
        }
      }
    }

    if (calendar.timezoneChanges >= 2) {
      return 'Multiple timezone changes affecting sleep and recovery';
    } else if (calendar.freeWindowsAvailable <= 1) {
      return 'Lack of buffer time in schedule for unexpected demands';
    }

    return 'Cumulative environmental stressors';
  }

  bool _matchesTrigger(CalendarEvent event, String trigger) {
    final titleLower = event.title.toLowerCase();
    final triggerLower = trigger.toLowerCase();

    // Handle patterns like "meetings with 'investor' keyword"
    final keywordMatch = RegExp(r"'(\w+)'").firstMatch(triggerLower);
    if (keywordMatch != null) {
      return titleLower.contains(keywordMatch.group(1)!.toLowerCase());
    }

    // Handle patterns like "3+ consecutive travel days"
    if (triggerLower.contains('travel') || triggerLower.contains('timezone')) {
      return false; // These are handled by calendar data, not event matching
    }

    // Direct keyword match
    return titleLower.contains(triggerLower);
  }
}
