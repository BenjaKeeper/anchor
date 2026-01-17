import 'package:freezed_annotation/freezed_annotation.dart';

part 'discovery_models.freezed.dart';
part 'discovery_models.g.dart';

// ============================================================================
// ENUMS
// ============================================================================

/// Type of context for a wellness time window
enum ContextType {
  preMeeting,
  postWork,
  preTravel,
  postTravel,
  recovery,
  burnoutPrevention,
  routineMaintenance;

  String get displayName {
    switch (this) {
      case ContextType.preMeeting:
        return 'Pre-Meeting';
      case ContextType.postWork:
        return 'Post-Work';
      case ContextType.preTravel:
        return 'Pre-Travel';
      case ContextType.postTravel:
        return 'Post-Travel';
      case ContextType.recovery:
        return 'Recovery';
      case ContextType.burnoutPrevention:
        return 'Burnout Prevention';
      case ContextType.routineMaintenance:
        return 'Routine Maintenance';
    }
  }
}

/// User's estimated energy level
enum EnergyLevel {
  low,
  moderate,
  high;

  String get displayName {
    switch (this) {
      case EnergyLevel.low:
        return 'Low';
      case EnergyLevel.moderate:
        return 'Moderate';
      case EnergyLevel.high:
        return 'High';
    }
  }
}

/// Activity intensity preference
enum ActivityIntensity {
  gentle,
  moderate,
  intense;

  String get displayName {
    switch (this) {
      case ActivityIntensity.gentle:
        return 'Gentle';
      case ActivityIntensity.moderate:
        return 'Moderate';
      case ActivityIntensity.intense:
        return 'Intense';
    }
  }
}

/// Preference level for activities
enum PreferenceLevel { preferred, neutral, disliked }

/// Type of provider
enum ProviderType {
  classpass,
  gympass,
  googlePlaces,
  free;

  String get displayName {
    switch (this) {
      case ProviderType.classpass:
        return 'ClassPass';
      case ProviderType.gympass:
        return 'Gympass';
      case ProviderType.googlePlaces:
        return 'Google Places';
      case ProviderType.free:
        return 'Free/DIY';
    }
  }
}

/// Time of day preference
enum TimeOfDay {
  morning,
  midday,
  afternoon,
  evening;

  String get displayName {
    switch (this) {
      case TimeOfDay.morning:
        return 'Morning';
      case TimeOfDay.midday:
        return 'Midday';
      case TimeOfDay.afternoon:
        return 'Afternoon';
      case TimeOfDay.evening:
        return 'Evening';
    }
  }
}

/// Type of user base (hotel, home, etc.)
enum UserBaseType {
  hotel,
  home,
  airbnb,
  office;

  String get displayName {
    switch (this) {
      case UserBaseType.hotel:
        return 'Hotel';
      case UserBaseType.home:
        return 'Home';
      case UserBaseType.airbnb:
        return 'Airbnb';
      case UserBaseType.office:
        return 'Office';
    }
  }
}

// ============================================================================
// LOCATION MODELS
// ============================================================================

/// Geographic coordinates
@freezed
abstract class Coordinates with _$Coordinates {
  const factory Coordinates({
    required double latitude,
    required double longitude,
  }) = _Coordinates;

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);
}

/// Current user location
@freezed
abstract class UserLocation with _$UserLocation {
  const factory UserLocation({
    required String city,
    required Coordinates coordinates,
    required String timezone,
  }) = _UserLocation;

  factory UserLocation.fromJson(Map<String, dynamic> json) =>
      _$UserLocationFromJson(json);
}

/// User's base location (hotel, home, etc.)
@freezed
abstract class UserBase with _$UserBase {
  const factory UserBase({
    required UserBaseType type,
    required String name,
    required String address,
    required Coordinates coordinates,
  }) = _UserBase;

  factory UserBase.fromJson(Map<String, dynamic> json) =>
      _$UserBaseFromJson(json);
}

/// Upcoming travel location
@freezed
abstract class UpcomingLocation with _$UpcomingLocation {
  const factory UpcomingLocation({
    required String city,
    required DateTime arrivalDate,
    required DateTime departureDate,
    String? userBaseName,
    Coordinates? coordinates,
  }) = _UpcomingLocation;

  factory UpcomingLocation.fromJson(Map<String, dynamic> json) =>
      _$UpcomingLocationFromJson(json);
}

/// Complete location context
@freezed
abstract class LocationContext with _$LocationContext {
  const factory LocationContext({
    required UserLocation currentLocation,
    required UserBase userBase,
    @Default([]) List<UpcomingLocation> upcomingLocations,
  }) = _LocationContext;

  factory LocationContext.fromJson(Map<String, dynamic> json) =>
      _$LocationContextFromJson(json);
}

// ============================================================================
// TIME WINDOW MODELS
// ============================================================================

/// Available time window for wellness activity
@freezed
abstract class TimeWindow with _$TimeWindow {
  const factory TimeWindow({
    required DateTime date,
    required String startTime,
    required String endTime,
    required int durationMinutes,
    String? beforeEvent,
    String? afterEvent,
    required String location,
  }) = _TimeWindow;

  factory TimeWindow.fromJson(Map<String, dynamic> json) =>
      _$TimeWindowFromJson(json);
}

/// Collection of available time windows
@freezed
abstract class AvailableWindows with _$AvailableWindows {
  const factory AvailableWindows({@Default([]) List<TimeWindow> windows}) =
      _AvailableWindows;

  factory AvailableWindows.fromJson(Map<String, dynamic> json) =>
      _$AvailableWindowsFromJson(json);
}

// ============================================================================
// PREFERENCE MODELS
// ============================================================================

/// Learned pattern from user history
@freezed
abstract class LearnedPattern with _$LearnedPattern {
  const factory LearnedPattern({
    required String activityType,
    required String context,
    required String effectivenessMetric,
    required double effectivenessValue,
    required String description,
  }) = _LearnedPattern;

  factory LearnedPattern.fromJson(Map<String, dynamic> json) =>
      _$LearnedPatternFromJson(json);
}

/// Activity preferences categorized
@freezed
abstract class ActivityPreferences with _$ActivityPreferences {
  const factory ActivityPreferences({
    @Default([]) List<String> preferred,
    @Default([]) List<String> neutral,
    @Default([]) List<String> disliked,
  }) = _ActivityPreferences;

  factory ActivityPreferences.fromJson(Map<String, dynamic> json) =>
      _$ActivityPreferencesFromJson(json);
}

/// Timing preferences
@freezed
abstract class TimingPreferences with _$TimingPreferences {
  const factory TimingPreferences({
    @Default([]) List<TimeOfDay> preferredTimes,
    @Default([]) List<TimeOfDay> avoidTimes,
  }) = _TimingPreferences;

  factory TimingPreferences.fromJson(Map<String, dynamic> json) =>
      _$TimingPreferencesFromJson(json);
}

/// Complete user preferences
@freezed
abstract class UserPreferences with _$UserPreferences {
  const factory UserPreferences({
    required ActivityPreferences activities,
    required TimingPreferences timing,
    required ActivityIntensity intensity,
    required String maxDistance,
    required double maxPrice,
    @Default([]) List<LearnedPattern> learnedPatterns,
  }) = _UserPreferences;

  factory UserPreferences.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesFromJson(json);
}

// ============================================================================
// PROVIDER MODELS
// ============================================================================

/// Provider availability info
@freezed
abstract class ProviderInfo with _$ProviderInfo {
  const factory ProviderInfo({
    required ProviderType type,
    required bool available,
    required bool userHasAccount,
  }) = _ProviderInfo;

  factory ProviderInfo.fromJson(Map<String, dynamic> json) =>
      _$ProviderInfoFromJson(json);
}

/// Available providers
@freezed
abstract class AvailableProviders with _$AvailableProviders {
  const factory AvailableProviders({
    @Default([]) List<ProviderInfo> providers,
  }) = _AvailableProviders;

  factory AvailableProviders.fromJson(Map<String, dynamic> json) =>
      _$AvailableProvidersFromJson(json);
}

// ============================================================================
// WELLNESS OPTION MODELS
// ============================================================================

/// Details of a wellness option
@freezed
abstract class WellnessOptionDetails with _$WellnessOptionDetails {
  const factory WellnessOptionDetails({
    required String address,
    required String distance,
    required String time,
    required int durationMinutes,
    required String price,
    double? rating,
    int? spotsAvailable,
    @Default([]) List<String> amenities,
    bool? weatherDependent,
    String? weatherForecast,
    String? suggestedRoute,
  }) = _WellnessOptionDetails;

  factory WellnessOptionDetails.fromJson(Map<String, dynamic> json) =>
      _$WellnessOptionDetailsFromJson(json);
}

/// Booking information for an option
@freezed
abstract class BookingInfo with _$BookingInfo {
  const factory BookingInfo({
    required bool canBookNow,
    required String requiresAction,
    String? cancellationPolicy,
    String? note,
  }) = _BookingInfo;

  factory BookingInfo.fromJson(Map<String, dynamic> json) =>
      _$BookingInfoFromJson(json);
}

/// Explanation for why an option is recommended
@freezed
abstract class WhyRecommended with _$WhyRecommended {
  const factory WhyRecommended({
    required String primary,
    String? secondary,
    String? convenience,
    String? caveat,
  }) = _WhyRecommended;

  factory WhyRecommended.fromJson(Map<String, dynamic> json) =>
      _$WhyRecommendedFromJson(json);
}

/// Score breakdown for an option
@freezed
abstract class ScoreBreakdown with _$ScoreBreakdown {
  const factory ScoreBreakdown({
    required double preferenceMatch,
    required double contextualFit,
    required double historicalEffectiveness,
    required double convenience,
    required double availability,
  }) = _ScoreBreakdown;

  factory ScoreBreakdown.fromJson(Map<String, dynamic> json) =>
      _$ScoreBreakdownFromJson(json);
}

/// A wellness option
@freezed
abstract class WellnessOption with _$WellnessOption {
  const factory WellnessOption({
    required int rank,
    required double score,
    required String type,
    required String name,
    required ProviderType provider,
    required WellnessOptionDetails details,
    required WhyRecommended whyThisOption,
    required BookingInfo bookingInfo,
    required ScoreBreakdown scoreBreakdown,
  }) = _WellnessOption;

  factory WellnessOption.fromJson(Map<String, dynamic> json) =>
      _$WellnessOptionFromJson(json);
}

// ============================================================================
// SEARCH & RESULT MODELS
// ============================================================================

/// Search context for discovery
@freezed
abstract class SearchContext with _$SearchContext {
  const factory SearchContext({
    required DateTime date,
    required String window,
    required String location,
    required ContextType contextType,
    required EnergyLevel userEnergyEstimate,
    String? weatherForecast,
  }) = _SearchContext;

  factory SearchContext.fromJson(Map<String, dynamic> json) =>
      _$SearchContextFromJson(json);
}

/// Top recommendation with reasoning
@freezed
abstract class Recommendation with _$Recommendation {
  const factory Recommendation({
    required String topPick,
    required String reasoning,
    String? alternativeIfPreferred,
  }) = _Recommendation;

  factory Recommendation.fromJson(Map<String, dynamic> json) =>
      _$RecommendationFromJson(json);
}

/// Complete discovery result
@freezed
abstract class DiscoveryResult with _$DiscoveryResult {
  const factory DiscoveryResult({
    required SearchContext searchContext,
    required List<WellnessOption> options,
    required Recommendation recommendation,
    required String conversationalPresentation,
  }) = _DiscoveryResult;

  factory DiscoveryResult.fromJson(Map<String, dynamic> json) =>
      _$DiscoveryResultFromJson(json);
}

// ============================================================================
// RAW OPTION (for internal processing)
// ============================================================================

/// Raw wellness option before scoring
@freezed
abstract class RawWellnessOption with _$RawWellnessOption {
  const factory RawWellnessOption({
    required String type,
    required String name,
    required ProviderType provider,
    required WellnessOptionDetails details,
    required BookingInfo bookingInfo,
  }) = _RawWellnessOption;

  factory RawWellnessOption.fromJson(Map<String, dynamic> json) =>
      _$RawWellnessOptionFromJson(json);
}
