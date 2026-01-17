import '../models/wellness_browser_models.dart';
import '../../data/mock_wellness_browser_data.dart';

/// Service for wellness browsing functionality
class WellnessBrowserService {
  /// Get wellness browse state with personalized sections
  static WellnessBrowseState getBrowseState({
    WellnessBrowsingContext? context,
    WellnessFilters? filters,
  }) {
    final browsingContext = context ?? MockWellnessBrowserData.nycContext;
    final activeFilters = filters ?? const WellnessFilters();

    final venues = _getFilteredVenues(activeFilters);
    final sections = _generateSections(browsingContext, venues);
    final quickFilters = _generateQuickFilters(venues);

    final timeOfDay = _getTimeOfDay(browsingContext.timeContext.currentTime);
    final greeting = _generateGreeting(timeOfDay);
    final contextMessage = _generateContextMessage(browsingContext, timeOfDay);
    final filterSummary = _generateFilterSummary(
      venues.length,
      browsingContext,
    );

    return WellnessBrowseState(
      context: browsingContext,
      sections: sections,
      quickFilters: quickFilters,
      activeFilters: activeFilters,
      headerGreeting: greeting,
      contextMessage: contextMessage,
      filterSummary: filterSummary,
      mapMarkers: venues,
    );
  }

  /// Apply filters to venue list
  static List<WellnessVenue> _getFilteredVenues(WellnessFilters filters) {
    var venues = MockWellnessBrowserData.venues;

    // Apply activity type filter
    if (filters.activityTypes.isNotEmpty) {
      venues = venues.where((venue) {
        return venue.activities.any(
          (activity) => filters.activityTypes.contains(activity.type),
        );
      }).toList();
    }

    // Apply distance filter
    if (filters.maxDistance != null) {
      venues = venues
          .where((venue) => venue.distance.fromUser <= filters.maxDistance!)
          .toList();
    }

    // Apply price level filter
    if (filters.priceRange.isNotEmpty) {
      venues = venues
          .where((venue) => filters.priceRange.contains(venue.priceLevel))
          .toList();
    }

    // Apply provider filter
    if (filters.providers.isNotEmpty) {
      venues = venues
          .where((venue) => filters.providers.contains(venue.provider))
          .toList();
    }

    // Apply special filters
    if (filters.specialFilters.contains("recommended")) {
      venues = venues.where((venue) => venue.isRecommended).toList();
    }

    if (filters.savedOnly) {
      venues = venues.where((venue) => venue.isSaved).toList();
    }

    if (filters.availableNow) {
      venues = venues.where((venue) {
        return venue.activities.any((activity) {
          return activity.schedule.any(
            (schedule) => schedule.day == "today" && schedule.spotsLeft > 0,
          );
        });
      }).toList();
    }

    return venues;
  }

  /// Generate personalized sections for browse screen
  static List<BrowseSection> _generateSections(
    WellnessBrowsingContext context,
    List<WellnessVenue> allVenues,
  ) {
    final sections = <BrowseSection>[];

    // Recommended section (always first if user has recommendations)
    final recommendedVenues = allVenues.where((v) => v.isRecommended).toList();
    if (recommendedVenues.isNotEmpty) {
      sections.add(
        BrowseSection(
          id: "recommended",
          title: "Recommended for You",
          subtitle: "Based on your preferences and what's worked before",
          layout: BrowseSectionLayout.horizontalScroll,
          items: recommendedVenues,
          reasoning: [
            "Morning yoga before meetings has boosted your HRV 18%",
            "You prefer highly-rated studios",
            "Advanced recovery tech matches your wellness goals",
          ],
        ),
      );
    }

    // Available tonight section (context-dependent)
    final timeOfDay = _getTimeOfDay(context.timeContext.currentTime);
    if (timeOfDay == "afternoon" || timeOfDay == "evening") {
      final availableTonight = allVenues.where((venue) {
        return venue.activities.any((activity) {
          return activity.schedule.any((schedule) {
            if (schedule.day == "today") {
              final time = schedule.time.split(":");
              final hour = int.parse(time[0]);
              return hour >= 18 && hour <= 20 && schedule.spotsLeft > 0;
            }
            return false;
          });
        });
      }).toList();

      if (availableTonight.isNotEmpty) {
        sections.add(
          BrowseSection(
            id: "available_tonight",
            title: "Available Tonight",
            subtitle: "Classes starting 6-8pm",
            layout: BrowseSectionLayout.list,
            items: availableTonight,
          ),
        );
      }
    }

    // Near you section
    final nearbyVenues =
        allVenues.where((venue) => venue.distance.fromUser <= 1.0).toList()
          ..sort((a, b) => a.distance.fromUser.compareTo(b.distance.fromUser));

    if (nearbyVenues.isNotEmpty) {
      sections.add(
        BrowseSection(
          id: "near_you",
          title: "Near ${context.location.current.userBase.split(',')[0]}",
          subtitle: "Walking distance",
          layout: BrowseSectionLayout.grid,
          items: nearbyVenues,
          sortBy: "distance",
        ),
      );
    }

    // Your favorites section
    final savedVenues = allVenues.where((v) => v.isSaved).toList();
    if (savedVenues.isNotEmpty) {
      sections.add(
        BrowseSection(
          id: "your_favorites",
          title: "Your Favorites",
          subtitle: "Venues you've saved",
          layout: BrowseSectionLayout.horizontalScroll,
          items: savedVenues,
          count: savedVenues.length,
        ),
      );
    }

    // Popular section
    final popularVenues =
        allVenues.where((venue) => venue.rating >= 4.5).toList()
          ..sort((a, b) => b.rating.compareTo(a.rating));

    if (popularVenues.isNotEmpty) {
      sections.add(
        BrowseSection(
          id: "popular",
          title: "Popular in ${context.location.current.city}",
          subtitle: "Top rated by other users",
          layout: BrowseSectionLayout.list,
          items: popularVenues.take(5).toList(),
          sortBy: "rating",
        ),
      );
    }

    return sections;
  }

  /// Generate quick filters based on current data
  static List<QuickFilter> _generateQuickFilters(List<WellnessVenue> venues) {
    final availableNow = venues.where((venue) {
      return venue.activities.any((activity) {
        return activity.schedule.any(
          (schedule) => schedule.day == "today" && schedule.spotsLeft > 0,
        );
      });
    }).length;

    final recommended = venues.where((v) => v.isRecommended).length;
    final nearby = venues.where((v) => v.distance.fromUser <= 1.0).length;
    final saved = venues.where((v) => v.isSaved).length;

    return [
      QuickFilter(
        label: "Available Now",
        count: availableNow,
        active: false,
        filterId: "available_now",
      ),
      QuickFilter(
        label: "Recommended",
        count: recommended,
        active: true,
        filterId: "recommended",
      ),
      QuickFilter(
        label: "Nearby",
        count: nearby,
        active: false,
        filterId: "nearby",
      ),
      QuickFilter(
        label: "Your Favorites",
        count: saved,
        active: false,
        filterId: "saved",
      ),
    ];
  }

  /// Determine time of day from DateTime
  static String _getTimeOfDay(DateTime currentTime) {
    final hour = currentTime.hour;

    if (hour >= 6 && hour < 9) return "morning";
    if (hour >= 9 && hour < 12) return "late_morning";
    if (hour >= 12 && hour < 17) return "afternoon";
    if (hour >= 17 && hour < 21) return "evening";
    return "night";
  }

  /// Generate contextual greeting
  static String _generateGreeting(String timeOfDay) {
    switch (timeOfDay) {
      case "morning":
        return "Good morning!";
      case "late_morning":
        return "Good morning!";
      case "afternoon":
        return "Good afternoon!";
      case "evening":
        return "Good evening!";
      default:
        return "Hello!";
    }
  }

  /// Generate contextual message
  static String _generateContextMessage(
    WellnessBrowsingContext context,
    String timeOfDay,
  ) {
    final city = context.location.current.city;

    switch (timeOfDay) {
      case "morning":
        return "Here's what's available to start your day in $city";
      case "afternoon":
        return "Here's what's available near you in $city";
      case "evening":
        return "Wind down your day with these options in $city";
      default:
        return "Here's what's available near you in $city";
    }
  }

  /// Generate filter summary
  static String _generateFilterSummary(
    int venueCount,
    WellnessBrowsingContext context,
  ) {
    return "$venueCount options • Within 2 mi of ${context.location.current.userBase.split(',')[0]}";
  }

  /// Search venues by query
  static List<WellnessVenue> searchVenues(String query) {
    final lowercaseQuery = query.toLowerCase();

    return MockWellnessBrowserData.venues.where((venue) {
      // Search in venue name
      if (venue.name.toLowerCase().contains(lowercaseQuery)) return true;

      // Search in venue type
      if (venue.type.displayName.toLowerCase().contains(lowercaseQuery)) {
        return true;
      }

      // Search in activities
      if (venue.activities.any(
        (activity) =>
            activity.name.toLowerCase().contains(lowercaseQuery) ||
            activity.type.toLowerCase().contains(lowercaseQuery),
      )) {
        return true;
      }

      // Search in tags
      if (venue.tags.any((tag) => tag.toLowerCase().contains(lowercaseQuery))) {
        return true;
      }

      // Search in highlights
      if (venue.highlights.any(
        (highlight) => highlight.toLowerCase().contains(lowercaseQuery),
      )) {
        return true;
      }

      return false;
    }).toList();
  }

  /// Get venue by ID
  static WellnessVenue? getVenueById(String id) {
    try {
      return MockWellnessBrowserData.venues.firstWhere(
        (venue) => venue.id == id,
      );
    } catch (e) {
      return null;
    }
  }

  /// Get venues by activity type
  static List<WellnessVenue> getVenuesByActivity(String activityType) {
    return MockWellnessBrowserData.venues.where((venue) {
      return venue.activities.any(
        (activity) => activity.type.toLowerCase() == activityType.toLowerCase(),
      );
    }).toList();
  }

  /// Get discovery suggestions
  static Map<String, List<WellnessVenue>> getDiscoverySuggestions(
    WellnessBrowsingContext context,
  ) {
    final suggestions = <String, List<WellnessVenue>>{};

    // Based on recent searches
    if (context.userPreferences.recentSearches.isNotEmpty) {
      final recentSearch = context.userPreferences.recentSearches.first;
      final relatedVenues = searchVenues(recentSearch);
      if (relatedVenues.isNotEmpty) {
        suggestions["Since you searched for $recentSearch..."] = relatedVenues
            .take(3)
            .toList();
      }
    }

    // New venues in the area
    final newVenues = MockWellnessBrowserData.venues
        .where((venue) => !venue.tags.contains("established"))
        .take(3)
        .toList();
    if (newVenues.isNotEmpty) {
      suggestions["New in ${context.location.current.city}"] = newVenues;
    }

    // Hidden gems (high rated but less crowded)
    final hiddenGems = MockWellnessBrowserData.venues
        .where((venue) => venue.rating >= 4.5 && venue.reviewCount < 200)
        .take(3)
        .toList();
    if (hiddenGems.isNotEmpty) {
      suggestions["Hidden gems"] = hiddenGems;
    }

    return suggestions;
  }
}
