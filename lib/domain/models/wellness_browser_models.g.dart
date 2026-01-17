// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wellness_browser_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocationContext _$LocationContextFromJson(Map<String, dynamic> json) =>
    _LocationContext(
      current: UserLocation.fromJson(json['current'] as Map<String, dynamic>),
      upcoming:
          (json['upcoming'] as List<dynamic>?)
              ?.map((e) => FutureLocation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$LocationContextToJson(_LocationContext instance) =>
    <String, dynamic>{
      'current': instance.current,
      'upcoming': instance.upcoming,
    };

_UserLocation _$UserLocationFromJson(Map<String, dynamic> json) =>
    _UserLocation(
      city: json['city'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      userBase: json['userBase'] as String,
    );

Map<String, dynamic> _$UserLocationToJson(_UserLocation instance) =>
    <String, dynamic>{
      'city': instance.city,
      'coordinates': instance.coordinates,
      'userBase': instance.userBase,
    };

_FutureLocation _$FutureLocationFromJson(Map<String, dynamic> json) =>
    _FutureLocation(
      city: json['city'] as String,
      dates: json['dates'] as String,
      userBase: json['userBase'] as String,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$FutureLocationToJson(_FutureLocation instance) =>
    <String, dynamic>{
      'city': instance.city,
      'dates': instance.dates,
      'userBase': instance.userBase,
      'coordinates': instance.coordinates,
    };

_TimeContext _$TimeContextFromJson(Map<String, dynamic> json) => _TimeContext(
  currentTime: DateTime.parse(json['currentTime'] as String),
  todayAvailability:
      (json['todayAvailability'] as List<dynamic>?)
          ?.map((e) => AvailabilityWindow.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  tomorrowAvailability:
      (json['tomorrowAvailability'] as List<dynamic>?)
          ?.map((e) => AvailabilityWindow.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$TimeContextToJson(_TimeContext instance) =>
    <String, dynamic>{
      'currentTime': instance.currentTime.toIso8601String(),
      'todayAvailability': instance.todayAvailability,
      'tomorrowAvailability': instance.tomorrowAvailability,
    };

_AvailabilityWindow _$AvailabilityWindowFromJson(Map<String, dynamic> json) =>
    _AvailabilityWindow(
      start: json['start'] as String,
      end: json['end'] as String,
    );

Map<String, dynamic> _$AvailabilityWindowToJson(_AvailabilityWindow instance) =>
    <String, dynamic>{'start': instance.start, 'end': instance.end};

_UserPreferences _$UserPreferencesFromJson(Map<String, dynamic> json) =>
    _UserPreferences(
      favoriteActivities:
          (json['favoriteActivities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      recentSearches:
          (json['recentSearches'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      savedVenues:
          (json['savedVenues'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      dislikedActivities:
          (json['dislikedActivities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$UserPreferencesToJson(_UserPreferences instance) =>
    <String, dynamic>{
      'favoriteActivities': instance.favoriteActivities,
      'recentSearches': instance.recentSearches,
      'savedVenues': instance.savedVenues,
      'dislikedActivities': instance.dislikedActivities,
    };

_WellnessBrowsingContext _$WellnessBrowsingContextFromJson(
  Map<String, dynamic> json,
) => _WellnessBrowsingContext(
  location: LocationContext.fromJson(json['location'] as Map<String, dynamic>),
  timeContext: TimeContext.fromJson(
    json['timeContext'] as Map<String, dynamic>,
  ),
  userPreferences: UserPreferences.fromJson(
    json['userPreferences'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$WellnessBrowsingContextToJson(
  _WellnessBrowsingContext instance,
) => <String, dynamic>{
  'location': instance.location,
  'timeContext': instance.timeContext,
  'userPreferences': instance.userPreferences,
};

_DistanceInfo _$DistanceInfoFromJson(Map<String, dynamic> json) =>
    _DistanceInfo(
      fromUser: (json['fromUser'] as num).toDouble(),
      unit: json['unit'] as String,
      walkTime: (json['walkTime'] as num).toInt(),
    );

Map<String, dynamic> _$DistanceInfoToJson(_DistanceInfo instance) =>
    <String, dynamic>{
      'fromUser': instance.fromUser,
      'unit': instance.unit,
      'walkTime': instance.walkTime,
    };

_ClassSchedule _$ClassScheduleFromJson(Map<String, dynamic> json) =>
    _ClassSchedule(
      day: json['day'] as String,
      time: json['time'] as String,
      duration: (json['duration'] as num).toInt(),
      spotsLeft: (json['spotsLeft'] as num).toInt(),
    );

Map<String, dynamic> _$ClassScheduleToJson(_ClassSchedule instance) =>
    <String, dynamic>{
      'day': instance.day,
      'time': instance.time,
      'duration': instance.duration,
      'spotsLeft': instance.spotsLeft,
    };

_WellnessActivity _$WellnessActivityFromJson(Map<String, dynamic> json) =>
    _WellnessActivity(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      intensity: $enumDecode(_$ActivityIntensityEnumMap, json['intensity']),
      schedule:
          (json['schedule'] as List<dynamic>?)
              ?.map((e) => ClassSchedule.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      instructor: json['instructor'] as String?,
      level: json['level'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$WellnessActivityToJson(_WellnessActivity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'intensity': _$ActivityIntensityEnumMap[instance.intensity]!,
      'schedule': instance.schedule,
      'instructor': instance.instructor,
      'level': instance.level,
      'description': instance.description,
    };

const _$ActivityIntensityEnumMap = {
  ActivityIntensity.low: 'low',
  ActivityIntensity.moderate: 'moderate',
  ActivityIntensity.high: 'high',
  ActivityIntensity.allLevels: 'allLevels',
};

_PricingInfo _$PricingInfoFromJson(Map<String, dynamic> json) => _PricingInfo(
  classpassCredits: json['classpassCredits'] as String?,
  dropInPrice: (json['dropInPrice'] as num?)?.toDouble(),
  monthlyMembership: (json['monthlyMembership'] as num?)?.toDouble(),
  bestValue: json['bestValue'] as String?,
);

Map<String, dynamic> _$PricingInfoToJson(_PricingInfo instance) =>
    <String, dynamic>{
      'classpassCredits': instance.classpassCredits,
      'dropInPrice': instance.dropInPrice,
      'monthlyMembership': instance.monthlyMembership,
      'bestValue': instance.bestValue,
    };

_UserVenueHistory _$UserVenueHistoryFromJson(Map<String, dynamic> json) =>
    _UserVenueHistory(
      visitCount: (json['visitCount'] as num).toInt(),
      lastVisit: json['lastVisit'] == null
          ? null
          : DateTime.parse(json['lastVisit'] as String),
      favoriteActivity: json['favoriteActivity'] as String?,
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      hrvImpact: json['hrvImpact'] as String?,
      completionRate: (json['completionRate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UserVenueHistoryToJson(_UserVenueHistory instance) =>
    <String, dynamic>{
      'visitCount': instance.visitCount,
      'lastVisit': instance.lastVisit?.toIso8601String(),
      'favoriteActivity': instance.favoriteActivity,
      'averageRating': instance.averageRating,
      'hrvImpact': instance.hrvImpact,
      'completionRate': instance.completionRate,
    };

_WellnessVenue _$WellnessVenueFromJson(
  Map<String, dynamic> json,
) => _WellnessVenue(
  id: json['id'] as String,
  name: json['name'] as String,
  type: $enumDecode(_$VenueTypeEnumMap, json['type']),
  address: json['address'] as String,
  coordinates: (json['coordinates'] as List<dynamic>)
      .map((e) => (e as num).toDouble())
      .toList(),
  distance: DistanceInfo.fromJson(json['distance'] as Map<String, dynamic>),
  provider: $enumDecode(_$WellnessProviderEnumMap, json['provider']),
  rating: (json['rating'] as num).toDouble(),
  reviewCount: (json['reviewCount'] as num).toInt(),
  priceLevel: $enumDecode(_$PriceLevelEnumMap, json['priceLevel']),
  pricing: PricingInfo.fromJson(json['pricing'] as Map<String, dynamic>),
  amenities:
      (json['amenities'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  activities:
      (json['activities'] as List<dynamic>?)
          ?.map((e) => WellnessActivity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  highlights:
      (json['highlights'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  phone: json['phone'] as String?,
  website: json['website'] as String?,
  description: json['description'] as String?,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  userHistory: json['userHistory'] == null
      ? null
      : UserVenueHistory.fromJson(json['userHistory'] as Map<String, dynamic>),
  isSaved: json['isSaved'] as bool? ?? false,
  isRecommended: json['isRecommended'] as bool? ?? false,
  recommendationReason: json['recommendationReason'] as String?,
);

Map<String, dynamic> _$WellnessVenueToJson(_WellnessVenue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$VenueTypeEnumMap[instance.type]!,
      'address': instance.address,
      'coordinates': instance.coordinates,
      'distance': instance.distance,
      'provider': _$WellnessProviderEnumMap[instance.provider]!,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'priceLevel': _$PriceLevelEnumMap[instance.priceLevel]!,
      'pricing': instance.pricing,
      'amenities': instance.amenities,
      'activities': instance.activities,
      'images': instance.images,
      'highlights': instance.highlights,
      'phone': instance.phone,
      'website': instance.website,
      'description': instance.description,
      'tags': instance.tags,
      'userHistory': instance.userHistory,
      'isSaved': instance.isSaved,
      'isRecommended': instance.isRecommended,
      'recommendationReason': instance.recommendationReason,
    };

const _$VenueTypeEnumMap = {
  VenueType.yogaStudio: 'yogaStudio',
  VenueType.gym: 'gym',
  VenueType.spa: 'spa',
  VenueType.massageCenter: 'massageCenter',
  VenueType.pilatesStudio: 'pilatesStudio',
  VenueType.boxingGym: 'boxingGym',
  VenueType.swimmingPool: 'swimmingPool',
  VenueType.meditationCenter: 'meditationCenter',
  VenueType.outdoorSpace: 'outdoorSpace',
  VenueType.other: 'other',
};

const _$WellnessProviderEnumMap = {
  WellnessProvider.classpass: 'classpass',
  WellnessProvider.gympass: 'gympass',
  WellnessProvider.wellhub: 'wellhub',
  WellnessProvider.dropIn: 'dropIn',
  WellnessProvider.membership: 'membership',
  WellnessProvider.free: 'free',
};

const _$PriceLevelEnumMap = {
  PriceLevel.free: 'free',
  PriceLevel.budget: 'budget',
  PriceLevel.moderate: 'moderate',
  PriceLevel.premium: 'premium',
};

_WellnessFilters _$WellnessFiltersFromJson(
  Map<String, dynamic> json,
) => _WellnessFilters(
  activityTypes:
      (json['activityTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  timeSlots:
      (json['timeSlots'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  maxDistance: (json['maxDistance'] as num?)?.toDouble(),
  priceRange:
      (json['priceRange'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PriceLevelEnumMap, e))
          .toList() ??
      const [],
  intensity:
      (json['intensity'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ActivityIntensityEnumMap, e))
          .toList() ??
      const [],
  amenities:
      (json['amenities'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  providers:
      (json['providers'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$WellnessProviderEnumMap, e))
          .toList() ??
      const [],
  specialFilters:
      (json['specialFilters'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  availableNow: json['availableNow'] as bool? ?? false,
  savedOnly: json['savedOnly'] as bool? ?? false,
);

Map<String, dynamic> _$WellnessFiltersToJson(_WellnessFilters instance) =>
    <String, dynamic>{
      'activityTypes': instance.activityTypes,
      'timeSlots': instance.timeSlots,
      'maxDistance': instance.maxDistance,
      'priceRange': instance.priceRange
          .map((e) => _$PriceLevelEnumMap[e]!)
          .toList(),
      'intensity': instance.intensity
          .map((e) => _$ActivityIntensityEnumMap[e]!)
          .toList(),
      'amenities': instance.amenities,
      'providers': instance.providers
          .map((e) => _$WellnessProviderEnumMap[e]!)
          .toList(),
      'specialFilters': instance.specialFilters,
      'availableNow': instance.availableNow,
      'savedOnly': instance.savedOnly,
    };

_BrowseSection _$BrowseSectionFromJson(Map<String, dynamic> json) =>
    _BrowseSection(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      layout: $enumDecode(_$BrowseSectionLayoutEnumMap, json['layout']),
      items: (json['items'] as List<dynamic>)
          .map((e) => WellnessVenue.fromJson(e as Map<String, dynamic>))
          .toList(),
      reasoning:
          (json['reasoning'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      sortBy: json['sortBy'] as String?,
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BrowseSectionToJson(_BrowseSection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'layout': _$BrowseSectionLayoutEnumMap[instance.layout]!,
      'items': instance.items,
      'reasoning': instance.reasoning,
      'sortBy': instance.sortBy,
      'count': instance.count,
    };

const _$BrowseSectionLayoutEnumMap = {
  BrowseSectionLayout.horizontalScroll: 'horizontalScroll',
  BrowseSectionLayout.list: 'list',
  BrowseSectionLayout.grid: 'grid',
};

_QuickFilter _$QuickFilterFromJson(Map<String, dynamic> json) => _QuickFilter(
  label: json['label'] as String,
  count: (json['count'] as num).toInt(),
  active: json['active'] as bool,
  filterId: json['filterId'] as String?,
);

Map<String, dynamic> _$QuickFilterToJson(_QuickFilter instance) =>
    <String, dynamic>{
      'label': instance.label,
      'count': instance.count,
      'active': instance.active,
      'filterId': instance.filterId,
    };

_WellnessBrowseState _$WellnessBrowseStateFromJson(Map<String, dynamic> json) =>
    _WellnessBrowseState(
      context: WellnessBrowsingContext.fromJson(
        json['context'] as Map<String, dynamic>,
      ),
      sections: (json['sections'] as List<dynamic>)
          .map((e) => BrowseSection.fromJson(e as Map<String, dynamic>))
          .toList(),
      quickFilters: (json['quickFilters'] as List<dynamic>)
          .map((e) => QuickFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      activeFilters: WellnessFilters.fromJson(
        json['activeFilters'] as Map<String, dynamic>,
      ),
      headerGreeting: json['headerGreeting'] as String,
      contextMessage: json['contextMessage'] as String,
      filterSummary: json['filterSummary'] as String,
      mapMarkers:
          (json['mapMarkers'] as List<dynamic>?)
              ?.map((e) => WellnessVenue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      showMap: json['showMap'] as bool? ?? false,
      isLoading: json['isLoading'] as bool? ?? false,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$WellnessBrowseStateToJson(
  _WellnessBrowseState instance,
) => <String, dynamic>{
  'context': instance.context,
  'sections': instance.sections,
  'quickFilters': instance.quickFilters,
  'activeFilters': instance.activeFilters,
  'headerGreeting': instance.headerGreeting,
  'contextMessage': instance.contextMessage,
  'filterSummary': instance.filterSummary,
  'mapMarkers': instance.mapMarkers,
  'showMap': instance.showMap,
  'isLoading': instance.isLoading,
  'error': instance.error,
};
