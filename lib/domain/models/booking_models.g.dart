// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnchorBookingRequest _$AnchorBookingRequestFromJson(
  Map<String, dynamic> json,
) => _AnchorBookingRequest(
  userId: json['userId'] as String,
  activityId: json['activityId'] as String,
  venue: BookingVenue.fromJson(json['venue'] as Map<String, dynamic>),
  activity: BookingActivity.fromJson(json['activity'] as Map<String, dynamic>),
  pricing: BookingPricing.fromJson(json['pricing'] as Map<String, dynamic>),
  userContext: UserContext.fromJson(
    json['userContext'] as Map<String, dynamic>,
  ),
  preferences: BookingPreferences.fromJson(
    json['preferences'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AnchorBookingRequestToJson(
  _AnchorBookingRequest instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'activityId': instance.activityId,
  'venue': instance.venue,
  'activity': instance.activity,
  'pricing': instance.pricing,
  'userContext': instance.userContext,
  'preferences': instance.preferences,
};

_BookingVenue _$BookingVenueFromJson(Map<String, dynamic> json) =>
    _BookingVenue(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      website: json['website'] as String?,
      amenities: (json['amenities'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$BookingVenueToJson(_BookingVenue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'website': instance.website,
      'amenities': instance.amenities,
    };

_BookingActivity _$BookingActivityFromJson(Map<String, dynamic> json) =>
    _BookingActivity(
      type: $enumDecode(_$ActivityTypeEnumMap, json['type']),
      name: json['name'] as String,
      date: DateTime.parse(json['date'] as String),
      time: DateTime.parse(json['time'] as String),
      duration: (json['duration'] as num).toInt(),
      instructor: json['instructor'] as String,
      level: json['level'] as String,
      description: json['description'] as String?,
      equipment: (json['equipment'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$BookingActivityToJson(_BookingActivity instance) =>
    <String, dynamic>{
      'type': _$ActivityTypeEnumMap[instance.type]!,
      'name': instance.name,
      'date': instance.date.toIso8601String(),
      'time': instance.time.toIso8601String(),
      'duration': instance.duration,
      'instructor': instance.instructor,
      'level': instance.level,
      'description': instance.description,
      'equipment': instance.equipment,
      'imageUrl': instance.imageUrl,
    };

const _$ActivityTypeEnumMap = {
  ActivityType.yoga: 'yoga',
  ActivityType.pilates: 'pilates',
  ActivityType.meditation: 'meditation',
  ActivityType.fitness: 'fitness',
  ActivityType.spa: 'spa',
  ActivityType.massage: 'massage',
  ActivityType.wellness: 'wellness',
  ActivityType.other: 'other',
};

_BookingPricing _$BookingPricingFromJson(Map<String, dynamic> json) =>
    _BookingPricing(
      provider: $enumDecode(_$BookingProviderEnumMap, json['provider']),
      cost: json['cost'] as String,
      cancellationPolicy: json['cancellationPolicy'] as String,
      refundPolicy: json['refundPolicy'] as String?,
      priceAmount: (json['priceAmount'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$BookingPricingToJson(_BookingPricing instance) =>
    <String, dynamic>{
      'provider': _$BookingProviderEnumMap[instance.provider]!,
      'cost': instance.cost,
      'cancellationPolicy': instance.cancellationPolicy,
      'refundPolicy': instance.refundPolicy,
      'priceAmount': instance.priceAmount,
      'currency': instance.currency,
    };

const _$BookingProviderEnumMap = {
  BookingProvider.classpass: 'classpass',
  BookingProvider.mindbody: 'mindbody',
  BookingProvider.direct: 'direct',
  BookingProvider.partner: 'partner',
  BookingProvider.other: 'other',
};

_UserContext _$UserContextFromJson(Map<String, dynamic> json) => _UserContext(
  beforeEvent: json['beforeEvent'] as String?,
  afterEvent: json['afterEvent'] as String?,
  travelBuffer: $enumDecodeNullable(
    _$TravelBufferEnumMap,
    json['travelBuffer'],
  ),
  stressLevel: $enumDecodeNullable(_$StressLevelEnumMap, json['stressLevel']),
  location: json['location'] as String?,
  travelMode: json['travelMode'] as String?,
);

Map<String, dynamic> _$UserContextToJson(_UserContext instance) =>
    <String, dynamic>{
      'beforeEvent': instance.beforeEvent,
      'afterEvent': instance.afterEvent,
      'travelBuffer': _$TravelBufferEnumMap[instance.travelBuffer],
      'stressLevel': _$StressLevelEnumMap[instance.stressLevel],
      'location': instance.location,
      'travelMode': instance.travelMode,
    };

const _$TravelBufferEnumMap = {
  TravelBuffer.none: 'none',
  TravelBuffer.minimal: 'minimal',
  TravelBuffer.standard: 'standard',
  TravelBuffer.extended: 'extended',
};

const _$StressLevelEnumMap = {
  StressLevel.low: 'low',
  StressLevel.moderate: 'moderate',
  StressLevel.high: 'high',
  StressLevel.severe: 'severe',
};

_BookingPreferences _$BookingPreferencesFromJson(Map<String, dynamic> json) =>
    _BookingPreferences(
      autoAddToCalendar: json['autoAddToCalendar'] as bool? ?? true,
      enableReminders: json['enableReminders'] as bool? ?? true,
      blockTravelTime: json['blockTravelTime'] as bool? ?? true,
      arriveEarlyMinutes: (json['arriveEarlyMinutes'] as num?)?.toInt() ?? 10,
      preferredCalendar: json['preferredCalendar'] as String?,
      customReminders: (json['customReminders'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ReminderTimingEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$BookingPreferencesToJson(_BookingPreferences instance) =>
    <String, dynamic>{
      'autoAddToCalendar': instance.autoAddToCalendar,
      'enableReminders': instance.enableReminders,
      'blockTravelTime': instance.blockTravelTime,
      'arriveEarlyMinutes': instance.arriveEarlyMinutes,
      'preferredCalendar': instance.preferredCalendar,
      'customReminders': instance.customReminders
          ?.map((e) => _$ReminderTimingEnumMap[e]!)
          .toList(),
    };

const _$ReminderTimingEnumMap = {
  ReminderTiming.twentyFourHours: 'twentyFourHours',
  ReminderTiming.twelveHours: 'twelveHours',
  ReminderTiming.twoHours: 'twoHours',
  ReminderTiming.oneHour: 'oneHour',
  ReminderTiming.thirtyMinutes: 'thirtyMinutes',
  ReminderTiming.tenMinutes: 'tenMinutes',
  ReminderTiming.custom: 'custom',
};

_CalendarIntegration _$CalendarIntegrationFromJson(Map<String, dynamic> json) =>
    _CalendarIntegration(
      provider: $enumDecode(_$CalendarProviderEnumMap, json['provider']),
      accessToken: json['accessToken'] as String,
      primaryCalendar: json['primaryCalendar'] as String,
      calendars: (json['calendars'] as List<dynamic>)
          .map((e) => CalendarInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      settings: (json['settings'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$CalendarIntegrationToJson(
  _CalendarIntegration instance,
) => <String, dynamic>{
  'provider': _$CalendarProviderEnumMap[instance.provider]!,
  'accessToken': instance.accessToken,
  'primaryCalendar': instance.primaryCalendar,
  'calendars': instance.calendars,
  'settings': instance.settings,
};

const _$CalendarProviderEnumMap = {
  CalendarProvider.google: 'google',
  CalendarProvider.outlook: 'outlook',
  CalendarProvider.apple: 'apple',
  CalendarProvider.other: 'other',
};

_CalendarInfo _$CalendarInfoFromJson(Map<String, dynamic> json) =>
    _CalendarInfo(
      id: json['id'] as String,
      name: json['name'] as String,
      isDefault: json['isDefault'] as bool? ?? false,
      description: json['description'] as String?,
      colorId: json['colorId'] as String?,
      isWritable: json['isWritable'] as bool?,
    );

Map<String, dynamic> _$CalendarInfoToJson(_CalendarInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isDefault': instance.isDefault,
      'description': instance.description,
      'colorId': instance.colorId,
      'isWritable': instance.isWritable,
    };

_WellnessCalendarEvent _$WellnessCalendarEventFromJson(
  Map<String, dynamic> json,
) => _WellnessCalendarEvent(
  title: json['title'] as String,
  start: DateTime.parse(json['start'] as String),
  end: DateTime.parse(json['end'] as String),
  location: json['location'] as String,
  description: json['description'] as String,
  eventId: json['eventId'] as String?,
  attendees: (json['attendees'] as List<dynamic>?)
      ?.map((e) => CalendarAttendee.fromJson(e as Map<String, dynamic>))
      .toList(),
  reminders: json['reminders'] == null
      ? null
      : CalendarReminders.fromJson(json['reminders'] as Map<String, dynamic>),
  colorId: json['colorId'] as String?,
  transparency: $enumDecodeNullable(
    _$EventTransparencyEnumMap,
    json['transparency'],
  ),
  extendedProperties: (json['extendedProperties'] as Map<String, dynamic>?)
      ?.map((k, e) => MapEntry(k, e as String)),
);

Map<String, dynamic> _$WellnessCalendarEventToJson(
  _WellnessCalendarEvent instance,
) => <String, dynamic>{
  'title': instance.title,
  'start': instance.start.toIso8601String(),
  'end': instance.end.toIso8601String(),
  'location': instance.location,
  'description': instance.description,
  'eventId': instance.eventId,
  'attendees': instance.attendees,
  'reminders': instance.reminders,
  'colorId': instance.colorId,
  'transparency': _$EventTransparencyEnumMap[instance.transparency],
  'extendedProperties': instance.extendedProperties,
};

const _$EventTransparencyEnumMap = {
  EventTransparency.opaque: 'opaque',
  EventTransparency.transparent: 'transparent',
};

_CalendarAttendee _$CalendarAttendeeFromJson(Map<String, dynamic> json) =>
    _CalendarAttendee(
      email: json['email'] as String,
      displayName: json['displayName'] as String?,
      responseStatus:
          $enumDecodeNullable(
            _$ResponseStatusEnumMap,
            json['responseStatus'],
          ) ??
          ResponseStatus.accepted,
    );

Map<String, dynamic> _$CalendarAttendeeToJson(_CalendarAttendee instance) =>
    <String, dynamic>{
      'email': instance.email,
      'displayName': instance.displayName,
      'responseStatus': _$ResponseStatusEnumMap[instance.responseStatus]!,
    };

const _$ResponseStatusEnumMap = {
  ResponseStatus.needsAction: 'needsAction',
  ResponseStatus.declined: 'declined',
  ResponseStatus.tentative: 'tentative',
  ResponseStatus.accepted: 'accepted',
};

_CalendarReminders _$CalendarRemindersFromJson(Map<String, dynamic> json) =>
    _CalendarReminders(
      useDefault: json['useDefault'] as bool? ?? false,
      overrides: (json['overrides'] as List<dynamic>?)
          ?.map((e) => ReminderOverride.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CalendarRemindersToJson(_CalendarReminders instance) =>
    <String, dynamic>{
      'useDefault': instance.useDefault,
      'overrides': instance.overrides,
    };

_ReminderOverride _$ReminderOverrideFromJson(Map<String, dynamic> json) =>
    _ReminderOverride(
      method: $enumDecode(_$ReminderMethodEnumMap, json['method']),
      minutes: (json['minutes'] as num).toInt(),
      customMessage: json['customMessage'] as String?,
    );

Map<String, dynamic> _$ReminderOverrideToJson(_ReminderOverride instance) =>
    <String, dynamic>{
      'method': _$ReminderMethodEnumMap[instance.method]!,
      'minutes': instance.minutes,
      'customMessage': instance.customMessage,
    };

const _$ReminderMethodEnumMap = {
  ReminderMethod.popup: 'popup',
  ReminderMethod.notification: 'notification',
  ReminderMethod.email: 'email',
  ReminderMethod.sms: 'sms',
};

_BookingValidation _$BookingValidationFromJson(Map<String, dynamic> json) =>
    _BookingValidation(
      availability: AvailabilityCheck.fromJson(
        json['availability'] as Map<String, dynamic>,
      ),
      calendarConflict: CalendarConflictCheck.fromJson(
        json['calendarConflict'] as Map<String, dynamic>,
      ),
      requirements: RequirementCheck.fromJson(
        json['requirements'] as Map<String, dynamic>,
      ),
      recommendation: $enumDecode(
        _$ValidationRecommendationEnumMap,
        json['recommendation'],
      ),
      issues: (json['issues'] as List<dynamic>?)
          ?.map((e) => ValidationIssue.fromJson(e as Map<String, dynamic>))
          .toList(),
      travelTime: json['travelTime'] == null
          ? null
          : TravelTimeAnalysis.fromJson(
              json['travelTime'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$BookingValidationToJson(
  _BookingValidation instance,
) => <String, dynamic>{
  'availability': instance.availability,
  'calendarConflict': instance.calendarConflict,
  'requirements': instance.requirements,
  'recommendation': _$ValidationRecommendationEnumMap[instance.recommendation]!,
  'issues': instance.issues,
  'travelTime': instance.travelTime,
};

const _$ValidationRecommendationEnumMap = {
  ValidationRecommendation.safeToBook: 'safeToBook',
  ValidationRecommendation.checkConflicts: 'checkConflicts',
  ValidationRecommendation.requiresAction: 'requiresAction',
  ValidationRecommendation.doNotBook: 'doNotBook',
};

_AvailabilityCheck _$AvailabilityCheckFromJson(Map<String, dynamic> json) =>
    _AvailabilityCheck(
      status: $enumDecode(_$AvailabilityStatusEnumMap, json['status']),
      spotsLeft: (json['spotsLeft'] as num?)?.toInt(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      waitlistAvailable: json['waitlistAvailable'] as String?,
    );

Map<String, dynamic> _$AvailabilityCheckToJson(_AvailabilityCheck instance) =>
    <String, dynamic>{
      'status': _$AvailabilityStatusEnumMap[instance.status]!,
      'spotsLeft': instance.spotsLeft,
      'timestamp': instance.timestamp.toIso8601String(),
      'waitlistAvailable': instance.waitlistAvailable,
    };

const _$AvailabilityStatusEnumMap = {
  AvailabilityStatus.available: 'available',
  AvailabilityStatus.full: 'full',
  AvailabilityStatus.waitlist: 'waitlist',
  AvailabilityStatus.cancelled: 'cancelled',
  AvailabilityStatus.unknown: 'unknown',
};

_CalendarConflictCheck _$CalendarConflictCheckFromJson(
  Map<String, dynamic> json,
) => _CalendarConflictCheck(
  hasConflict: json['hasConflict'] as bool? ?? false,
  conflicts: (json['conflicts'] as List<dynamic>?)
      ?.map((e) => CalendarConflict.fromJson(e as Map<String, dynamic>))
      .toList(),
  travelTime: json['travelTime'] == null
      ? null
      : TravelTimeAnalysis.fromJson(json['travelTime'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CalendarConflictCheckToJson(
  _CalendarConflictCheck instance,
) => <String, dynamic>{
  'hasConflict': instance.hasConflict,
  'conflicts': instance.conflicts,
  'travelTime': instance.travelTime,
};

_CalendarConflict _$CalendarConflictFromJson(Map<String, dynamic> json) =>
    _CalendarConflict(
      eventTitle: json['eventTitle'] as String,
      eventStart: DateTime.parse(json['eventStart'] as String),
      eventEnd: DateTime.parse(json['eventEnd'] as String),
      severity: $enumDecodeNullable(
        _$ConflictSeverityEnumMap,
        json['severity'],
      ),
      resolution: json['resolution'] as String?,
    );

Map<String, dynamic> _$CalendarConflictToJson(_CalendarConflict instance) =>
    <String, dynamic>{
      'eventTitle': instance.eventTitle,
      'eventStart': instance.eventStart.toIso8601String(),
      'eventEnd': instance.eventEnd.toIso8601String(),
      'severity': _$ConflictSeverityEnumMap[instance.severity],
      'resolution': instance.resolution,
    };

const _$ConflictSeverityEnumMap = {
  ConflictSeverity.minor: 'minor',
  ConflictSeverity.moderate: 'moderate',
  ConflictSeverity.severe: 'severe',
};

_TravelTimeAnalysis _$TravelTimeAnalysisFromJson(Map<String, dynamic> json) =>
    _TravelTimeAnalysis(
      before: json['before'] == null
          ? null
          : TravelLeg.fromJson(json['before'] as Map<String, dynamic>),
      after: json['after'] == null
          ? null
          : TravelLeg.fromJson(json['after'] as Map<String, dynamic>),
      isEnoughTime: json['isEnoughTime'] as bool? ?? true,
      suggestions: json['suggestions'] as String?,
    );

Map<String, dynamic> _$TravelTimeAnalysisToJson(_TravelTimeAnalysis instance) =>
    <String, dynamic>{
      'before': instance.before,
      'after': instance.after,
      'isEnoughTime': instance.isEnoughTime,
      'suggestions': instance.suggestions,
    };

_TravelLeg _$TravelLegFromJson(Map<String, dynamic> json) => _TravelLeg(
  from: json['from'] as String?,
  to: json['to'] as String?,
  duration: (json['duration'] as num).toInt(),
  method: $enumDecode(_$TravelMethodEnumMap, json['method']),
  route: json['route'] as String?,
);

Map<String, dynamic> _$TravelLegToJson(_TravelLeg instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'duration': instance.duration,
      'method': _$TravelMethodEnumMap[instance.method]!,
      'route': instance.route,
    };

const _$TravelMethodEnumMap = {
  TravelMethod.walk: 'walk',
  TravelMethod.bike: 'bike',
  TravelMethod.car: 'car',
  TravelMethod.public: 'public',
  TravelMethod.rideshare: 'rideshare',
};

_RequirementCheck _$RequirementCheckFromJson(Map<String, dynamic> json) =>
    _RequirementCheck(
      needsAccount: json['needsAccount'] as bool? ?? false,
      needsPayment: json['needsPayment'] as bool? ?? false,
      needsWaiver: json['needsWaiver'] as bool? ?? false,
      allMet: json['allMet'] as bool? ?? true,
      missingRequirements: (json['missingRequirements'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$RequirementCheckToJson(_RequirementCheck instance) =>
    <String, dynamic>{
      'needsAccount': instance.needsAccount,
      'needsPayment': instance.needsPayment,
      'needsWaiver': instance.needsWaiver,
      'allMet': instance.allMet,
      'missingRequirements': instance.missingRequirements,
    };

_ValidationIssue _$ValidationIssueFromJson(Map<String, dynamic> json) =>
    _ValidationIssue(
      type: $enumDecode(_$ValidationIssueTypeEnumMap, json['type']),
      message: json['message'] as String,
      severity: $enumDecodeNullable(_$IssueSeverityEnumMap, json['severity']),
      solution: json['solution'] as String?,
    );

Map<String, dynamic> _$ValidationIssueToJson(_ValidationIssue instance) =>
    <String, dynamic>{
      'type': _$ValidationIssueTypeEnumMap[instance.type]!,
      'message': instance.message,
      'severity': _$IssueSeverityEnumMap[instance.severity],
      'solution': instance.solution,
    };

const _$ValidationIssueTypeEnumMap = {
  ValidationIssueType.conflict: 'conflict',
  ValidationIssueType.requirement: 'requirement',
  ValidationIssueType.availability: 'availability',
  ValidationIssueType.other: 'other',
};

const _$IssueSeverityEnumMap = {
  IssueSeverity.info: 'info',
  IssueSeverity.warning: 'warning',
  IssueSeverity.error: 'error',
};

_BookingExecution _$BookingExecutionFromJson(Map<String, dynamic> json) =>
    _BookingExecution(
      steps: (json['steps'] as List<dynamic>)
          .map((e) => BookingStep.fromJson(e as Map<String, dynamic>))
          .toList(),
      overallStatus: $enumDecode(
        _$ExecutionStatusEnumMap,
        json['overallStatus'],
      ),
      completedAt: DateTime.parse(json['completedAt'] as String),
      failureReason: json['failureReason'] as String?,
      result: json['result'] == null
          ? null
          : BookingResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookingExecutionToJson(_BookingExecution instance) =>
    <String, dynamic>{
      'steps': instance.steps,
      'overallStatus': _$ExecutionStatusEnumMap[instance.overallStatus]!,
      'completedAt': instance.completedAt.toIso8601String(),
      'failureReason': instance.failureReason,
      'result': instance.result,
    };

const _$ExecutionStatusEnumMap = {
  ExecutionStatus.success: 'success',
  ExecutionStatus.partial: 'partial',
  ExecutionStatus.failed: 'failed',
  ExecutionStatus.pending: 'pending',
};

_BookingStep _$BookingStepFromJson(Map<String, dynamic> json) => _BookingStep(
  step: (json['step'] as num).toInt(),
  action: json['action'] as String,
  status: $enumDecode(_$StepStatusEnumMap, json['status']),
  confirmationNumber: json['confirmationNumber'] as String?,
  errorMessage: json['errorMessage'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$BookingStepToJson(_BookingStep instance) =>
    <String, dynamic>{
      'step': instance.step,
      'action': instance.action,
      'status': _$StepStatusEnumMap[instance.status]!,
      'confirmationNumber': instance.confirmationNumber,
      'errorMessage': instance.errorMessage,
      'metadata': instance.metadata,
    };

const _$StepStatusEnumMap = {
  StepStatus.pending: 'pending',
  StepStatus.inProgress: 'inProgress',
  StepStatus.success: 'success',
  StepStatus.failed: 'failed',
};

_BookingResult _$BookingResultFromJson(
  Map<String, dynamic> json,
) => _BookingResult(
  status: $enumDecode(_$ExecutionStatusEnumMap, json['status']),
  bookingId: json['bookingId'] as String,
  confirmationNumber: json['confirmationNumber'] as String?,
  venue: json['venue'] == null
      ? null
      : BookingVenue.fromJson(json['venue'] as Map<String, dynamic>),
  activity: json['activity'] == null
      ? null
      : BookingActivity.fromJson(json['activity'] as Map<String, dynamic>),
  calendar: json['calendar'] == null
      ? null
      : CalendarEventResult.fromJson(json['calendar'] as Map<String, dynamic>),
  pricing: json['pricing'] == null
      ? null
      : BookingPricing.fromJson(json['pricing'] as Map<String, dynamic>),
  instructions: json['instructions'] == null
      ? null
      : BookingInstructions.fromJson(
          json['instructions'] as Map<String, dynamic>,
        ),
  directions: json['directions'] == null
      ? null
      : TravelInstructions.fromJson(json['directions'] as Map<String, dynamic>),
  nextSteps: (json['nextSteps'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  anchorNote: json['anchorNote'] as String?,
  analytics: json['analytics'] == null
      ? null
      : BookingAnalytics.fromJson(json['analytics'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BookingResultToJson(_BookingResult instance) =>
    <String, dynamic>{
      'status': _$ExecutionStatusEnumMap[instance.status]!,
      'bookingId': instance.bookingId,
      'confirmationNumber': instance.confirmationNumber,
      'venue': instance.venue,
      'activity': instance.activity,
      'calendar': instance.calendar,
      'pricing': instance.pricing,
      'instructions': instance.instructions,
      'directions': instance.directions,
      'nextSteps': instance.nextSteps,
      'anchorNote': instance.anchorNote,
      'analytics': instance.analytics,
    };

_CalendarEventResult _$CalendarEventResultFromJson(Map<String, dynamic> json) =>
    _CalendarEventResult(
      added: json['added'] as bool? ?? false,
      calendarName: json['calendarName'] as String?,
      eventId: json['eventId'] as String?,
      includesTravelTime: json['includesTravelTime'] as bool? ?? false,
      remindersSet: (json['remindersSet'] as num?)?.toInt() ?? 0,
      events: (json['events'] as List<dynamic>?)
          ?.map(
            (e) => WellnessCalendarEvent.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$CalendarEventResultToJson(
  _CalendarEventResult instance,
) => <String, dynamic>{
  'added': instance.added,
  'calendarName': instance.calendarName,
  'eventId': instance.eventId,
  'includesTravelTime': instance.includesTravelTime,
  'remindersSet': instance.remindersSet,
  'events': instance.events,
};

_BookingInstructions _$BookingInstructionsFromJson(Map<String, dynamic> json) =>
    _BookingInstructions(
      provided: (json['provided'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      bring: (json['bring'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      arriveEarly: (json['arriveEarly'] as num?)?.toInt(),
      parkingInfo: json['parkingInfo'] as String?,
      checkInInfo: json['checkInInfo'] as String?,
    );

Map<String, dynamic> _$BookingInstructionsToJson(
  _BookingInstructions instance,
) => <String, dynamic>{
  'provided': instance.provided,
  'bring': instance.bring,
  'arriveEarly': instance.arriveEarly,
  'parkingInfo': instance.parkingInfo,
  'checkInInfo': instance.checkInInfo,
};

_TravelInstructions _$TravelInstructionsFromJson(Map<String, dynamic> json) =>
    _TravelInstructions(
      from: json['from'] as String?,
      distance: json['distance'] as String?,
      walkTime: (json['walkTime'] as num?)?.toInt(),
      mapUrl: json['mapUrl'] as String?,
      directions: (json['directions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TravelInstructionsToJson(_TravelInstructions instance) =>
    <String, dynamic>{
      'from': instance.from,
      'distance': instance.distance,
      'walkTime': instance.walkTime,
      'mapUrl': instance.mapUrl,
      'directions': instance.directions,
    };

_BookingAnalytics _$BookingAnalyticsFromJson(Map<String, dynamic> json) =>
    _BookingAnalytics(
      bookingTime: DateTime.parse(json['bookingTime'] as String),
      activityType: json['activityType'] as String,
      venue: json['venue'] as String?,
      city: json['city'] as String?,
      advanceBookingHours: (json['advanceBookingHours'] as num?)?.toInt(),
      source: $enumDecodeNullable(_$BookingSourceEnumMap, json['source']),
      customData: json['customData'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$BookingAnalyticsToJson(_BookingAnalytics instance) =>
    <String, dynamic>{
      'bookingTime': instance.bookingTime.toIso8601String(),
      'activityType': instance.activityType,
      'venue': instance.venue,
      'city': instance.city,
      'advanceBookingHours': instance.advanceBookingHours,
      'source': _$BookingSourceEnumMap[instance.source],
      'customData': instance.customData,
    };

const _$BookingSourceEnumMap = {
  BookingSource.chat: 'chat',
  BookingSource.discovery: 'discovery',
  BookingSource.recommendation: 'recommendation',
  BookingSource.manual: 'manual',
};

_BookingError _$BookingErrorFromJson(Map<String, dynamic> json) =>
    _BookingError(
      errorType: $enumDecode(_$BookingErrorTypeEnumMap, json['errorType']),
      userMessage: json['userMessage'] as String,
      technicalMessage: json['technicalMessage'] as String?,
      alternatives: (json['alternatives'] as List<dynamic>?)
          ?.map((e) => BookingAlternative.fromJson(e as Map<String, dynamic>))
          .toList(),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => ErrorAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      canRetry: json['canRetry'] as bool?,
    );

Map<String, dynamic> _$BookingErrorToJson(_BookingError instance) =>
    <String, dynamic>{
      'errorType': _$BookingErrorTypeEnumMap[instance.errorType]!,
      'userMessage': instance.userMessage,
      'technicalMessage': instance.technicalMessage,
      'alternatives': instance.alternatives,
      'actions': instance.actions,
      'canRetry': instance.canRetry,
    };

const _$BookingErrorTypeEnumMap = {
  BookingErrorType.fullyBooked: 'fullyBooked',
  BookingErrorType.calendarConflict: 'calendarConflict',
  BookingErrorType.paymentRequired: 'paymentRequired',
  BookingErrorType.accountRequired: 'accountRequired',
  BookingErrorType.networkError: 'networkError',
  BookingErrorType.serverError: 'serverError',
  BookingErrorType.validationError: 'validationError',
  BookingErrorType.other: 'other',
};

_BookingAlternative _$BookingAlternativeFromJson(Map<String, dynamic> json) =>
    _BookingAlternative(
      venue: json['venue'] as String,
      activityName: json['activityName'] as String,
      time: DateTime.parse(json['time'] as String),
      spots: (json['spots'] as num?)?.toInt(),
      note: json['note'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BookingAlternativeToJson(_BookingAlternative instance) =>
    <String, dynamic>{
      'venue': instance.venue,
      'activityName': instance.activityName,
      'time': instance.time.toIso8601String(),
      'spots': instance.spots,
      'note': instance.note,
      'distance': instance.distance,
    };

_ErrorAction _$ErrorActionFromJson(Map<String, dynamic> json) => _ErrorAction(
  label: json['label'] as String,
  action: json['action'] as String,
  enabled: json['enabled'] as bool?,
  params: json['params'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$ErrorActionToJson(_ErrorAction instance) =>
    <String, dynamic>{
      'label': instance.label,
      'action': instance.action,
      'enabled': instance.enabled,
      'params': instance.params,
    };

_CancellationRequest _$CancellationRequestFromJson(Map<String, dynamic> json) =>
    _CancellationRequest(
      bookingId: json['bookingId'] as String,
      userId: json['userId'] as String,
      reason: $enumDecode(_$CancellationReasonEnumMap, json['reason']),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$CancellationRequestToJson(
  _CancellationRequest instance,
) => <String, dynamic>{
  'bookingId': instance.bookingId,
  'userId': instance.userId,
  'reason': _$CancellationReasonEnumMap[instance.reason]!,
  'note': instance.note,
};

const _$CancellationReasonEnumMap = {
  CancellationReason.userRequest: 'userRequest',
  CancellationReason.conflict: 'conflict',
  CancellationReason.emergency: 'emergency',
  CancellationReason.illness: 'illness',
  CancellationReason.travel: 'travel',
  CancellationReason.other: 'other',
};

_CancellationResult _$CancellationResultFromJson(Map<String, dynamic> json) =>
    _CancellationResult(
      success: json['success'] as bool,
      message: json['message'] as String,
      penaltyFree: json['penaltyFree'] as bool?,
      creditRefunded: json['creditRefunded'] as bool?,
      refundAmount: json['refundAmount'] as String?,
      followUp: json['followUp'] == null
          ? null
          : CancellationFollowUp.fromJson(
              json['followUp'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$CancellationResultToJson(_CancellationResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'penaltyFree': instance.penaltyFree,
      'creditRefunded': instance.creditRefunded,
      'refundAmount': instance.refundAmount,
      'followUp': instance.followUp,
    };

_CancellationFollowUp _$CancellationFollowUpFromJson(
  Map<String, dynamic> json,
) => _CancellationFollowUp(
  message: json['message'] as String,
  actions: (json['actions'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  alternatives: (json['alternatives'] as List<dynamic>?)
      ?.map((e) => BookingAlternative.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CancellationFollowUpToJson(
  _CancellationFollowUp instance,
) => <String, dynamic>{
  'message': instance.message,
  'actions': instance.actions,
  'alternatives': instance.alternatives,
};

_ReminderConfig _$ReminderConfigFromJson(Map<String, dynamic> json) =>
    _ReminderConfig(
      standard: (json['standard'] as List<dynamic>)
          .map((e) => StandardReminder.fromJson(e as Map<String, dynamic>))
          .toList(),
      contextual: (json['contextual'] as List<dynamic>?)
          ?.map((e) => ContextualReminder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReminderConfigToJson(_ReminderConfig instance) =>
    <String, dynamic>{
      'standard': instance.standard,
      'contextual': instance.contextual,
    };

_StandardReminder _$StandardReminderFromJson(Map<String, dynamic> json) =>
    _StandardReminder(
      when: $enumDecode(_$ReminderTimingEnumMap, json['when']),
      message: json['message'] as String,
      action: json['action'] as String?,
    );

Map<String, dynamic> _$StandardReminderToJson(_StandardReminder instance) =>
    <String, dynamic>{
      'when': _$ReminderTimingEnumMap[instance.when]!,
      'message': instance.message,
      'action': instance.action,
    };

_ContextualReminder _$ContextualReminderFromJson(Map<String, dynamic> json) =>
    _ContextualReminder(
      condition: $enumDecode(_$ReminderConditionEnumMap, json['condition']),
      timing: $enumDecode(_$ReminderTimingEnumMap, json['timing']),
      message: json['message'] as String,
    );

Map<String, dynamic> _$ContextualReminderToJson(_ContextualReminder instance) =>
    <String, dynamic>{
      'condition': _$ReminderConditionEnumMap[instance.condition]!,
      'timing': _$ReminderTimingEnumMap[instance.timing]!,
      'message': instance.message,
    };

const _$ReminderConditionEnumMap = {
  ReminderCondition.firstTimeVenue: 'firstTimeVenue',
  ReminderCondition.tightSchedule: 'tightSchedule',
  ReminderCondition.travelDay: 'travelDay',
  ReminderCondition.highStress: 'highStress',
  ReminderCondition.weatherDependent: 'weatherDependent',
  ReminderCondition.other: 'other',
};
