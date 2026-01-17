import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/models/stress_models.dart';
import '../../domain/services/services.dart';

part 'stress_detection_provider.g.dart';

/// Provider for the StressDetectionEngine instance
@riverpod
StressDetectionEngine stressDetectionEngine(Ref ref) {
  return StressDetectionEngine();
}

/// Provider for stress detection state
@riverpod
class StressDetection extends _$StressDetection {
  @override
  AsyncValue<StressDetectionResult?> build() {
    return const AsyncValue.data(null);
  }

  /// Analyze stress based on provided data
  Future<void> analyzeStress({
    required CalendarData calendar,
    required HealthData health,
    required HistoricalContext context,
  }) async {
    state = const AsyncValue.loading();

    try {
      final engine = ref.read(stressDetectionEngineProvider);
      final result = engine.analyze(
        calendar: calendar,
        health: health,
        context: context,
      );
      state = AsyncValue.data(result);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  /// Clear current analysis
  void clear() {
    state = const AsyncValue.data(null);
  }
}

/// Provider for mock/demo stress analysis
/// Use this for testing and demonstration purposes
@riverpod
StressDetectionResult demoStressAnalysis(Ref ref) {
  final engine = ref.watch(stressDetectionEngineProvider);

  // Create demo data matching the spec example
  final calendar = CalendarData(
    events: [
      CalendarEvent(
        title: 'Investor Pitch',
        start: DateTime(2026, 1, 20, 14, 0),
        end: DateTime(2026, 1, 20, 15, 0),
        location: 'Mexico City',
        timezone: 'America/Mexico_City',
      ),
    ],
    travelDays: 4,
    consecutiveTravelDays: 3,
    timezoneChanges: 2,
    meetingDensity: 0.78,
    freeWindowsAvailable: 2,
  );

  final health = HealthData(
    hrv: HrvData(
      current: 45,
      baseline: 62,
      trend: StressTrend.declining,
      changePercent: -27.4,
    ),
    sleep: SleepData(
      hoursLastNight: 5.2,
      averageLast7Days: 5.8,
      debtHours: 4.5,
      quality: SleepQuality.poor,
    ),
    restingHR: RestingHrData(current: 68, baseline: 58, elevated: true),
    activityGap: ActivityGapData(
      daysSinceLastWorkout: 12,
      typicalFrequency: 'every 3-4 days',
    ),
  );

  final context = HistoricalContext(
    userBaseline: UserBaseline(
      burnoutThreshold: 14,
      stressTriggersIdentified: [
        "3+ consecutive travel days",
        "meetings with 'investor' keyword",
        "timezone changes > 4 hours",
      ],
    ),
    recentPattern: RecentPattern(
      lastWellnessActivity: DateTime(2026, 1, 5),
      stressLevel7DayTrend: StressTrend.declining,
    ),
  );

  return engine.analyze(calendar: calendar, health: health, context: context);
}
