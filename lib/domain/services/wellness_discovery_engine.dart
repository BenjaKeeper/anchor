import '../models/discovery_models.dart';
import '../models/stress_models.dart';
import 'context_analyzer.dart';
import 'option_scorer.dart';
import 'wellness_search_service.dart';

/// Orchestrator for the entire discovery process
class WellnessDiscoveryEngine {
  final ContextAnalyzer _contextAnalyzer;
  final WellnessSearchService _searchService;
  final OptionScorer _scorer;

  WellnessDiscoveryEngine({
    ContextAnalyzer? contextAnalyzer,
    WellnessSearchService? searchService,
    OptionScorer? scorer,
  }) : _contextAnalyzer = contextAnalyzer ?? ContextAnalyzer(),
       _searchService = searchService ?? WellnessSearchService(),
       _scorer = scorer ?? OptionScorer();

  /// Discover and rank wellness options
  Future<DiscoveryResult> discoverOptions({
    required LocationContext location,
    required TimeWindow window,
    required UserPreferences preferences,
    HealthData? healthData,
    HistoricalContext? history,
  }) async {
    // 1. Analyze Context
    final contextType = _contextAnalyzer.analyzeWindowType(
      window: window,
      location: location,
      history: history,
    );

    final energyLevel = _contextAnalyzer.estimateEnergyLevel(
      window: window,
      contextType: contextType,
      health: healthData,
    );

    final searchContext = SearchContext(
      date: window.date,
      window: '${window.startTime}-${window.endTime}',
      location: location.currentLocation.city,
      contextType: contextType,
      userEnergyEstimate: energyLevel,
      // In real app, fetch weather here
      weatherForecast: 'Clear, 20°C',
    );

    // 2. Search for options (raw)
    final rawOptions = await _searchService.searchOptions(
      location: location,
      window: window,
      preferences: preferences,
    );

    // 3. Score and rank options
    final scoredOptions = rawOptions.map((raw) {
      return _scorer.scoreOption(
        rawOption: raw,
        preferences: preferences,
        context: searchContext,
        baseRank: 0, // Assigned after sorting
      );
    }).toList();

    // Sort by score descending
    scoredOptions.sort((a, b) => b.score.compareTo(a.score));

    // Assign final ranks and take top 5
    final rankedOptions = scoredOptions.take(5).toList().asMap().entries.map((
      entry,
    ) {
      return entry.value.copyWith(rank: entry.key + 1);
    }).toList();

    // 4. Generate Recommendation & Conversational presentation
    final recommendation = _generateRecommendation(
      rankedOptions,
      searchContext,
      history,
    );
    final conversational = _generateConversationalPresentation(
      rankedOptions,
      searchContext,
      recommendation,
    );

    return DiscoveryResult(
      searchContext: searchContext,
      options: rankedOptions,
      recommendation: recommendation,
      conversationalPresentation: conversational,
    );
  }

  Recommendation _generateRecommendation(
    List<WellnessOption> options,
    SearchContext context,
    HistoricalContext? history,
  ) {
    if (options.isEmpty) {
      return const Recommendation(
        topPick: 'None',
        reasoning: 'No suitable options found for this time window.',
      );
    }

    final topOption = options.first;
    String alternative = '';

    // Find an alternative of a different type
    if (options.length > 1) {
      final alt = options.firstWhere(
        (o) => o.type != topOption.type,
        orElse: () => options[1],
      );
      if (alt != topOption) {
        alternative =
            "If you'd prefer ${alt.type}, ${alt.name} is also a strong option.";
      }
    }

    return Recommendation(
      topPick: topOption.name,
      reasoning: topOption.whyThisOption.primary,
      alternativeIfPreferred: alternative,
    );
  }

  String _generateConversationalPresentation(
    List<WellnessOption> options,
    SearchContext context,
    Recommendation recommendation,
  ) {
    if (options.isEmpty) {
      return "I couldn't find any wellness options for this time slot.";
    }

    final top = options.first;
    final buffer = StringBuffer();

    // "I found a [type] [time/distance]..."
    buffer.write("I found a ${top.type} ");

    if (top.whyThisOption.convenience != null &&
        top.whyThisOption.convenience!.contains('walk')) {
      buffer.write("just a short walk away. ");
    } else {
      buffer.write("nearby. ");
    }

    // Contextual reason
    if (context.contextType == ContextType.preMeeting) {
      buffer.write(
        "Since you have a meeting coming up, this fits perfectly to clear your mind. ",
      );
    } else if (context.contextType == ContextType.recovery) {
      buffer.write("It should really help with your recovery. ");
    }

    // Data-backed validation
    if (top.scoreBreakdown.historicalEffectiveness > 80) {
      buffer.write("This has worked well for you in the past. ");
    }

    buffer.write("Want me to book it?");

    return buffer.toString();
  }
}
