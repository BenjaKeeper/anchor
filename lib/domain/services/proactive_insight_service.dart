import 'package:uuid/uuid.dart';
import '../models/proactive_models.dart';
import '../models/stress_models.dart';
import '../../data/mock_wellness_data.dart';

/// Service to determine when ANCHOR should proactively reach out
class ProactiveInsightService {
  final _uuid = const Uuid();

  /// Check if any proactive insights should be triggered based on current context
  ProactiveInsight? checkForInsight(AnchorContext context) {
    if (context.stressAnalysis == null || context.upcomingSchedule == null) {
      return null;
    }

    // Check triggers in priority order

    // 1. High Stress Risk (Critical/High)
    if (_shouldTriggerStressAlert(context.stressAnalysis!)) {
      return _generateStressInsight(context);
    }

    // 2. New City Travel (Upcoming trip)
    if (_shouldTriggerNewCity(context)) {
      return _generateNewCityInsight(context);
    }

    // 3. Activity Gap (No exercise for X days)
    if (_shouldTriggerActivityGap(context)) {
      return _generateActivityGapInsight(context);
    }

    return null;
  }

  bool _shouldTriggerStressAlert(StressDetectionResult stress) {
    return stress.burnoutRisk == BurnoutRisk.high ||
        stress.burnoutRisk == BurnoutRisk.critical;
  }

  bool _shouldTriggerNewCity(AnchorContext context) {
    // Logic: If user is in a different city than yesterday or has arrived in a new city
    // For demo, we'll check if upcoming schedule has a trip starting soon
    // Simplified for this implementation
    return context.upcomingSchedule!.travelDays > 0;
  }

  bool _shouldTriggerActivityGap(AnchorContext context) {
    // Check if activity gap is significant (e.g. > 5 days)
    // We need to look at health data if available, or just use a mock rule
    // This is a placeholder since AnchorContext aggregates high level data
    // Ideally we'd check HealthData directly
    return false; // Default safe
  }

  ProactiveInsight _generateStressInsight(AnchorContext context) {
    final stress = context.stressAnalysis!;
    final isCritical = stress.burnoutRisk == BurnoutRisk.critical;

    // Get easy wellness options (e.g. close by, short duration)
    final options = context.wellnessOptions.take(2).toList();

    return ProactiveInsight(
      id: _uuid.v4(),
      trigger: InsightTrigger.stressTrendingUp,
      priority: isCritical ? InsightPriority.critical : InsightPriority.high,
      title: isCritical ? 'Urgent Recovery Needed' : 'Stress Levels Rising',
      message: isCritical
          ? "I'm seeing some urgent signals in your data. Your HRV is down significantly. We need to find time to decompress."
          : "I noticed your stress levels are trending up this week. Might be a good time to book a recovery session.",
      generatedAt: DateTime.now(),
      suggestedActions: ['View wellness options', 'Book recovery time'],
      wellnessOptions: options,
    );
  }

  ProactiveInsight _generateNewCityInsight(AnchorContext context) {
    // For demo purposes, let's assume Miami if not specified
    // In real app, we'd use geolocation or calendar location
    final city = 'Miami';
    final options = MockWellnessData.getOptionsForCity(city).take(2).toList();

    return ProactiveInsight(
      id: _uuid.v4(),
      trigger: InsightTrigger.newCityTravel,
      priority: InsightPriority.medium,
      title: 'Welcome to $city',
      message:
          "I found some great wellness spots near your hotel in $city. The running route along the bay looks perfect for tomorrow morning.",
      generatedAt: DateTime.now(),
      suggestedActions: ['See spots', 'Book a class'],
      wellnessOptions: options,
    );
  }

  ProactiveInsight _generateActivityGapInsight(AnchorContext context) {
    return ProactiveInsight(
      id: _uuid.v4(),
      trigger: InsightTrigger.activityGap,
      priority: InsightPriority.medium,
      title: 'Movement Check-in',
      message:
          "It's been 5 days since your last logged workout. Even a short walk can help reset your nervous system.",
      generatedAt: DateTime.now(),
      suggestedActions: ['Find a gym', 'Go for a walk'],
    );
  }
}
