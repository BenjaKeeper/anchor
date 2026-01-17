import 'dart:math' as math;
import '../models/stress_models.dart';

/// Calculates stress scores based on weighted analysis of calendar, health, and context data
class StressScoreCalculator {
  // Weight configuration
  static const double calendarWeight = 0.30;
  static const double healthWeight = 0.40;
  static const double contextWeight = 0.30;

  /// Calculate calendar load score (0-100)
  /// Higher score = more stress
  double calculateCalendarScore(CalendarData calendar) {
    double score = 0;
    final factors = <String>[];

    // Consecutive travel days (weight: 30%) - max score at 5+ days
    final travelScore =
        math.min(calendar.consecutiveTravelDays / 5.0, 1.0) * 30;
    score += travelScore;
    if (calendar.consecutiveTravelDays >= 3) {
      factors.add('${calendar.consecutiveTravelDays} consecutive travel days');
    }

    // Timezone changes (weight: 25%) - max score at 4+ changes
    final timezoneScore = math.min(calendar.timezoneChanges / 4.0, 1.0) * 25;
    score += timezoneScore;
    if (calendar.timezoneChanges >= 2) {
      factors.add('${calendar.timezoneChanges} timezone changes');
    }

    // Meeting density (weight: 25%) - already 0-1 scale
    final densityScore = calendar.meetingDensity * 25;
    score += densityScore;
    if (calendar.meetingDensity >= 0.7) {
      factors.add(
        'High meeting density (${(calendar.meetingDensity * 100).toInt()}%)',
      );
    }

    // Free windows available (weight: 20%) - fewer windows = higher stress
    // Max stress when 0 windows, min when 5+ windows
    final freeWindowScore =
        (1 - math.min(calendar.freeWindowsAvailable / 5.0, 1.0)) * 20;
    score += freeWindowScore;
    if (calendar.freeWindowsAvailable <= 2) {
      factors.add('Limited free windows (${calendar.freeWindowsAvailable})');
    }

    return math.min(score, 100);
  }

  /// Calculate health signals score (0-100)
  /// Higher score = more stress indicators
  double calculateHealthScore(HealthData health) {
    double score = 0;
    final factors = <String>[];

    // HRV decline from baseline (weight: 30%)
    // Significant concern when -20% or more
    final hrvDecline = health.hrv.changePercent.abs();
    if (health.hrv.trend == StressTrend.declining) {
      final hrvScore = math.min(hrvDecline / 30.0, 1.0) * 30;
      score += hrvScore;
      if (hrvDecline >= 15) {
        factors.add('HRV down ${hrvDecline.toInt()}% from baseline');
      }
    }

    // Sleep quality and debt (weight: 30%)
    double sleepScore = 0;
    // Quality factor
    switch (health.sleep.quality) {
      case SleepQuality.poor:
        sleepScore += 15;
        factors.add('Poor sleep quality');
        break;
      case SleepQuality.fair:
        sleepScore += 8;
        break;
      case SleepQuality.good:
        sleepScore += 3;
        break;
      case SleepQuality.excellent:
        sleepScore += 0;
        break;
    }
    // Sleep debt factor (max at 6+ hours debt)
    sleepScore += math.min(health.sleep.debtHours / 6.0, 1.0) * 15;
    if (health.sleep.debtHours >= 3) {
      factors.add(
        'Sleep debt at ${health.sleep.debtHours.toStringAsFixed(1)} hours',
      );
    }
    score += sleepScore;

    // Resting HR elevation (weight: 20%)
    if (health.restingHR.elevated) {
      final hrElevation = health.restingHR.current - health.restingHR.baseline;
      final hrScore = math.min(hrElevation / 15.0, 1.0) * 20;
      score += hrScore;
      if (hrElevation >= 8) {
        factors.add('Resting HR elevated by $hrElevation bpm');
      }
    }

    // Activity gap (weight: 20%)
    // Parse typical frequency to get expected days
    final typicalDays = _parseTypicalFrequency(
      health.activityGap.typicalFrequency,
    );
    final gapRatio = health.activityGap.daysSinceLastWorkout / typicalDays;
    final activityScore = math.min(gapRatio / 3.0, 1.0) * 20;
    score += activityScore;
    if (gapRatio >= 2) {
      factors.add(
        '${health.activityGap.daysSinceLastWorkout} days without exercise',
      );
    }

    return math.min(score, 100);
  }

  /// Calculate context factors score (0-100)
  double calculateContextScore(HistoricalContext context) {
    double score = 0;
    final factors = <String>[];
    final now = DateTime.now();

    // Days since last wellness activity (weight: 40%)
    final daysSinceWellness = now
        .difference(context.recentPattern.lastWellnessActivity)
        .inDays;
    final wellnessScore = math.min(daysSinceWellness / 14.0, 1.0) * 40;
    score += wellnessScore;
    if (daysSinceWellness >= 7) {
      factors.add('$daysSinceWellness days since last wellness activity');
    }

    // Stress trend direction (weight: 35%)
    switch (context.recentPattern.stressLevel7DayTrend) {
      case StressTrend.declining:
        // Declining trend means stress is getting worse
        score += 35;
        factors.add('Stress level trending up over 7 days');
        break;
      case StressTrend.stable:
        score += 15;
        break;
      case StressTrend.improving:
        score += 0;
        break;
    }

    // Approaching known burnout threshold (weight: 25%)
    final daysToThreshold =
        context.userBaseline.burnoutThreshold - daysSinceWellness;
    if (daysToThreshold <= 3) {
      score += 25;
      factors.add(
        'Approaching burnout threshold ($daysToThreshold days remaining)',
      );
    } else if (daysToThreshold <= 5) {
      score += 15;
    } else if (daysToThreshold <= 7) {
      score += 8;
    }

    return math.min(score, 100);
  }

  /// Calculate final weighted stress score
  StressScoreResult calculate(
    CalendarData calendar,
    HealthData health,
    HistoricalContext context,
  ) {
    final calendarScore = calculateCalendarScore(calendar);
    final healthScore = calculateHealthScore(health);
    final contextScore = calculateContextScore(context);

    final totalScore =
        (calendarScore * calendarWeight) +
        (healthScore * healthWeight) +
        (contextScore * contextWeight);

    // Collect all contributing factors
    final contributingFactors = <String>[];
    _addCalendarFactors(contributingFactors, calendar);
    _addHealthFactors(contributingFactors, health);
    _addContextFactors(contributingFactors, context);

    return StressScoreResult(
      totalScore: totalScore,
      calendarScore: calendarScore,
      healthScore: healthScore,
      contextScore: contextScore,
      contributingFactors: contributingFactors,
    );
  }

  void _addCalendarFactors(List<String> factors, CalendarData calendar) {
    if (calendar.consecutiveTravelDays >= 3) {
      factors.add(
        '${calendar.consecutiveTravelDays} consecutive travel days ahead',
      );
    }
    if (calendar.timezoneChanges >= 2) {
      factors.add('Multiple timezone changes (${calendar.timezoneChanges})');
    }
    if (calendar.meetingDensity >= 0.7) {
      factors.add('High meeting density');
    }
  }

  void _addHealthFactors(List<String> factors, HealthData health) {
    if (health.hrv.changePercent <= -15) {
      factors.add(
        'HRV down ${health.hrv.changePercent.abs().toStringAsFixed(0)}% from baseline',
      );
    }
    if (health.sleep.debtHours >= 3) {
      factors.add(
        'Sleep debt at ${health.sleep.debtHours.toStringAsFixed(1)} hours',
      );
    }
    if (health.restingHR.elevated) {
      factors.add('Elevated resting heart rate');
    }
    final typicalDays = _parseTypicalFrequency(
      health.activityGap.typicalFrequency,
    );
    if (health.activityGap.daysSinceLastWorkout >= typicalDays * 2) {
      factors.add(
        '${health.activityGap.daysSinceLastWorkout} days without exercise',
      );
    }
  }

  void _addContextFactors(List<String> factors, HistoricalContext context) {
    final now = DateTime.now();
    final daysSinceWellness = now
        .difference(context.recentPattern.lastWellnessActivity)
        .inDays;
    final daysToThreshold =
        context.userBaseline.burnoutThreshold - daysSinceWellness;

    if (daysToThreshold <= 3) {
      factors.add('Approaching personal burnout threshold');
    }
    if (context.recentPattern.stressLevel7DayTrend == StressTrend.declining) {
      factors.add('Stress trending upward over 7 days');
    }
  }

  double _parseTypicalFrequency(String frequency) {
    // Parse strings like "every 3-4 days" or "every 2 days"
    final regex = RegExp(r'(\d+)(?:-(\d+))?');
    final match = regex.firstMatch(frequency);
    if (match != null) {
      final min = int.parse(match.group(1)!);
      final max = match.group(2) != null ? int.parse(match.group(2)!) : min;
      return (min + max) / 2.0;
    }
    return 3.0; // Default to 3 days if parsing fails
  }
}
