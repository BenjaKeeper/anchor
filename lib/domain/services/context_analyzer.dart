import '../models/discovery_models.dart';
import '../models/stress_models.dart';

/// Analyzes the context of a potential wellness window
class ContextAnalyzer {
  /// Determine the type of context for a given time window
  ContextType analyzeWindowType({
    required TimeWindow window,
    required LocationContext location,
    HistoricalContext? history,
  }) {
    // 1. Check for specific event context first (explicit overrides)
    if (window.beforeEvent != null) {
      final event = window.beforeEvent!.toLowerCase();
      if (event.contains('meeting') ||
          event.contains('presentation') ||
          event.contains('pitch') ||
          event.contains('interview')) {
        return ContextType.preMeeting;
      }
      if (event.contains('flight') ||
          event.contains('train') ||
          event.contains('travel')) {
        return ContextType.preTravel;
      }
    }

    if (window.afterEvent != null) {
      final event = window.afterEvent!.toLowerCase();
      if (event.contains('meeting') || event.contains('work')) {
        return ContextType.postWork;
      }
      if (event.contains('flight') ||
          event.contains('arrival') ||
          event.contains('travel')) {
        return ContextType.postTravel;
      }
    }

    // 2. Check historical context / burnout risk
    if (history != null) {
      final daysSinceWellness = DateTime.now()
          .difference(history.recentPattern.lastWellnessActivity)
          .inDays;
      final threshold = history.userBaseline.burnoutThreshold;

      if (daysSinceWellness >= threshold - 2) {
        return ContextType.burnoutPrevention;
      }

      // If user is traveling (away from home/base)
      bool isTraveling =
          location.userBase.type == UserBaseType.hotel ||
          location.userBase.type == UserBaseType.airbnb;

      if (isTraveling && daysSinceWellness > 2) {
        return ContextType.recovery;
      }
    }

    // 3. Fallback to time of day logic
    final startHour = int.parse(window.startTime.split(':')[0]);
    if (startHour >= 17) {
      return ContextType.postWork;
    }

    return ContextType.routineMaintenance;
  }

  /// Estimate user energy level based on time and context
  EnergyLevel estimateEnergyLevel({
    required TimeWindow window,
    required ContextType contextType,
    HealthData? health,
  }) {
    // 1. Health data overrides (if available)
    if (health != null) {
      if (health.sleep.quality == SleepQuality.poor ||
          health.sleep.debtHours > 4) {
        return EnergyLevel.low;
      }
      if (health.hrv.trend == StressTrend.declining) {
        return EnergyLevel.low;
      }
    }

    // 2. Context-based estimation
    switch (contextType) {
      case ContextType.postTravel:
      case ContextType.burnoutPrevention:
        return EnergyLevel.low;
      case ContextType.preMeeting:
        return EnergyLevel.moderate; // Nervous energy/focus needed
      case ContextType.recovery:
        return EnergyLevel.low;
      case ContextType.postWork:
        return EnergyLevel.moderate;
      case ContextType.preTravel:
        return EnergyLevel.moderate;
      case ContextType.routineMaintenance:
        // Time of day fallback
        final startHour = int.parse(window.startTime.split(':')[0]);
        if (startHour < 10) return EnergyLevel.high; // Morning energy
        if (startHour >= 14 && startHour < 16) {
          return EnergyLevel.low; // Afternoon slump
        }
        return EnergyLevel.moderate;
    }
  }

  /// Recommend suitable activity types for the context
  List<String> getRecommendedActivityTypes({
    required ContextType contextType,
    required EnergyLevel energyLevel,
    required UserPreferences preferences,
  }) {
    final recommendations = <String>{};

    // 1. Context-based base recommendations
    switch (contextType) {
      case ContextType.preMeeting:
        recommendations.addAll(['yoga', 'meditation', 'breathing', 'walk']);
        break;
      case ContextType.postWork:
        recommendations.addAll(['gym', 'boxing', 'running', 'yoga']);
        break;
      case ContextType.preTravel:
        recommendations.addAll(['stretch', 'yoga', 'walk']);
        break;
      case ContextType.postTravel:
        recommendations.addAll(['massage', 'spa', 'gentle yoga', 'swim']);
        break;
      case ContextType.recovery:
        recommendations.addAll(['massage', 'spa', 'meditation', 'sleep']);
        break;
      case ContextType.burnoutPrevention:
        recommendations.addAll(['nature walk', 'meditation', 'spa', 'reading']);
        break;
      case ContextType.routineMaintenance:
        recommendations.addAll(preferences.activities.preferred);
        break;
    }

    // 2. Energy level filtering/additions
    if (energyLevel == EnergyLevel.low) {
      recommendations.removeWhere(
        (a) => ['crossfit', 'boxing', 'hiit'].contains(a),
      );
      recommendations.addAll(['yin yoga', 'restorative yoga', 'sauna']);
    } else if (energyLevel == EnergyLevel.high) {
      recommendations.addAll(['running', 'cycling', 'gym', 'class']);
    }

    // 3. Apply user preferences (boost preferred, remove disliked)
    final result = recommendations.toList();

    // Sort: Preferred activities first
    result.sort((a, b) {
      bool aPref = preferences.activities.preferred.contains(a);
      bool bPref = preferences.activities.preferred.contains(b);
      if (aPref && !bPref) return -1;
      if (!aPref && bPref) return 1;
      return 0;
    });

    // Remove disliked
    result.removeWhere((a) => preferences.activities.disliked.contains(a));

    return result.take(5).toList(); // Return top 5
  }

  /// Determine optimal intensity
  ActivityIntensity recommendIntensity({
    required ContextType contextType,
    required EnergyLevel energyLevel,
  }) {
    if (energyLevel == EnergyLevel.low) return ActivityIntensity.gentle;

    if (contextType == ContextType.postWork ||
        contextType == ContextType.routineMaintenance) {
      return energyLevel == EnergyLevel.high
          ? ActivityIntensity.intense
          : ActivityIntensity.moderate;
    }

    if (contextType == ContextType.preMeeting) {
      return ActivityIntensity.moderate; // Don't exhaust before meeting
    }
    if (contextType == ContextType.postTravel) return ActivityIntensity.gentle;

    return ActivityIntensity.moderate;
  }
}
