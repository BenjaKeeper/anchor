import 'package:freezed_annotation/freezed_annotation.dart';

part 'wellness_browser_models.freezed.dart';
part 'wellness_browser_models.g.dart';

/// User's current location and context
@freezed
abstract class LocationContext with _$LocationContext {
  const factory LocationContext({
    required UserLocation current,
    @Default([]) List<FutureLocation> upcoming,
  }) = _LocationContext;

  factory LocationContext.fromJson(Map<String, dynamic> json) =>
      _$LocationContextFromJson(json);
}

/// Current user location
@freezed
abstract class UserLocation with _$UserLocation {
  const factory UserLocation({
    required String city,
    required List<double> coordinates, // [lat, lng]
    required String userBase,
  }) = _UserLocation;

  factory UserLocation.fromJson(Map<String, dynamic> json) =>
      _$UserLocationFromJson(json);
}

/// Future location for traveling users
@freezed
abstract class FutureLocation with _$FutureLocation {
  const factory FutureLocation({
    required String city,
    required String dates,
    required String userBase,
    List<double>? coordinates,
  }) = _FutureLocation;

  factory FutureLocation.fromJson(Map<String, dynamic> json) =>
      _$FutureLocationFromJson(json);
}

/// Time context for user
@freezed
abstract class TimeContext with _$TimeContext {
  const factory TimeContext({
    required DateTime currentTime,
    @Default([]) List<AvailabilityWindow> todayAvailability,
    @Default([]) List<AvailabilityWindow> tomorrowAvailability,
  }) = _TimeContext;

  factory TimeContext.fromJson(Map<String, dynamic> json) =>
      _$TimeContextFromJson(json);
}

/// User availability window
@freezed
abstract class AvailabilityWindow with _$AvailabilityWindow {
  const factory AvailabilityWindow({
    required String start, // "18:00"
    required String end, // "20:00"
  }) = _AvailabilityWindow;

  factory AvailabilityWindow.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityWindowFromJson(json);
}

/// User preferences for wellness activities
@freezed
abstract class UserPreferences with _$UserPreferences {
  const factory UserPreferences({
    @Default([]) List<String> favoriteActivities,
    @Default([]) List<String> recentSearches,
    @Default([]) List<String> savedVenues,
    @Default([]) List<String> dislikedActivities,
  }) = _UserPreferences;

  factory UserPreferences.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesFromJson(json);
}

/// Complete user context for wellness browsing
@freezed
abstract class WellnessBrowsingContext with _$WellnessBrowsingContext {
  const factory WellnessBrowsingContext({
    required LocationContext location,
    required TimeContext timeContext,
    required UserPreferences userPreferences,
  }) = _WellnessBrowsingContext;

  factory WellnessBrowsingContext.fromJson(Map<String, dynamic> json) =>
      _$WellnessBrowsingContextFromJson(json);
}

/// Types of wellness venues
enum VenueType {
  yogaStudio,
  gym,
  spa,
  massageCenter,
  pilatesStudio,
  boxingGym,
  swimmingPool,
  meditationCenter,
  outdoorSpace,
  other;

  String get displayName {
    switch (this) {
      case VenueType.yogaStudio:
        return 'Yoga Studio';
      case VenueType.gym:
        return 'Gym';
      case VenueType.spa:
        return 'Spa';
      case VenueType.massageCenter:
        return 'Massage Center';
      case VenueType.pilatesStudio:
        return 'Pilates Studio';
      case VenueType.boxingGym:
        return 'Boxing Gym';
      case VenueType.swimmingPool:
        return 'Swimming Pool';
      case VenueType.meditationCenter:
        return 'Meditation Center';
      case VenueType.outdoorSpace:
        return 'Outdoor Space';
      case VenueType.other:
        return 'Wellness Center';
    }
  }
}

/// Activity intensity levels
enum ActivityIntensity {
  low,
  moderate,
  high,
  allLevels;

  String get displayName {
    switch (this) {
      case ActivityIntensity.low:
        return 'Low';
      case ActivityIntensity.moderate:
        return 'Moderate';
      case ActivityIntensity.high:
        return 'High';
      case ActivityIntensity.allLevels:
        return 'All Levels';
    }
  }
}

/// Price levels
enum PriceLevel {
  free,
  budget,
  moderate,
  premium;

  String get displayName {
    switch (this) {
      case PriceLevel.free:
        return 'Free';
      case PriceLevel.budget:
        return r'$';
      case PriceLevel.moderate:
        return r'$$';
      case PriceLevel.premium:
        return r'$$$';
    }
  }
}

/// Providers for booking
enum WellnessProvider {
  classpass,
  gympass,
  wellhub,
  dropIn,
  membership,
  free;

  String get displayName {
    switch (this) {
      case WellnessProvider.classpass:
        return 'ClassPass';
      case WellnessProvider.gympass:
        return 'Gympass';
      case WellnessProvider.wellhub:
        return 'Wellhub';
      case WellnessProvider.dropIn:
        return 'Drop-in';
      case WellnessProvider.membership:
        return 'Membership';
      case WellnessProvider.free:
        return 'Free';
    }
  }
}

/// Distance information
@freezed
abstract class DistanceInfo with _$DistanceInfo {
  const factory DistanceInfo({
    required double fromUser,
    required String unit,
    required int walkTime,
  }) = _DistanceInfo;

  factory DistanceInfo.fromJson(Map<String, dynamic> json) =>
      _$DistanceInfoFromJson(json);
}

/// Class/session schedule
@freezed
abstract class ClassSchedule with _$ClassSchedule {
  const factory ClassSchedule({
    required String day, // "today", "tomorrow", "2026-01-21"
    required String time, // "18:30"
    required int duration, // minutes
    required int spotsLeft,
  }) = _ClassSchedule;

  factory ClassSchedule.fromJson(Map<String, dynamic> json) =>
      _$ClassScheduleFromJson(json);
}

/// Specific activity within a venue
@freezed
abstract class WellnessActivity with _$WellnessActivity {
  const factory WellnessActivity({
    required String id,
    required String name,
    required String type, // "yoga", "pilates", etc.
    required ActivityIntensity intensity,
    @Default([]) List<ClassSchedule> schedule,
    String? instructor,
    String? level,
    String? description,
  }) = _WellnessActivity;

  factory WellnessActivity.fromJson(Map<String, dynamic> json) =>
      _$WellnessActivityFromJson(json);
}

/// Pricing information
@freezed
abstract class PricingInfo with _$PricingInfo {
  const factory PricingInfo({
    String? classpassCredits,
    double? dropInPrice,
    double? monthlyMembership,
    String? bestValue,
  }) = _PricingInfo;

  factory PricingInfo.fromJson(Map<String, dynamic> json) =>
      _$PricingInfoFromJson(json);
}

/// User's historical data with venue
@freezed
abstract class UserVenueHistory with _$UserVenueHistory {
  const factory UserVenueHistory({
    required int visitCount,
    DateTime? lastVisit,
    String? favoriteActivity,
    double? averageRating,
    String? hrvImpact,
    double? completionRate,
  }) = _UserVenueHistory;

  factory UserVenueHistory.fromJson(Map<String, dynamic> json) =>
      _$UserVenueHistoryFromJson(json);
}

/// A wellness venue with all its information
@freezed
abstract class WellnessVenue with _$WellnessVenue {
  const factory WellnessVenue({
    required String id,
    required String name,
    required VenueType type,
    required String address,
    required List<double> coordinates,
    required DistanceInfo distance,
    required WellnessProvider provider,
    required double rating,
    required int reviewCount,
    required PriceLevel priceLevel,
    required PricingInfo pricing,
    @Default([]) List<String> amenities,
    @Default([]) List<WellnessActivity> activities,
    @Default([]) List<String> images,
    @Default([]) List<String> highlights,
    String? phone,
    String? website,
    String? description,
    @Default([]) List<String> tags,
    UserVenueHistory? userHistory,
    @Default(false) bool isSaved,
    @Default(false) bool isRecommended,
    String? recommendationReason,
  }) = _WellnessVenue;

  factory WellnessVenue.fromJson(Map<String, dynamic> json) =>
      _$WellnessVenueFromJson(json);
}

/// Filter options for browsing
@freezed
abstract class WellnessFilters with _$WellnessFilters {
  const factory WellnessFilters({
    @Default([]) List<String> activityTypes,
    @Default([]) List<String> timeSlots,
    double? maxDistance,
    @Default([]) List<PriceLevel> priceRange,
    @Default([]) List<ActivityIntensity> intensity,
    @Default([]) List<String> amenities,
    @Default([]) List<WellnessProvider> providers,
    @Default([])
    List<String> specialFilters, // "recommended", "new_to_you", etc.
    @Default(false) bool availableNow,
    @Default(false) bool savedOnly,
  }) = _WellnessFilters;

  factory WellnessFilters.fromJson(Map<String, dynamic> json) =>
      _$WellnessFiltersFromJson(json);
}

/// Browse screen section
@freezed
abstract class BrowseSection with _$BrowseSection {
  const factory BrowseSection({
    required String id,
    required String title,
    String? subtitle,
    required BrowseSectionLayout layout,
    required List<WellnessVenue> items,
    @Default([]) List<String> reasoning,
    String? sortBy,
    int? count,
  }) = _BrowseSection;

  factory BrowseSection.fromJson(Map<String, dynamic> json) =>
      _$BrowseSectionFromJson(json);
}

/// Layout types for browse sections
enum BrowseSectionLayout { horizontalScroll, list, grid }

/// Quick filter for browse screen
@freezed
abstract class QuickFilter with _$QuickFilter {
  const factory QuickFilter({
    required String label,
    required int count,
    required bool active,
    String? filterId,
  }) = _QuickFilter;

  factory QuickFilter.fromJson(Map<String, dynamic> json) =>
      _$QuickFilterFromJson(json);
}

/// Browse screen state
@freezed
abstract class WellnessBrowseState with _$WellnessBrowseState {
  const factory WellnessBrowseState({
    required WellnessBrowsingContext context,
    required List<BrowseSection> sections,
    required List<QuickFilter> quickFilters,
    required WellnessFilters activeFilters,
    required String headerGreeting,
    required String contextMessage,
    required String filterSummary,
    @Default([]) List<WellnessVenue> mapMarkers,
    @Default(false) bool showMap,
    @Default(false) bool isLoading,
    String? error,
  }) = _WellnessBrowseState;

  factory WellnessBrowseState.fromJson(Map<String, dynamic> json) =>
      _$WellnessBrowseStateFromJson(json);
}
