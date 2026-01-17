import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/models/discovery_models.dart';
import '../../domain/services/wellness_discovery_engine.dart';
import '../../domain/services/context_analyzer.dart';
import '../../domain/services/option_scorer.dart';
import '../../domain/services/wellness_search_service.dart';

part 'wellness_discovery_provider.g.dart';

// ============================================================================
// SERVICE PROVIDERS
// ============================================================================

@riverpod
ContextAnalyzer contextAnalyzer(Ref ref) {
  return ContextAnalyzer();
}

@riverpod
WellnessSearchService wellnessSearchService(Ref ref) {
  return WellnessSearchService();
}

@riverpod
OptionScorer optionScorer(Ref ref) {
  return OptionScorer();
}

@riverpod
WellnessDiscoveryEngine wellnessDiscoveryEngine(Ref ref) {
  return WellnessDiscoveryEngine(
    contextAnalyzer: ref.watch(contextAnalyzerProvider),
    searchService: ref.watch(wellnessSearchServiceProvider),
    scorer: ref.watch(optionScorerProvider),
  );
}

// ============================================================================
// STATE PROVIDERS
// ============================================================================

/// Current user location (Mocked for now)
@riverpod
UserLocation userLocation(Ref ref) {
  // Mock data - would normally come from location service
  return const UserLocation(
    city: 'New York',
    coordinates: Coordinates(latitude: 40.7128, longitude: -74.0060),
    timezone: 'America/New_York',
  );
}

/// User home/hotel base (Mocked)
@riverpod
UserBase userBase(Ref ref) {
  return const UserBase(
    type: UserBaseType.hotel,
    name: 'Ace Hotel New York',
    address: '20 W 29th St, New York, NY 10001',
    coordinates: Coordinates(latitude: 40.7456, longitude: -73.9889),
  );
}

/// User preferences (Mocked)
@riverpod
UserPreferences userPreferences(Ref ref) {
  return const UserPreferences(
    activities: ActivityPreferences(
      preferred: ['yoga', 'massage', 'spa'],
      neutral: ['gym', 'swimming'],
      disliked: ['boxing', 'crossfit'],
    ),
    timing: TimingPreferences(
      preferredTimes: [TimeOfDay.morning, TimeOfDay.evening],
      avoidTimes: [TimeOfDay.midday],
    ),
    intensity: ActivityIntensity.moderate,
    maxDistance: '15 min walk',
    maxPrice: 150,
    learnedPatterns: [
      LearnedPattern(
        activityType: 'yoga',
        context: 'pre-meeting',
        effectivenessMetric: 'HRV',
        effectivenessValue: 18,
        description:
            'Morning yoga before big meetings has boosted your HRV by 18% in the past',
      ),
    ],
  );
}

/// Parameters for discovery search
class DiscoveryParams {
  final TimeWindow window;
  final LocationContext location;

  DiscoveryParams({required this.window, required this.location});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiscoveryParams &&
          runtimeType == other.runtimeType &&
          window == other.window &&
          location == other.location;

  @override
  int get hashCode => window.hashCode ^ location.hashCode;
}

/// The main discovery result provider
@riverpod
Future<DiscoveryResult> wellnessDiscovery(
  Ref ref, {
  required TimeWindow window,
}) async {
  final engine = ref.watch(wellnessDiscoveryEngineProvider);
  final currentLocation = ref.watch(userLocationProvider);
  final base = ref.watch(userBaseProvider);
  final prefs = ref.watch(userPreferencesProvider);

  final locationContext = LocationContext(
    currentLocation: currentLocation,
    userBase: base,
  );

  return engine.discoverOptions(
    location: locationContext,
    window: window,
    preferences: prefs,
    // Health data and history would be fetched from other providers here
  );
}
