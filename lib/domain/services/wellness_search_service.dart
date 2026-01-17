import '../models/discovery_models.dart';
import '../../data/mock_discovery_data.dart';

/// Service to search across multiple wellness providers
class WellnessSearchService {
  /// Search for options based on location and window
  Future<List<RawWellnessOption>> searchOptions({
    required LocationContext location,
    required TimeWindow window,
    required UserPreferences preferences,
  }) async {
    // In a real app, this would call multiple APIs in parallel
    // For now, we simulate searching mocked providers

    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 800));

    final options = <RawWellnessOption>[];
    final city = location.currentLocation.city;

    // 1. Fetch ClassPass options
    if (city == 'New York') {
      options.addAll(MockDiscoveryData.nycClassPassOptions);
    } else if (city == 'Miami') {
      options.addAll(MockDiscoveryData.miamiClassPassOptions);
    }

    // 2. Fetch Gympass options
    if (city == 'New York') {
      options.addAll(MockDiscoveryData.nycGympassOptions);
    }

    // 3. Fetch Local/Free options
    if (city == 'New York') {
      options.addAll(MockDiscoveryData.nycFreeOptions);
    }

    // 4. Filtering (basic availability check)
    // Filter out options that definitely don't fit the time duration
    return options.where((opt) {
      if (opt.details.durationMinutes > 0) {
        // Allow if option duration is shorter or equal to window duration
        // (plus a small buffer)
        return opt.details.durationMinutes <= (window.durationMinutes + 15);
      }
      return true; // Flexible duration
    }).toList();
  }
}
