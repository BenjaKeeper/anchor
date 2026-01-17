import '../models/stress_models.dart';

/// Predicts burnout risk based on stress score and user patterns
class BurnoutPredictor {
  /// Classify burnout risk from stress score
  BurnoutRisk classifyRisk(double stressScore) {
    if (stressScore <= 30) return BurnoutRisk.low;
    if (stressScore <= 60) return BurnoutRisk.moderate;
    if (stressScore <= 80) return BurnoutRisk.high;
    return BurnoutRisk.critical;
  }

  /// Calculate confidence level (0.0-1.0)
  /// Confidence is higher when multiple data points agree
  double calculateConfidence(StressScoreResult scoreResult, HealthData health) {
    double confidence = 0.5; // Base confidence

    // More data points = higher confidence
    int dataPoints = 0;

    // Check if we have meaningful HRV data
    if (health.hrv.current > 0 && health.hrv.baseline > 0) {
      dataPoints++;
      // Strong HRV signal increases confidence
      if (health.hrv.changePercent.abs() >= 20) {
        confidence += 0.1;
      }
    }

    // Check sleep data completeness
    if (health.sleep.hoursLastNight > 0) {
      dataPoints++;
    }

    // Check resting HR data
    if (health.restingHR.current > 0 && health.restingHR.baseline > 0) {
      dataPoints++;
    }

    // Check activity data
    if (health.activityGap.daysSinceLastWorkout >= 0) {
      dataPoints++;
    }

    // Score consistency check
    // If all component scores roughly agree, confidence is higher
    final scores = [
      scoreResult.calendarScore,
      scoreResult.healthScore,
      scoreResult.contextScore,
    ];
    final avgScore = scores.reduce((a, b) => a + b) / scores.length;
    final variance =
        scores
            .map((s) => (s - avgScore) * (s - avgScore))
            .reduce((a, b) => a + b) /
        scores.length;

    // Lower variance = higher confidence (scores agree)
    if (variance < 100) {
      confidence += 0.15;
    } else if (variance < 200) {
      confidence += 0.08;
    }

    // More data points = more confidence
    confidence += (dataPoints / 4) * 0.15;

    // Critical or very low scores get higher confidence (clear signals)
    if (scoreResult.totalScore >= 80 || scoreResult.totalScore <= 20) {
      confidence += 0.1;
    }

    return confidence.clamp(0.0, 1.0);
  }

  /// Calculate days until burnout threshold
  int calculateDaysUntilThreshold(HistoricalContext context) {
    final now = DateTime.now();
    final daysSinceWellness = now
        .difference(context.recentPattern.lastWellnessActivity)
        .inDays;
    return (context.userBaseline.burnoutThreshold - daysSinceWellness).clamp(
      0,
      365,
    );
  }

  /// Generate explanation for the prediction
  String generateExplanation(
    BurnoutRisk risk,
    StressScoreResult scoreResult,
    HistoricalContext context,
  ) {
    final daysUntilThreshold = calculateDaysUntilThreshold(context);

    switch (risk) {
      case BurnoutRisk.low:
        return 'Stress indicators are within healthy ranges. Continue current wellness practices.';

      case BurnoutRisk.moderate:
        if (daysUntilThreshold <= 7) {
          return 'Moderate stress detected with $daysUntilThreshold days until your typical burnout threshold. Proactive rest recommended.';
        }
        return 'Some stress indicators elevated but manageable. Monitor and consider scheduling recovery time.';

      case BurnoutRisk.high:
        return 'Multiple stress signals elevated. User is trending toward their known burnout threshold ($daysUntilThreshold days remaining). Without intervention in next 48 hours, will likely hit burnout state.';

      case BurnoutRisk.critical:
        return 'Critical stress levels detected across multiple indicators. Immediate intervention strongly recommended to prevent burnout.';
    }
  }

  /// Predict burnout based on all signals
  BurnoutPrediction predict(
    StressScoreResult scoreResult,
    HealthData health,
    HistoricalContext context,
  ) {
    final risk = classifyRisk(scoreResult.totalScore);
    final confidence = calculateConfidence(scoreResult, health);
    final daysUntilThreshold = calculateDaysUntilThreshold(context);
    final explanation = generateExplanation(risk, scoreResult, context);

    return BurnoutPrediction(
      risk: risk,
      confidence: confidence,
      daysUntilThreshold: daysUntilThreshold,
      explanation: explanation,
    );
  }
}
