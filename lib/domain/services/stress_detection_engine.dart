import '../models/stress_models.dart';
import '../models/learning_models.dart';
import 'stress_score_calculator.dart';
import 'burnout_predictor.dart';
import 'trigger_analyzer.dart';
import 'intervention_recommender.dart';

/// Main orchestrator for stress detection analysis
/// Coordinates all analysis services to produce comprehensive results
class StressDetectionEngine {
  final StressScoreCalculator scoreCalculator;
  final BurnoutPredictor burnoutPredictor;
  final TriggerAnalyzer triggerAnalyzer;
  final InterventionRecommender interventionRecommender;

  StressDetectionEngine({
    StressScoreCalculator? scoreCalculator,
    BurnoutPredictor? burnoutPredictor,
    TriggerAnalyzer? triggerAnalyzer,
    InterventionRecommender? interventionRecommender,
  }) : scoreCalculator = scoreCalculator ?? StressScoreCalculator(),
       burnoutPredictor = burnoutPredictor ?? BurnoutPredictor(),
       triggerAnalyzer = triggerAnalyzer ?? TriggerAnalyzer(),
       interventionRecommender =
           interventionRecommender ?? InterventionRecommender();

  /// Run full stress detection analysis
  StressDetectionResult analyze({
    required CalendarData calendar,
    required HealthData health,
    required HistoricalContext context,
    UserProfile? userProfile,
  }) {
    // Step 1: Calculate stress score
    final scoreResult = scoreCalculator.calculate(calendar, health, context);

    // Step 2: Predict burnout risk
    final burnoutPrediction = burnoutPredictor.predict(
      scoreResult,
      health,
      context,
    );

    // Step 3: Identify key signals and analyze triggers
    final keySignals = triggerAnalyzer.identifyKeySignals(
      calendar,
      health,
      context,
    );
    final triggers = triggerAnalyzer.analyze(calendar, health, context);

    // Step 4: Generate intervention recommendation
    final intervention = interventionRecommender.recommend(
      risk: burnoutPrediction.risk,
      stressScore: scoreResult.totalScore,
      health: health,
      context: context,
      triggers: triggers,
      userProfile: userProfile,
    );

    // Step 5: Generate conversational context
    final conversational = generateConversationalContext(
      burnoutPrediction.risk,
      keySignals,
      scoreResult,
      health,
    );

    return StressDetectionResult(
      stressScore: scoreResult.totalScore.round(),
      burnoutRisk: burnoutPrediction.risk,
      confidence: burnoutPrediction.confidence,
      keySignals: keySignals,
      triggerAnalysis: triggers,
      interventionRecommendation: intervention,
      conversationalContext: conversational,
    );
  }

  /// Generate conversational context for AI messaging
  ConversationalContext generateConversationalContext(
    BurnoutRisk risk,
    List<String> keySignals,
    StressScoreResult scoreResult,
    HealthData health,
  ) {
    String tone;
    String messageSuggestion;

    switch (risk) {
      case BurnoutRisk.critical:
        tone = 'urgent but supportive';
        messageSuggestion = _buildCriticalMessage(keySignals, health);
        break;
      case BurnoutRisk.high:
        tone = 'concerned but supportive';
        messageSuggestion = _buildHighRiskMessage(keySignals, health);
        break;
      case BurnoutRisk.moderate:
        tone = 'gently proactive';
        messageSuggestion = _buildModerateMessage(keySignals);
        break;
      case BurnoutRisk.low:
        tone = 'encouraging';
        messageSuggestion = _buildLowRiskMessage();
        break;
    }

    return ConversationalContext(
      tone: tone,
      messageSuggestion: messageSuggestion,
    );
  }

  String _buildCriticalMessage(List<String> keySignals, HealthData health) {
    final topSignals = keySignals.take(2).join(' and ');
    return "I'm seeing some urgent signals in your data. $topSignals. "
        "I'd really recommend we find some time for you to decompress today. "
        "Your body is telling us it needs a break.";
  }

  String _buildHighRiskMessage(List<String> keySignals, HealthData health) {
    // Build a personalized message based on the data
    final buffer = StringBuffer();

    buffer.write("I noticed your next few days look intense. ");

    // Add specific data points
    if (health.hrv.changePercent <= -20) {
      buffer.write(
        "Your HRV has dropped ${health.hrv.changePercent.abs().toStringAsFixed(0)}% ",
      );
    }

    // Add activity gap if significant
    if (health.activityGap.daysSinceLastWorkout >= 7) {
      buffer.write(
        "and you haven't had a break in ${health.activityGap.daysSinceLastWorkout} days. ",
      );
    }

    buffer.write("Let's find some anchors to keep you grounded.");

    return buffer.toString();
  }

  String _buildModerateMessage(List<String> keySignals) {
    if (keySignals.isNotEmpty) {
      return "I'm seeing a few stress signals building up. "
          "Nothing urgent yet, but might be a good time to schedule some recovery. "
          "Want me to suggest some activities?";
    }
    return "Your schedule looks busy ahead. Let's make sure you've got some wellness "
        "time blocked in to stay balanced.";
  }

  String _buildLowRiskMessage() {
    return "You're looking well balanced right now! Great job maintaining your wellness routine. "
        "Keep it up, and let me know if you'd like any suggestions for activities.";
  }
}
