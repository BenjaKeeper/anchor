import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/models/wellness_browser_models.dart';
import '../../../domain/services/wellness_browser_service.dart';

/// Provider for wellness browsing context
final wellnessBrowsingContextProvider = Provider<WellnessBrowsingContext>((
  ref,
) {
  // In a real app, this would come from user location, calendar, and preferences
  return WellnessBrowserService.getBrowseState().context;
});

/// Provider for wellness filters
final wellnessFiltersProvider = StateProvider<WellnessFilters>((ref) {
  return const WellnessFilters();
});

/// Provider for wellness browse state
final wellnessBrowseStateProvider = Provider<WellnessBrowseState>((ref) {
  final context = ref.watch(wellnessBrowsingContextProvider);
  final filters = ref.watch(wellnessFiltersProvider);

  return WellnessBrowserService.getBrowseState(
    context: context,
    filters: filters,
  );
});

/// Provider for search query
final wellnessSearchQueryProvider = StateProvider<String>((ref) => '');

/// Provider for search results
final wellnessSearchResultsProvider = Provider<List<WellnessVenue>>((ref) {
  final query = ref.watch(wellnessSearchQueryProvider);

  if (query.trim().isEmpty) {
    return [];
  }

  return WellnessBrowserService.searchVenues(query);
});

/// Provider for selected venue details
final selectedVenueProvider = StateProvider<WellnessVenue?>((ref) => null);

/// Provider for map view toggle
final mapViewProvider = StateProvider<bool>((ref) => false);

/// Provider for discovery suggestions
final discoverySuggestionsProvider = Provider<Map<String, List<WellnessVenue>>>(
  (ref) {
    final context = ref.watch(wellnessBrowsingContextProvider);
    return WellnessBrowserService.getDiscoverySuggestions(context);
  },
);

/// Provider for venue booking state
final venueBookingStateProvider =
    StateNotifierProvider.family<
      VenueBookingNotifier,
      VenueBookingState,
      String
    >((ref, venueId) => VenueBookingNotifier(venueId));

/// State for venue booking
class VenueBookingState {
  final bool isLoading;
  final bool isBooked;
  final String? error;
  final String? confirmationCode;

  const VenueBookingState({
    this.isLoading = false,
    this.isBooked = false,
    this.error,
    this.confirmationCode,
  });

  VenueBookingState copyWith({
    bool? isLoading,
    bool? isBooked,
    String? error,
    String? confirmationCode,
  }) {
    return VenueBookingState(
      isLoading: isLoading ?? this.isLoading,
      isBooked: isBooked ?? this.isBooked,
      error: error ?? this.error,
      confirmationCode: confirmationCode ?? this.confirmationCode,
    );
  }
}

/// Notifier for venue booking
class VenueBookingNotifier extends StateNotifier<VenueBookingState> {
  final String venueId;

  VenueBookingNotifier(this.venueId) : super(const VenueBookingState());

  Future<void> bookVenue({
    required String activityId,
    required ClassSchedule schedule,
  }) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));

      // In a real app, this would make an actual booking API call
      final confirmationCode = 'ANCHOR${DateTime.now().millisecondsSinceEpoch}';

      state = state.copyWith(
        isLoading: false,
        isBooked: true,
        confirmationCode: confirmationCode,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Failed to book venue: ${e.toString()}',
      );
    }
  }

  void resetBookingState() {
    state = const VenueBookingState();
  }
}

/// Provider for saved venues
final savedVenuesProvider =
    StateNotifierProvider<SavedVenuesNotifier, Set<String>>(
      (ref) => SavedVenuesNotifier(),
    );

/// Notifier for managing saved venues
class SavedVenuesNotifier extends StateNotifier<Set<String>> {
  SavedVenuesNotifier()
    : super({'venue_001', 'venue_002'}); // Start with some saved venues

  void toggleSaved(String venueId) {
    if (state.contains(venueId)) {
      state = {...state}..remove(venueId);
    } else {
      state = {...state, venueId};
    }
  }

  bool isSaved(String venueId) {
    return state.contains(venueId);
  }
}

/// Provider for filtering active quick filter
final activeQuickFilterProvider = StateProvider<String?>(
  (ref) => 'recommended',
);

/// Provider for filtered venues based on quick filter selection
final quickFilteredVenuesProvider = Provider<List<WellnessVenue>>((ref) {
  final browseState = ref.watch(wellnessBrowseStateProvider);
  final activeFilter = ref.watch(activeQuickFilterProvider);

  if (activeFilter == null) {
    return browseState.sections.expand((section) => section.items).toList();
  }

  switch (activeFilter) {
    case 'available_now':
      return browseState.sections
          .where((section) => section.id == 'available_tonight')
          .expand((section) => section.items)
          .toList();
    case 'recommended':
      return browseState.sections
          .where((section) => section.id == 'recommended')
          .expand((section) => section.items)
          .toList();
    case 'nearby':
      return browseState.sections
          .where((section) => section.id == 'near_you')
          .expand((section) => section.items)
          .toList();
    case 'saved':
      return browseState.sections
          .where((section) => section.id == 'your_favorites')
          .expand((section) => section.items)
          .toList();
    default:
      return browseState.sections.expand((section) => section.items).toList();
  }
});

/// Provider for venue reviews (mock data)
final venueReviewsProvider = Provider.family<List<VenueReview>, String>((
  ref,
  venueId,
) {
  // Mock reviews data
  return [
    VenueReview(
      id: 'review_1',
      userId: 'user_1',
      userName: 'Alex M.',
      rating: 5,
      date: DateTime.now().subtract(const Duration(days: 2)),
      text:
          'Best yoga studio in NYC! Sarah is an amazing instructor and the heated room is perfect.',
      helpful: 12,
    ),
    VenueReview(
      id: 'review_2',
      userId: 'user_2',
      userName: 'Jordan K.',
      rating: 4,
      date: DateTime.now().subtract(const Duration(days: 5)),
      text:
          'Great classes and clean facilities. Can get crowded during peak hours.',
      helpful: 8,
    ),
    VenueReview(
      id: 'review_3',
      userId: 'user_3',
      userName: 'Taylor R.',
      rating: 5,
      date: DateTime.now().subtract(const Duration(days: 7)),
      text:
          'Love the energy here! Perfect for beginners and the music is always on point.',
      helpful: 15,
    ),
  ];
});

/// Mock venue review model
class VenueReview {
  final String id;
  final String userId;
  final String userName;
  final int rating;
  final DateTime date;
  final String text;
  final int helpful;

  VenueReview({
    required this.id,
    required this.userId,
    required this.userName,
    required this.rating,
    required this.date,
    required this.text,
    required this.helpful,
  });
}
