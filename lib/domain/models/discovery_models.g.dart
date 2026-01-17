// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discovery_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) => _Coordinates(
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
);

Map<String, dynamic> _$CoordinatesToJson(_Coordinates instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_UserLocation _$UserLocationFromJson(Map<String, dynamic> json) =>
    _UserLocation(
      city: json['city'] as String,
      coordinates: Coordinates.fromJson(
        json['coordinates'] as Map<String, dynamic>,
      ),
      timezone: json['timezone'] as String,
    );

Map<String, dynamic> _$UserLocationToJson(_UserLocation instance) =>
    <String, dynamic>{
      'city': instance.city,
      'coordinates': instance.coordinates,
      'timezone': instance.timezone,
    };

_UserBase _$UserBaseFromJson(Map<String, dynamic> json) => _UserBase(
  type: $enumDecode(_$UserBaseTypeEnumMap, json['type']),
  name: json['name'] as String,
  address: json['address'] as String,
  coordinates: Coordinates.fromJson(
    json['coordinates'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$UserBaseToJson(_UserBase instance) => <String, dynamic>{
  'type': _$UserBaseTypeEnumMap[instance.type]!,
  'name': instance.name,
  'address': instance.address,
  'coordinates': instance.coordinates,
};

const _$UserBaseTypeEnumMap = {
  UserBaseType.hotel: 'hotel',
  UserBaseType.home: 'home',
  UserBaseType.airbnb: 'airbnb',
  UserBaseType.office: 'office',
};

_UpcomingLocation _$UpcomingLocationFromJson(Map<String, dynamic> json) =>
    _UpcomingLocation(
      city: json['city'] as String,
      arrivalDate: DateTime.parse(json['arrivalDate'] as String),
      departureDate: DateTime.parse(json['departureDate'] as String),
      userBaseName: json['userBaseName'] as String?,
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpcomingLocationToJson(_UpcomingLocation instance) =>
    <String, dynamic>{
      'city': instance.city,
      'arrivalDate': instance.arrivalDate.toIso8601String(),
      'departureDate': instance.departureDate.toIso8601String(),
      'userBaseName': instance.userBaseName,
      'coordinates': instance.coordinates,
    };

_LocationContext _$LocationContextFromJson(Map<String, dynamic> json) =>
    _LocationContext(
      currentLocation: UserLocation.fromJson(
        json['currentLocation'] as Map<String, dynamic>,
      ),
      userBase: UserBase.fromJson(json['userBase'] as Map<String, dynamic>),
      upcomingLocations:
          (json['upcomingLocations'] as List<dynamic>?)
              ?.map((e) => UpcomingLocation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$LocationContextToJson(_LocationContext instance) =>
    <String, dynamic>{
      'currentLocation': instance.currentLocation,
      'userBase': instance.userBase,
      'upcomingLocations': instance.upcomingLocations,
    };

_TimeWindow _$TimeWindowFromJson(Map<String, dynamic> json) => _TimeWindow(
  date: DateTime.parse(json['date'] as String),
  startTime: json['startTime'] as String,
  endTime: json['endTime'] as String,
  durationMinutes: (json['durationMinutes'] as num).toInt(),
  beforeEvent: json['beforeEvent'] as String?,
  afterEvent: json['afterEvent'] as String?,
  location: json['location'] as String,
);

Map<String, dynamic> _$TimeWindowToJson(_TimeWindow instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'durationMinutes': instance.durationMinutes,
      'beforeEvent': instance.beforeEvent,
      'afterEvent': instance.afterEvent,
      'location': instance.location,
    };

_AvailableWindows _$AvailableWindowsFromJson(Map<String, dynamic> json) =>
    _AvailableWindows(
      windows:
          (json['windows'] as List<dynamic>?)
              ?.map((e) => TimeWindow.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AvailableWindowsToJson(_AvailableWindows instance) =>
    <String, dynamic>{'windows': instance.windows};

_LearnedPattern _$LearnedPatternFromJson(Map<String, dynamic> json) =>
    _LearnedPattern(
      activityType: json['activityType'] as String,
      context: json['context'] as String,
      effectivenessMetric: json['effectivenessMetric'] as String,
      effectivenessValue: (json['effectivenessValue'] as num).toDouble(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$LearnedPatternToJson(_LearnedPattern instance) =>
    <String, dynamic>{
      'activityType': instance.activityType,
      'context': instance.context,
      'effectivenessMetric': instance.effectivenessMetric,
      'effectivenessValue': instance.effectivenessValue,
      'description': instance.description,
    };

_ActivityPreferences _$ActivityPreferencesFromJson(
  Map<String, dynamic> json,
) => _ActivityPreferences(
  preferred:
      (json['preferred'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  neutral:
      (json['neutral'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  disliked:
      (json['disliked'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$ActivityPreferencesToJson(
  _ActivityPreferences instance,
) => <String, dynamic>{
  'preferred': instance.preferred,
  'neutral': instance.neutral,
  'disliked': instance.disliked,
};

_TimingPreferences _$TimingPreferencesFromJson(Map<String, dynamic> json) =>
    _TimingPreferences(
      preferredTimes:
          (json['preferredTimes'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$TimeOfDayEnumMap, e))
              .toList() ??
          const [],
      avoidTimes:
          (json['avoidTimes'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$TimeOfDayEnumMap, e))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$TimingPreferencesToJson(
  _TimingPreferences instance,
) => <String, dynamic>{
  'preferredTimes': instance.preferredTimes
      .map((e) => _$TimeOfDayEnumMap[e]!)
      .toList(),
  'avoidTimes': instance.avoidTimes.map((e) => _$TimeOfDayEnumMap[e]!).toList(),
};

const _$TimeOfDayEnumMap = {
  TimeOfDay.morning: 'morning',
  TimeOfDay.midday: 'midday',
  TimeOfDay.afternoon: 'afternoon',
  TimeOfDay.evening: 'evening',
};

_UserPreferences _$UserPreferencesFromJson(Map<String, dynamic> json) =>
    _UserPreferences(
      activities: ActivityPreferences.fromJson(
        json['activities'] as Map<String, dynamic>,
      ),
      timing: TimingPreferences.fromJson(
        json['timing'] as Map<String, dynamic>,
      ),
      intensity: $enumDecode(_$ActivityIntensityEnumMap, json['intensity']),
      maxDistance: json['maxDistance'] as String,
      maxPrice: (json['maxPrice'] as num).toDouble(),
      learnedPatterns:
          (json['learnedPatterns'] as List<dynamic>?)
              ?.map((e) => LearnedPattern.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$UserPreferencesToJson(_UserPreferences instance) =>
    <String, dynamic>{
      'activities': instance.activities,
      'timing': instance.timing,
      'intensity': _$ActivityIntensityEnumMap[instance.intensity]!,
      'maxDistance': instance.maxDistance,
      'maxPrice': instance.maxPrice,
      'learnedPatterns': instance.learnedPatterns,
    };

const _$ActivityIntensityEnumMap = {
  ActivityIntensity.gentle: 'gentle',
  ActivityIntensity.moderate: 'moderate',
  ActivityIntensity.intense: 'intense',
};

_ProviderInfo _$ProviderInfoFromJson(Map<String, dynamic> json) =>
    _ProviderInfo(
      type: $enumDecode(_$ProviderTypeEnumMap, json['type']),
      available: json['available'] as bool,
      userHasAccount: json['userHasAccount'] as bool,
    );

Map<String, dynamic> _$ProviderInfoToJson(_ProviderInfo instance) =>
    <String, dynamic>{
      'type': _$ProviderTypeEnumMap[instance.type]!,
      'available': instance.available,
      'userHasAccount': instance.userHasAccount,
    };

const _$ProviderTypeEnumMap = {
  ProviderType.classpass: 'classpass',
  ProviderType.gympass: 'gympass',
  ProviderType.googlePlaces: 'googlePlaces',
  ProviderType.free: 'free',
};

_AvailableProviders _$AvailableProvidersFromJson(Map<String, dynamic> json) =>
    _AvailableProviders(
      providers:
          (json['providers'] as List<dynamic>?)
              ?.map((e) => ProviderInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AvailableProvidersToJson(_AvailableProviders instance) =>
    <String, dynamic>{'providers': instance.providers};

_WellnessOptionDetails _$WellnessOptionDetailsFromJson(
  Map<String, dynamic> json,
) => _WellnessOptionDetails(
  address: json['address'] as String,
  distance: json['distance'] as String,
  time: json['time'] as String,
  durationMinutes: (json['durationMinutes'] as num).toInt(),
  price: json['price'] as String,
  rating: (json['rating'] as num?)?.toDouble(),
  spotsAvailable: (json['spotsAvailable'] as num?)?.toInt(),
  amenities:
      (json['amenities'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  weatherDependent: json['weatherDependent'] as bool?,
  weatherForecast: json['weatherForecast'] as String?,
  suggestedRoute: json['suggestedRoute'] as String?,
);

Map<String, dynamic> _$WellnessOptionDetailsToJson(
  _WellnessOptionDetails instance,
) => <String, dynamic>{
  'address': instance.address,
  'distance': instance.distance,
  'time': instance.time,
  'durationMinutes': instance.durationMinutes,
  'price': instance.price,
  'rating': instance.rating,
  'spotsAvailable': instance.spotsAvailable,
  'amenities': instance.amenities,
  'weatherDependent': instance.weatherDependent,
  'weatherForecast': instance.weatherForecast,
  'suggestedRoute': instance.suggestedRoute,
};

_BookingInfo _$BookingInfoFromJson(Map<String, dynamic> json) => _BookingInfo(
  canBookNow: json['canBookNow'] as bool,
  requiresAction: json['requiresAction'] as String,
  cancellationPolicy: json['cancellationPolicy'] as String?,
  note: json['note'] as String?,
);

Map<String, dynamic> _$BookingInfoToJson(_BookingInfo instance) =>
    <String, dynamic>{
      'canBookNow': instance.canBookNow,
      'requiresAction': instance.requiresAction,
      'cancellationPolicy': instance.cancellationPolicy,
      'note': instance.note,
    };

_WhyRecommended _$WhyRecommendedFromJson(Map<String, dynamic> json) =>
    _WhyRecommended(
      primary: json['primary'] as String,
      secondary: json['secondary'] as String?,
      convenience: json['convenience'] as String?,
      caveat: json['caveat'] as String?,
    );

Map<String, dynamic> _$WhyRecommendedToJson(_WhyRecommended instance) =>
    <String, dynamic>{
      'primary': instance.primary,
      'secondary': instance.secondary,
      'convenience': instance.convenience,
      'caveat': instance.caveat,
    };

_ScoreBreakdown _$ScoreBreakdownFromJson(Map<String, dynamic> json) =>
    _ScoreBreakdown(
      preferenceMatch: (json['preferenceMatch'] as num).toDouble(),
      contextualFit: (json['contextualFit'] as num).toDouble(),
      historicalEffectiveness: (json['historicalEffectiveness'] as num)
          .toDouble(),
      convenience: (json['convenience'] as num).toDouble(),
      availability: (json['availability'] as num).toDouble(),
    );

Map<String, dynamic> _$ScoreBreakdownToJson(_ScoreBreakdown instance) =>
    <String, dynamic>{
      'preferenceMatch': instance.preferenceMatch,
      'contextualFit': instance.contextualFit,
      'historicalEffectiveness': instance.historicalEffectiveness,
      'convenience': instance.convenience,
      'availability': instance.availability,
    };

_WellnessOption _$WellnessOptionFromJson(Map<String, dynamic> json) =>
    _WellnessOption(
      rank: (json['rank'] as num).toInt(),
      score: (json['score'] as num).toDouble(),
      type: json['type'] as String,
      name: json['name'] as String,
      provider: $enumDecode(_$ProviderTypeEnumMap, json['provider']),
      details: WellnessOptionDetails.fromJson(
        json['details'] as Map<String, dynamic>,
      ),
      whyThisOption: WhyRecommended.fromJson(
        json['whyThisOption'] as Map<String, dynamic>,
      ),
      bookingInfo: BookingInfo.fromJson(
        json['bookingInfo'] as Map<String, dynamic>,
      ),
      scoreBreakdown: ScoreBreakdown.fromJson(
        json['scoreBreakdown'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$WellnessOptionToJson(_WellnessOption instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'score': instance.score,
      'type': instance.type,
      'name': instance.name,
      'provider': _$ProviderTypeEnumMap[instance.provider]!,
      'details': instance.details,
      'whyThisOption': instance.whyThisOption,
      'bookingInfo': instance.bookingInfo,
      'scoreBreakdown': instance.scoreBreakdown,
    };

_SearchContext _$SearchContextFromJson(Map<String, dynamic> json) =>
    _SearchContext(
      date: DateTime.parse(json['date'] as String),
      window: json['window'] as String,
      location: json['location'] as String,
      contextType: $enumDecode(_$ContextTypeEnumMap, json['contextType']),
      userEnergyEstimate: $enumDecode(
        _$EnergyLevelEnumMap,
        json['userEnergyEstimate'],
      ),
      weatherForecast: json['weatherForecast'] as String?,
    );

Map<String, dynamic> _$SearchContextToJson(_SearchContext instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'window': instance.window,
      'location': instance.location,
      'contextType': _$ContextTypeEnumMap[instance.contextType]!,
      'userEnergyEstimate': _$EnergyLevelEnumMap[instance.userEnergyEstimate]!,
      'weatherForecast': instance.weatherForecast,
    };

const _$ContextTypeEnumMap = {
  ContextType.preMeeting: 'preMeeting',
  ContextType.postWork: 'postWork',
  ContextType.preTravel: 'preTravel',
  ContextType.postTravel: 'postTravel',
  ContextType.recovery: 'recovery',
  ContextType.burnoutPrevention: 'burnoutPrevention',
  ContextType.routineMaintenance: 'routineMaintenance',
};

const _$EnergyLevelEnumMap = {
  EnergyLevel.low: 'low',
  EnergyLevel.moderate: 'moderate',
  EnergyLevel.high: 'high',
};

_Recommendation _$RecommendationFromJson(Map<String, dynamic> json) =>
    _Recommendation(
      topPick: json['topPick'] as String,
      reasoning: json['reasoning'] as String,
      alternativeIfPreferred: json['alternativeIfPreferred'] as String?,
    );

Map<String, dynamic> _$RecommendationToJson(_Recommendation instance) =>
    <String, dynamic>{
      'topPick': instance.topPick,
      'reasoning': instance.reasoning,
      'alternativeIfPreferred': instance.alternativeIfPreferred,
    };

_DiscoveryResult _$DiscoveryResultFromJson(Map<String, dynamic> json) =>
    _DiscoveryResult(
      searchContext: SearchContext.fromJson(
        json['searchContext'] as Map<String, dynamic>,
      ),
      options: (json['options'] as List<dynamic>)
          .map((e) => WellnessOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendation: Recommendation.fromJson(
        json['recommendation'] as Map<String, dynamic>,
      ),
      conversationalPresentation: json['conversationalPresentation'] as String,
    );

Map<String, dynamic> _$DiscoveryResultToJson(_DiscoveryResult instance) =>
    <String, dynamic>{
      'searchContext': instance.searchContext,
      'options': instance.options,
      'recommendation': instance.recommendation,
      'conversationalPresentation': instance.conversationalPresentation,
    };

_RawWellnessOption _$RawWellnessOptionFromJson(Map<String, dynamic> json) =>
    _RawWellnessOption(
      type: json['type'] as String,
      name: json['name'] as String,
      provider: $enumDecode(_$ProviderTypeEnumMap, json['provider']),
      details: WellnessOptionDetails.fromJson(
        json['details'] as Map<String, dynamic>,
      ),
      bookingInfo: BookingInfo.fromJson(
        json['bookingInfo'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$RawWellnessOptionToJson(_RawWellnessOption instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'provider': _$ProviderTypeEnumMap[instance.provider]!,
      'details': instance.details,
      'bookingInfo': instance.bookingInfo,
    };
