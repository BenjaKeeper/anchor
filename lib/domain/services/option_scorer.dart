import '../models/discovery_models.dart';

/// Scores and ranks wellness options based on multiple factors
class OptionScorer {
  /// Weights for different scoring components
  static const double _preferenceWeight = 0.30;
  static const double _contextWeight = 0.25;
  static const double _historyWeight = 0.20;
  static const double _convenienceWeight = 0.15;
  static const double _availabilityWeight = 0.10;

  /// Calculate detailed score for an option
  WellnessOption scoreOption({
    required RawWellnessOption rawOption,
    required UserPreferences preferences,
    required SearchContext context,
    required int baseRank, // Initial sorting rank
  }) {
    // 1. Calculate component scores (0-100 scale)
    final preferenceScore = _calculatePreferenceScore(rawOption, preferences);
    final contextScore = _calculateContextScore(
      rawOption,
      context,
      preferences,
    );
    final historyScore = _calculateHistoryScore(rawOption, preferences);
    final convenienceScore = _calculateConvenienceScore(rawOption, context);
    final availabilityScore = _calculateAvailabilityScore(rawOption);

    // 2. Weighted total score
    double totalScore =
        (preferenceScore * _preferenceWeight) +
        (contextScore * _contextWeight) +
        (historyScore * _historyWeight) +
        (convenienceScore * _convenienceWeight) +
        (availabilityScore * _availabilityWeight);

    // Normalize to 0-100 integer
    totalScore = totalScore.clamp(0.0, 100.0);

    // 3. Generate reasoning
    final reasoning = _generateReasoning(
      rawOption,
      preferences,
      context,
      historyScore,
      convenienceScore,
    );

    // 4. Create proper ScoreBreakdown
    final breakdown = ScoreBreakdown(
      preferenceMatch: preferenceScore,
      contextualFit: contextScore,
      historicalEffectiveness: historyScore,
      convenience: convenienceScore,
      availability: availabilityScore,
    );

    return WellnessOption(
      rank: baseRank,
      score: totalScore,
      type: rawOption.type,
      name: rawOption.name,
      provider: rawOption.provider,
      details: rawOption.details,
      bookingInfo: rawOption.bookingInfo,
      whyThisOption: reasoning,
      scoreBreakdown: breakdown,
    );
  }

  double _calculatePreferenceScore(
    RawWellnessOption option,
    UserPreferences prefs,
  ) {
    if (prefs.activities.preferred.contains(option.type.toLowerCase())) {
      return 100.0;
    }
    if (prefs.activities.neutral.contains(option.type.toLowerCase())) {
      return 50.0;
    }
    if (prefs.activities.disliked.contains(option.type.toLowerCase())) {
      return 0.0;
    }
    return 40.0; // Default for unknown types
  }

  double _calculateContextScore(
    RawWellnessOption option,
    SearchContext context,
    UserPreferences prefs,
  ) {
    double score = 50.0;
    final type = option.type.toLowerCase();

    // Context-specific boosting
    switch (context.contextType) {
      case ContextType.preMeeting:
        if (['yoga', 'meditation', 'breathing'].contains(type)) score += 40;
        if (type == 'running') score += 20;
        if (['crossfit', 'hiit'].contains(type)) score -= 30; // Too intense
        break;

      case ContextType.postTravel:
      case ContextType.recovery:
        if (['massage', 'spa', 'sauna'].contains(type)) score += 50;
        if (['yoga', 'stretch'].contains(type)) score += 30;
        if (['crossfit', 'boxing'].contains(type)) score -= 40;
        break;

      case ContextType.postWork:
        if (['boxing', 'gym', 'running'].contains(type)) {
          score += 30; // Stress release
        }
        break;

      default:
        break;
    }

    // Energy level matching
    if (context.userEnergyEstimate == EnergyLevel.low) {
      if (['restorative yoga', 'massage', 'meditation'].contains(type)) {
        score += 20;
      }
      if (['hiit', 'boxing'].contains(type)) score -= 30;
    }

    return score.clamp(0.0, 100.0);
  }

  double _calculateHistoryScore(
    RawWellnessOption option,
    UserPreferences prefs,
  ) {
    // Look for learned patterns matching this activity type
    final pattern = prefs.learnedPatterns.firstWhere(
      (p) => p.activityType.toLowerCase() == option.type.toLowerCase(),
      orElse: () => const LearnedPattern(
        activityType: '',
        context: '',
        effectivenessMetric: '',
        effectivenessValue: 0,
        description: '',
      ),
    );

    if (pattern.activityType.isEmpty) return 40.0; // No history = neutral

    // Scale positive impact to score (assuming effectValue is like +20%, etc)
    // Map 0-30% improvement to 50-100 score
    double baseScore = 50.0;
    double impact = pattern.effectivenessValue;

    return (baseScore + (impact * 2)).clamp(0.0, 100.0);
  }

  double _calculateConvenienceScore(
    RawWellnessOption option,
    SearchContext context,
  ) {
    // Parse "0.4 mi" or similar
    double distance = 5.0; // Assume far if parsing fails
    try {
      final distStr = option.details.distance.toLowerCase();
      if (distStr.contains('mi')) {
        distance = double.parse(distStr.split('mi')[0].trim());
      } else if (distStr.contains('km')) {
        distance = double.parse(distStr.split('km')[0].trim()) * 0.621;
      }
    } catch (_) {}

    // Score based on distance (closer = better)
    // < 0.2mi = 100
    // 0.5mi = 80
    // 1.0mi = 60
    // 2.0mi = 20
    if (distance <= 0.2) return 100;
    if (distance <= 0.5) return 80;
    if (distance <= 1.0) return 60;
    if (distance <= 2.0) return 40;
    return 10;
  }

  double _calculateAvailabilityScore(RawWellnessOption option) {
    if (!option.bookingInfo.canBookNow) return 20.0;

    // If spots info available
    if (option.details.spotsAvailable != null) {
      if (option.details.spotsAvailable! > 5) return 100.0;
      if (option.details.spotsAvailable! > 0) {
        return 60.0; /* Scarcity penalty? Or urgency? 
                                                Let's say low availability reduces certainty score */
      }
      return 0.0;
    }

    return 90.0; // Assume good if bookable
  }

  WhyRecommended _generateReasoning(
    RawWellnessOption option,
    UserPreferences prefs,
    SearchContext context,
    double historyScore,
    double convenienceScore,
  ) {
    String primary = '';
    String? secondary;
    String? caveat;

    // 1. Determine Primary Reason (Strongest signal)
    if (historyScore > 80) {
      // Find the pattern description
      final pattern = prefs.learnedPatterns.firstWhere(
        (p) => p.activityType.toLowerCase() == option.type.toLowerCase(),
        orElse: () => const LearnedPattern(
          activityType: '',
          context: '',
          effectivenessMetric: '',
          effectivenessValue: 0,
          description: '',
        ),
      );
      if (pattern.description.isNotEmpty) {
        primary = pattern.description;
      } else {
        primary =
            "This activity has been highly effective for you in the past.";
      }
    } else if (prefs.activities.preferred.contains(option.type.toLowerCase())) {
      primary = "matches your preference for ${option.type}.";
    } else if (context.contextType == ContextType.recovery) {
      primary = "Great option for post-travel recovery.";
    } else {
      primary = "A convenient ${option.type} option nearby.";
    }

    // 2. Secondary Reason (Usually timing or fit)
    if (context.window.isNotEmpty) {
      secondary = "Fits perfectly in your ${context.window} window.";
    }

    // 3. Convenience note
    String? convenience;
    if (convenienceScore > 70) {
      convenience =
          "Just a short walk (${option.details.distance}) from your location.";
    }

    // 4. Caveat (if any negatives)
    if (prefs.activities.neutral.contains(option.type.toLowerCase())) {
      caveat = "Note: You usually have neutral feelings about ${option.type}.";
    }

    return WhyRecommended(
      primary: primary,
      secondary: secondary,
      convenience: convenience,
      caveat: caveat,
    );
  }
}
