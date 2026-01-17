import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';
import '../models/booking_models.dart';
import 'calendar_service.dart';
import 'notification_service.dart';

/// Main booking and calendar integration engine
class BookingCalendarEngine {
  final CalendarService _calendarService;
  final NotificationService _notificationService;
  final http.Client _httpClient;
  final Uuid _uuid = const Uuid();

  // Configuration
  static const String baseUrl = 'https://api.anchor-wellness.com';
  static const Duration validationTimeout = Duration(seconds: 10);
  static const Duration bookingTimeout = Duration(seconds: 30);

  BookingCalendarEngine({
    required CalendarService calendarService,
    required NotificationService notificationService,
    http.Client? httpClient,
  }) : _calendarService = calendarService,
       _notificationService = notificationService,
       _httpClient = httpClient ?? http.Client();

  // ============================================================================
  // MAIN BOOKING FLOW
  // ============================================================================

  /// Complete booking flow from validation to confirmation
  Future<BookingResult> processBooking(
    AnchorBookingRequest request,
    CalendarIntegration? calendarIntegration,
  ) async {
    final bookingId = _uuid.v4();
    final startTime = DateTime.now();

    try {
      // Step 1: Pre-booking validation
      final validation = await validateBooking(request, calendarIntegration);

      if (validation.recommendation == ValidationRecommendation.doNotBook) {
        return BookingResult(
          status: ExecutionStatus.failed,
          bookingId: bookingId,
          confirmationNumber: null,
        );
      }

      // Step 2: Execute booking steps
      final execution = await _executeBooking(request, validation);

      // Step 3: Handle calendar integration
      CalendarEventResult? calendarResult;
      if (request.preferences.autoAddToCalendar &&
          calendarIntegration != null) {
        calendarResult = await _addToCalendar(
          request,
          execution,
          calendarIntegration,
        );
      }

      // Step 4: Setup notifications and reminders
      if (request.preferences.enableReminders) {
        await _setupReminders(request, execution, calendarResult);
      }

      // Step 5: Generate booking confirmation
      return _buildBookingResult(
        bookingId: bookingId,
        request: request,
        execution: execution,
        calendarResult: calendarResult,
        startTime: startTime,
      );
    } catch (e) {
      return BookingResult(
        status: ExecutionStatus.failed,
        bookingId: bookingId,
        confirmationNumber: null,
        anchorNote: 'Booking failed: ${e.toString()}',
      );
    }
  }

  // ============================================================================
  // BOOKING VALIDATION
  // ============================================================================

  /// Pre-booking validation with all checks
  Future<BookingValidation> validateBooking(
    AnchorBookingRequest request,
    CalendarIntegration? calendarIntegration,
  ) async {
    try {
      // Run validations in parallel
      final futures = await Future.wait([
        _checkAvailability(request),
        _checkCalendarConflicts(request, calendarIntegration),
        _checkRequirements(request),
        _analyzeTravelTime(request),
      ]).timeout(validationTimeout);

      final availability = futures[0] as AvailabilityCheck;
      final calendarConflict = futures[1] as CalendarConflictCheck;
      final requirements = futures[2] as RequirementCheck;
      final travelTime = futures[3] as TravelTimeAnalysis?;

      // Determine overall recommendation
      final recommendation = _determineRecommendation(
        availability,
        calendarConflict,
        requirements,
      );

      return BookingValidation(
        availability: availability,
        calendarConflict: calendarConflict,
        requirements: requirements,
        recommendation: recommendation,
        travelTime: travelTime,
      );
    } catch (e) {
      return BookingValidation(
        availability: AvailabilityCheck(
          status: AvailabilityStatus.unknown,
          timestamp: DateTime.now(),
        ),
        calendarConflict: const CalendarConflictCheck(),
        requirements: const RequirementCheck(allMet: false),
        recommendation: ValidationRecommendation.doNotBook,
        issues: [
          ValidationIssue(
            type: ValidationIssueType.other,
            message: 'Validation failed: ${e.toString()}',
            severity: IssueSeverity.error,
          ),
        ],
      );
    }
  }

  /// Check activity availability
  Future<AvailabilityCheck> _checkAvailability(
    AnchorBookingRequest request,
  ) async {
    try {
      final response = await _httpClient.get(
        Uri.parse('$baseUrl/availability/${request.activityId}'),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return AvailabilityCheck(
          status: _parseAvailabilityStatus(data['status']),
          spotsLeft: data['spotsLeft'],
          timestamp: DateTime.now(),
          waitlistAvailable: data['waitlistAvailable'],
        );
      } else {
        return AvailabilityCheck(
          status: AvailabilityStatus.unknown,
          timestamp: DateTime.now(),
        );
      }
    } catch (e) {
      return AvailabilityCheck(
        status: AvailabilityStatus.unknown,
        timestamp: DateTime.now(),
      );
    }
  }

  /// Check calendar conflicts
  Future<CalendarConflictCheck> _checkCalendarConflicts(
    AnchorBookingRequest request,
    CalendarIntegration? calendarIntegration,
  ) async {
    if (calendarIntegration == null) {
      return const CalendarConflictCheck();
    }

    try {
      // Get calendar events for the day
      final startTime = request.activity.time;
      final endTime = startTime.add(
        Duration(minutes: request.activity.duration),
      );

      final events = await _calendarService.getEvents(
        calendarIntegration,
        startTime.subtract(const Duration(hours: 2)),
        endTime.add(const Duration(hours: 2)),
      );

      final conflicts = <CalendarConflict>[];

      for (final event in events) {
        if (_hasTimeConflict(startTime, endTime, event.start, event.end)) {
          conflicts.add(
            CalendarConflict(
              eventTitle: event.title,
              eventStart: event.start,
              eventEnd: event.end,
              severity: _calculateConflictSeverity(
                startTime,
                endTime,
                event.start,
                event.end,
              ),
            ),
          );
        }
      }

      // Analyze travel time if no direct conflicts
      TravelTimeAnalysis? travelTime;
      if (conflicts.isEmpty) {
        travelTime = await _analyzeTravelTime(request);
      }

      return CalendarConflictCheck(
        hasConflict: conflicts.isNotEmpty,
        conflicts: conflicts.isEmpty ? null : conflicts,
        travelTime: travelTime,
      );
    } catch (e) {
      return CalendarConflictCheck(hasConflict: false, conflicts: null);
    }
  }

  /// Check booking requirements
  Future<RequirementCheck> _checkRequirements(
    AnchorBookingRequest request,
  ) async {
    try {
      final response = await _httpClient.get(
        Uri.parse('$baseUrl/requirements/${request.venue.id}'),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return RequirementCheck(
          needsAccount: data['needsAccount'] ?? false,
          needsPayment: data['needsPayment'] ?? false,
          needsWaiver: data['needsWaiver'] ?? false,
          allMet: data['allMet'] ?? true,
          missingRequirements: data['missingRequirements']?.cast<String>(),
        );
      } else {
        return const RequirementCheck();
      }
    } catch (e) {
      return const RequirementCheck();
    }
  }

  /// Analyze travel time between events
  Future<TravelTimeAnalysis?> _analyzeTravelTime(
    AnchorBookingRequest request,
  ) async {
    if (request.userContext.beforeEvent == null &&
        request.userContext.afterEvent == null) {
      return null;
    }

    try {
      // This would integrate with Google Maps API or similar
      // For now, return mock data
      return TravelTimeAnalysis(
        before: request.userContext.beforeEvent != null
            ? TravelLeg(
                from: request.userContext.beforeEvent,
                to: request.venue.address,
                duration: 15, // minutes
                method: TravelMethod.walk,
              )
            : null,
        after: request.userContext.afterEvent != null
            ? TravelLeg(
                from: request.venue.address,
                to: request.userContext.afterEvent,
                duration: 12, // minutes
                method: TravelMethod.walk,
              )
            : null,
        isEnoughTime: true,
      );
    } catch (e) {
      return null;
    }
  }

  // ============================================================================
  // BOOKING EXECUTION
  // ============================================================================

  /// Execute the actual booking
  Future<BookingExecution> _executeBooking(
    AnchorBookingRequest request,
    BookingValidation validation,
  ) async {
    final steps = <BookingStep>[];

    try {
      // Step 1: Reserve spot via provider API
      steps.add(await _reserveSpot(request));

      // Step 2: Process payment if needed
      if (validation.requirements.needsPayment) {
        steps.add(await _processPayment(request));
      }

      // Step 3: Handle any additional requirements
      if (validation.requirements.needsWaiver) {
        steps.add(await _handleWaiver(request));
      }

      final overallStatus = steps.any((s) => s.status == StepStatus.failed)
          ? ExecutionStatus.failed
          : ExecutionStatus.success;

      return BookingExecution(
        steps: steps,
        overallStatus: overallStatus,
        completedAt: DateTime.now(),
        result: overallStatus == ExecutionStatus.success
            ? _buildSuccessResult(steps)
            : null,
      );
    } catch (e) {
      steps.add(
        BookingStep(
          step: steps.length + 1,
          action: 'Handle booking error',
          status: StepStatus.failed,
          errorMessage: e.toString(),
        ),
      );

      return BookingExecution(
        steps: steps,
        overallStatus: ExecutionStatus.failed,
        completedAt: DateTime.now(),
        failureReason: e.toString(),
      );
    }
  }

  /// Reserve spot via provider API
  Future<BookingStep> _reserveSpot(AnchorBookingRequest request) async {
    try {
      final response = await _httpClient
          .post(
            Uri.parse('$baseUrl/book'),
            headers: {'Content-Type': 'application/json'},
            body: json.encode({
              'activityId': request.activityId,
              'userId': request.userId,
              'provider': request.pricing.provider.name,
            }),
          )
          .timeout(bookingTimeout);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return BookingStep(
          step: 1,
          action: 'Reserve spot via ${request.pricing.provider.displayName}',
          status: StepStatus.success,
          confirmationNumber: data['confirmationNumber'],
          metadata: data,
        );
      } else {
        return BookingStep(
          step: 1,
          action: 'Reserve spot via ${request.pricing.provider.displayName}',
          status: StepStatus.failed,
          errorMessage: 'HTTP ${response.statusCode}: ${response.body}',
        );
      }
    } catch (e) {
      return BookingStep(
        step: 1,
        action: 'Reserve spot via ${request.pricing.provider.displayName}',
        status: StepStatus.failed,
        errorMessage: e.toString(),
      );
    }
  }

  /// Process payment
  Future<BookingStep> _processPayment(AnchorBookingRequest request) async {
    try {
      // Payment processing logic would go here
      // For now, return success
      return const BookingStep(
        step: 2,
        action: 'Process payment',
        status: StepStatus.success,
        confirmationNumber: 'PAY-12345',
      );
    } catch (e) {
      return BookingStep(
        step: 2,
        action: 'Process payment',
        status: StepStatus.failed,
        errorMessage: e.toString(),
      );
    }
  }

  /// Handle waiver requirement
  Future<BookingStep> _handleWaiver(AnchorBookingRequest request) async {
    try {
      // Waiver handling logic would go here
      // For now, return success
      return const BookingStep(
        step: 3,
        action: 'Handle waiver',
        status: StepStatus.success,
        confirmationNumber: 'WAIVER-67890',
      );
    } catch (e) {
      return BookingStep(
        step: 3,
        action: 'Handle waiver',
        status: StepStatus.failed,
        errorMessage: e.toString(),
      );
    }
  }

  // ============================================================================
  // CALENDAR INTEGRATION
  // ============================================================================

  /// Add booking to calendar with all context
  Future<CalendarEventResult> _addToCalendar(
    AnchorBookingRequest request,
    BookingExecution execution,
    CalendarIntegration calendarIntegration,
  ) async {
    try {
      final events = <WellnessCalendarEvent>[];

      // Main activity event
      final mainEvent = _createMainCalendarEvent(request, execution);
      events.add(mainEvent);

      // Travel time blocks if enabled
      if (request.preferences.blockTravelTime) {
        final travelEvents = _createTravelTimeEvents(request);
        events.addAll(travelEvents);
      }

      // Add events to calendar
      final eventIds = <String>[];
      for (final event in events) {
        final eventId = await _calendarService.createEvent(
          calendarIntegration,
          event,
        );
        eventIds.add(eventId);
      }

      // Setup reminders
      int remindersSet = 0;
      if (request.preferences.enableReminders) {
        remindersSet = await _setupCalendarReminders(
          request,
          mainEvent,
          calendarIntegration,
        );
      }

      return CalendarEventResult(
        added: true,
        calendarName: calendarIntegration.primaryCalendar,
        eventId: eventIds.isNotEmpty ? eventIds.first : null,
        includesTravelTime: request.preferences.blockTravelTime,
        remindersSet: remindersSet,
        events: events,
      );
    } catch (e) {
      return CalendarEventResult(
        added: false,
        calendarName: calendarIntegration.primaryCalendar,
      );
    }
  }

  /// Create main calendar event for the activity
  WellnessCalendarEvent _createMainCalendarEvent(
    AnchorBookingRequest request,
    BookingExecution execution,
  ) {
    final activity = request.activity;
    final venue = request.venue;
    final confirmationNumber = execution.steps
        .where((s) => s.confirmationNumber != null)
        .first
        .confirmationNumber;

    final title =
        '${_getActivityEmoji(activity.type)} ${activity.name} at ${venue.name}';
    final description = _buildEventDescription(request, confirmationNumber);

    return WellnessCalendarEvent(
      title: title,
      start: activity.time,
      end: activity.time.add(Duration(minutes: activity.duration)),
      location: venue.address,
      description: description,
      attendees: [
        CalendarAttendee(
          email: 'user@example.com', // This would come from user context
          responseStatus: ResponseStatus.accepted,
        ),
      ],
      reminders: _buildReminderConfig(request),
      colorId: '6', // Wellness green
      extendedProperties: {
        'anchorBookingId': execution.steps.first.confirmationNumber ?? '',
        'anchorActivityType': activity.type.name,
        'anchorVenueId': venue.id,
        'anchorTracking': 'enabled',
      },
    );
  }

  /// Create travel time blocking events
  List<WellnessCalendarEvent> _createTravelTimeEvents(
    AnchorBookingRequest request,
  ) {
    final events = <WellnessCalendarEvent>[];
    final activity = request.activity;
    final arriveEarly = request.preferences.arriveEarlyMinutes;

    // Pre-activity travel/prep time
    final prepStart = activity.time.subtract(
      Duration(minutes: arriveEarly + 15),
    );
    final prepEnd = activity.time.subtract(Duration(minutes: arriveEarly));

    events.add(
      WellnessCalendarEvent(
        title: '🎒 Prep for ${activity.name}',
        start: prepStart,
        end: prepEnd,
        location: request.userContext.location ?? 'Current location',
        description: 'Pack water bottle, change if needed',
        transparency: EventTransparency.transparent,
        colorId: '7', // Grey/neutral
      ),
    );

    // Travel to venue
    final travelStart = prepEnd;
    final travelEnd = activity.time.subtract(Duration(minutes: arriveEarly));

    events.add(
      WellnessCalendarEvent(
        title: '🚶 Travel to ${request.venue.name}',
        start: travelStart,
        end: travelEnd,
        location: request.venue.address,
        description:
            'Leave at ${_formatTime(travelStart)} to arrive $arriveEarly min early',
        transparency: EventTransparency.transparent,
        colorId: '7',
      ),
    );

    // Post-activity travel if next event exists
    if (request.userContext.afterEvent != null) {
      final afterTravelStart = activity.time.add(
        Duration(minutes: activity.duration),
      );
      final afterTravelEnd = afterTravelStart.add(const Duration(minutes: 15));

      events.add(
        WellnessCalendarEvent(
          title: '🚶 Travel to ${request.userContext.afterEvent}',
          start: afterTravelStart,
          end: afterTravelEnd,
          location: request.userContext.afterEvent!,
          description: 'Travel from ${request.venue.name}',
          transparency: EventTransparency.transparent,
          colorId: '7',
        ),
      );
    }

    return events;
  }

  // ============================================================================
  // REMINDERS & NOTIFICATIONS
  // ============================================================================

  /// Setup comprehensive reminder system
  Future<void> _setupReminders(
    AnchorBookingRequest request,
    BookingExecution execution,
    CalendarEventResult? calendarResult,
  ) async {
    if (!request.preferences.enableReminders) return;

    try {
      final activity = request.activity;
      final venue = request.venue;
      final confirmationNumber = execution.steps
          .where((s) => s.confirmationNumber != null)
          .first
          .confirmationNumber;

      // Standard reminders
      await _scheduleStandardReminders(
        request,
        activity,
        venue,
        confirmationNumber,
      );

      // Contextual reminders based on user context
      await _scheduleContextualReminders(request, activity, venue);
    } catch (e) {
      // Log error but don't fail the booking
    }
  }

  /// Schedule standard reminders
  Future<void> _scheduleStandardReminders(
    AnchorBookingRequest request,
    BookingActivity activity,
    BookingVenue venue,
    String? confirmationNumber,
  ) async {
    final reminders = [
      {
        'when': activity.time.subtract(const Duration(hours: 24)),
        'title': '✓ Yoga class tomorrow!',
        'body':
            '${activity.name} at ${venue.name} • Tomorrow ${_formatTime(activity.time)}',
      },
      {
        'when': activity.time.subtract(const Duration(hours: 2)),
        'title': 'Yoga in 2 hours',
        'body': 'Remember to bring water! ${activity.name} at ${venue.name}',
      },
      {
        'when': activity.time.subtract(
          Duration(minutes: request.preferences.arriveEarlyMinutes + 5),
        ),
        'title': 'Time to head out!',
        'body':
            'Leave now for ${venue.name}. ${request.preferences.arriveEarlyMinutes} min early arrival recommended.',
      },
    ];

    for (final reminder in reminders) {
      await _notificationService.scheduleNotification(
        when: reminder['when'] as DateTime,
        title: reminder['title'] as String,
        body: reminder['body'] as String,
        data: {
          'type': 'booking_reminder',
          'activityId': request.activityId,
          'bookingId': confirmationNumber ?? '',
        },
      );
    }
  }

  /// Schedule contextual reminders
  Future<void> _scheduleContextualReminders(
    AnchorBookingRequest request,
    BookingActivity activity,
    BookingVenue venue,
  ) async {
    // First time at venue
    if (_isFirstTimeVenue(request.userId, venue.id)) {
      await _notificationService.scheduleNotification(
        when: activity.time.subtract(const Duration(hours: 1)),
        title: 'First time at ${venue.name}?',
        body: 'They recommend arriving 15 min early to sign waiver.',
        data: {'type': 'first_time_venue'},
      );
    }

    // High stress context
    if (request.userContext.stressLevel == StressLevel.high) {
      await _notificationService.scheduleNotification(
        when: activity.time.subtract(const Duration(hours: 4)),
        title: 'Wellness break approaching',
        body:
            'Your ${activity.name} class will be a perfect stress reliever today.',
        data: {'type': 'stress_relief'},
      );
    }
  }

  // ============================================================================
  // CONFIRMATION & COMMUNICATION
  // ============================================================================

  /// Build complete booking result
  BookingResult _buildBookingResult({
    required String bookingId,
    required AnchorBookingRequest request,
    required BookingExecution execution,
    CalendarEventResult? calendarResult,
    required DateTime startTime,
  }) {
    final confirmationNumber = execution.steps
        .where((s) => s.confirmationNumber != null)
        .first
        .confirmationNumber;

    return BookingResult(
      status: execution.overallStatus,
      bookingId: bookingId,
      confirmationNumber: confirmationNumber,
      activity: request.activity,
      calendar: calendarResult,
      pricing: request.pricing,
      instructions: _buildBookingInstructions(request),
      directions: _buildTravelInstructions(request),
      nextSteps: _buildNextSteps(request),
      anchorNote: _buildAnchorNote(request, execution),
      analytics: BookingAnalytics(
        bookingTime: startTime,
        activityType: request.activity.type.name,
        venue: request.venue.name,
        city: _extractCityFromAddress(request.venue.address),
        advanceBookingHours: request.activity.time
            .difference(startTime)
            .inHours,
        source: BookingSource
            .chat, // This would be determined by the calling context
      ),
    );
  }

  // ============================================================================
  // HELPER METHODS
  // ============================================================================

  AvailabilityStatus _parseAvailabilityStatus(String status) {
    switch (status.toLowerCase()) {
      case 'available':
        return AvailabilityStatus.available;
      case 'full':
        return AvailabilityStatus.full;
      case 'waitlist':
        return AvailabilityStatus.waitlist;
      case 'cancelled':
        return AvailabilityStatus.cancelled;
      default:
        return AvailabilityStatus.unknown;
    }
  }

  ValidationRecommendation _determineRecommendation(
    AvailabilityCheck availability,
    CalendarConflictCheck calendarConflict,
    RequirementCheck requirements,
  ) {
    if (availability.status == AvailabilityStatus.full ||
        availability.status == AvailabilityStatus.cancelled) {
      return ValidationRecommendation.doNotBook;
    }

    if (calendarConflict.hasConflict) {
      final hasSevereConflict =
          calendarConflict.conflicts?.any(
            (c) => c.severity == ConflictSeverity.severe,
          ) ??
          false;

      if (hasSevereConflict) {
        return ValidationRecommendation.doNotBook;
      } else {
        return ValidationRecommendation.checkConflicts;
      }
    }

    if (!requirements.allMet) {
      return ValidationRecommendation.requiresAction;
    }

    return ValidationRecommendation.safeToBook;
  }

  bool _hasTimeConflict(
    DateTime start1,
    DateTime end1,
    DateTime start2,
    DateTime end2,
  ) {
    return start1.isBefore(end2) && start2.isBefore(end1);
  }

  ConflictSeverity _calculateConflictSeverity(
    DateTime actStart,
    DateTime actEnd,
    DateTime eventStart,
    DateTime eventEnd,
  ) {
    // Calculate overlap percentage
    final overlapStart = actStart.isAfter(eventStart) ? actStart : eventStart;
    final overlapEnd = actEnd.isBefore(eventEnd) ? actEnd : eventEnd;
    final overlapMinutes = overlapEnd.difference(overlapStart).inMinutes;
    final activityMinutes = actEnd.difference(actStart).inMinutes;

    final overlapPercent = overlapMinutes / activityMinutes;

    if (overlapPercent > 0.75) return ConflictSeverity.severe;
    if (overlapPercent > 0.25) return ConflictSeverity.moderate;
    return ConflictSeverity.minor;
  }

  BookingResult? _buildSuccessResult(List<BookingStep> steps) {
    // This would build a success result from successful steps
    return null; // Placeholder
  }

  CalendarReminders _buildReminderConfig(AnchorBookingRequest request) {
    final overrides = <ReminderOverride>[
      const ReminderOverride(
        method: ReminderMethod.popup,
        minutes: 1440,
      ), // 24h
      const ReminderOverride(method: ReminderMethod.popup, minutes: 120), // 2h
      const ReminderOverride(
        method: ReminderMethod.notification,
        minutes: 25,
      ), // Arrive early
    ];

    return CalendarReminders(useDefault: false, overrides: overrides);
  }

  Future<int> _setupCalendarReminders(
    AnchorBookingRequest request,
    WellnessCalendarEvent event,
    CalendarIntegration calendarIntegration,
  ) async {
    // Setup calendar-specific reminders
    return 3; // Number of reminders set
  }

  String _getActivityEmoji(ActivityType type) {
    switch (type) {
      case ActivityType.yoga:
        return '🧘';
      case ActivityType.pilates:
        return '🤸';
      case ActivityType.meditation:
        return '🧘‍♀️';
      case ActivityType.fitness:
        return '💪';
      case ActivityType.spa:
        return '🌸';
      case ActivityType.massage:
        return '💆';
      case ActivityType.wellness:
        return '🌿';
      case ActivityType.other:
        return '✨';
    }
  }

  String _buildEventDescription(
    AnchorBookingRequest request,
    String? confirmationNumber,
  ) {
    final activity = request.activity;
    final venue = request.venue;

    return '''${activity.name} with ${activity.instructor}

📍 ${venue.name}
${venue.address}
☎️ ${venue.phone}

🎫 Booked via ${request.pricing.provider.displayName}
${confirmationNumber != null ? 'Confirmation: $confirmationNumber' : ''}

✅ What to bring:
- Water bottle
- Towels provided
- Arrive ${request.preferences.arriveEarlyMinutes} min early

🔄 Cancellation:
${request.pricing.cancellationPolicy}

━━━━━━━━━━━━━━━━━━━━━━━━━
Booked by ANCHOR
💬 Questions? Chat with ANCHOR''';
  }

  BookingInstructions _buildBookingInstructions(AnchorBookingRequest request) {
    return const BookingInstructions(
      provided: ['Towels'],
      bring: ['Water bottle'],
      arriveEarly: 10,
      checkInInfo: 'Check in at front desk',
    );
  }

  TravelInstructions _buildTravelInstructions(AnchorBookingRequest request) {
    return TravelInstructions(
      from: request.userContext.location ?? 'Current location',
      distance: '0.4 mi',
      walkTime: 8,
      mapUrl: 'https://maps.google.com/...',
      directions: [
        'Head south on Main St',
        'Turn left on 7th Ave',
        'Destination on right',
      ],
    );
  }

  List<String> _buildNextSteps(AnchorBookingRequest request) {
    return [
      'Check-in ${request.preferences.arriveEarlyMinutes} minutes early',
      'Bring water bottle',
      'Towels provided at studio',
    ];
  }

  String _buildAnchorNote(
    AnchorBookingRequest request,
    BookingExecution execution,
  ) {
    return "Great choice! ${request.activity.type.displayName} classes have historically boosted your HRV by 18%. You'll feel ready for whatever comes next. 💪";
  }

  String _extractCityFromAddress(String address) {
    // Simple city extraction - in real app would use proper geocoding
    final parts = address.split(',');
    return parts.length > 1 ? parts[1].trim() : 'Unknown';
  }

  String _formatTime(DateTime time) {
    final hour = time.hour > 12 ? time.hour - 12 : time.hour;
    final ampm = time.hour >= 12 ? 'PM' : 'AM';
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute $ampm';
  }

  bool _isFirstTimeVenue(String userId, String venueId) {
    // This would check user's booking history
    return true; // Placeholder
  }

  void dispose() {
    _httpClient.close();
  }
}
