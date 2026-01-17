import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/models/booking_models.dart';
import '../../domain/services/booking_calendar_engine.dart';
import '../../domain/services/calendar_service.dart';
import '../../domain/services/notification_service.dart' hide ReminderTiming;

part 'booking_provider.g.dart';

// ============================================================================
// SERVICE PROVIDERS
// ============================================================================

@riverpod
CalendarService calendarService(Ref ref) {
  return CalendarService();
}

@riverpod
NotificationService notificationService(Ref ref) {
  return NotificationService();
}

@riverpod
BookingCalendarEngine bookingCalendarEngine(Ref ref) {
  return BookingCalendarEngine(
    calendarService: ref.watch(calendarServiceProvider),
    notificationService: ref.watch(notificationServiceProvider),
  );
}

// ============================================================================
// BOOKING STATE PROVIDERS
// ============================================================================

@riverpod
class BookingState extends _$BookingState {
  @override
  BookingStateData build() {
    return const BookingStateData();
  }

  /// Process a complete booking request
  Future<BookingResult> processBooking(
    AnchorBookingRequest request, {
    CalendarIntegration? calendarIntegration,
  }) async {
    state = state.copyWith(
      currentBooking: request,
      isProcessing: true,
      error: null,
    );

    try {
      final engine = ref.read(bookingCalendarEngineProvider);
      final result = await engine.processBooking(request, calendarIntegration);

      // Update state based on result
      if (result.status == ExecutionStatus.success) {
        state = state.copyWith(
          isProcessing: false,
          lastSuccessfulBooking: result,
          bookingHistory: [...state.bookingHistory, result],
        );
      } else {
        state = state.copyWith(
          isProcessing: false,
          error: 'Booking failed: ${result.anchorNote ?? "Unknown error"}',
        );
      }

      return result;
    } catch (e) {
      state = state.copyWith(isProcessing: false, error: 'Booking error: $e');

      return BookingResult(
        status: ExecutionStatus.failed,
        bookingId: 'error',
        anchorNote: e.toString(),
      );
    }
  }

  /// Validate a booking request
  Future<BookingValidation> validateBooking(
    AnchorBookingRequest request, {
    CalendarIntegration? calendarIntegration,
  }) async {
    try {
      final engine = ref.read(bookingCalendarEngineProvider);
      final validation = await engine.validateBooking(
        request,
        calendarIntegration,
      );
      return validation;
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
            message: 'Validation failed: $e',
            severity: IssueSeverity.error,
          ),
        ],
      );
    }
  }

  /// Cancel a booking
  Future<CancellationResult> cancelBooking(
    String bookingId, {
    CancellationReason reason = CancellationReason.userRequest,
    String? note,
  }) async {
    try {
      // Find the booking
      final booking = state.bookingHistory
          .where((b) => b.bookingId == bookingId)
          .firstOrNull;

      if (booking == null) {
        return const CancellationResult(
          success: false,
          message: 'Booking not found',
        );
      }

      // Mock cancellation logic - in real implementation would call API
      final now = DateTime.now();
      final activityTime = booking.activity?.time ?? now;
      final hoursUntil = activityTime.difference(now).inHours;

      // Check cancellation policy
      final isPenaltyFree = hoursUntil >= 12; // Assuming 12-hour policy

      // Cancel notifications
      await ref
          .read(notificationServiceProvider)
          .cancelBookingReminders(bookingId);

      // Remove from calendar if added
      // TODO: Implement calendar event removal

      final result = CancellationResult(
        success: true,
        message: 'Booking cancelled successfully',
        penaltyFree: isPenaltyFree,
        creditRefunded: isPenaltyFree,
        followUp: const CancellationFollowUp(
          message: 'Still want to do something? I can find alternatives.',
          actions: ['Find similar', 'I\'m good', 'Block time anyway'],
        ),
      );

      // Update state
      final updatedHistory = state.bookingHistory
          .map(
            (b) => b.bookingId == bookingId
                ? b.copyWith(
                    status: ExecutionStatus.failed,
                    anchorNote: 'Cancelled by user',
                  )
                : b,
          )
          .toList();

      state = state.copyWith(
        bookingHistory: updatedHistory,
        lastCancellation: result,
      );

      return result;
    } catch (e) {
      return CancellationResult(
        success: false,
        message: 'Failed to cancel booking: $e',
      );
    }
  }

  /// Clear current error
  void clearError() {
    state = state.copyWith(error: null);
  }

  /// Reset booking state
  void reset() {
    state = const BookingStateData();
  }
}

// ============================================================================
// CALENDAR INTEGRATION PROVIDERS
// ============================================================================

@riverpod
class CalendarIntegrationState extends _$CalendarIntegrationState {
  @override
  CalendarIntegrationData build() {
    return const CalendarIntegrationData();
  }

  /// Set up calendar integration
  Future<bool> setupCalendarIntegration(CalendarIntegration integration) async {
    state = state.copyWith(isConnecting: true, error: null);

    try {
      // Test the integration
      final calendarService = ref.read(calendarServiceProvider);
      await calendarService.getEvents(
        integration,
        DateTime.now(),
        DateTime.now().add(const Duration(days: 1)),
      );

      state = state.copyWith(
        isConnecting: false,
        isConnected: true,
        integration: integration,
        lastSync: DateTime.now(),
      );

      return true;
    } catch (e) {
      state = state.copyWith(
        isConnecting: false,
        isConnected: false,
        error: 'Failed to connect to calendar: $e',
      );

      return false;
    }
  }

  /// Disconnect calendar integration
  void disconnectCalendar() {
    state = state.copyWith(
      isConnected: false,
      integration: null,
      lastSync: null,
      error: null,
    );
  }

  /// Sync calendar events
  Future<void> syncCalendar() async {
    final integration = state.integration;
    if (integration == null) return;

    try {
      final calendarService = ref.read(calendarServiceProvider);
      final events = await calendarService.getEvents(
        integration,
        DateTime.now(),
        DateTime.now().add(const Duration(days: 30)),
      );

      state = state.copyWith(lastSync: DateTime.now(), syncedEvents: events);
    } catch (e) {
      state = state.copyWith(error: 'Failed to sync calendar: $e');
    }
  }
}

// ============================================================================
// REMINDER MANAGEMENT PROVIDERS
// ============================================================================

@riverpod
class ReminderState extends _$ReminderState {
  @override
  ReminderStateData build() {
    return const ReminderStateData();
  }

  /// Get all pending reminders
  Future<void> loadPendingReminders() async {
    try {
      final notificationService = ref.read(notificationServiceProvider);
      final reminders = await notificationService.getPendingReminders();

      state = state.copyWith(
        pendingReminders: reminders,
        lastUpdated: DateTime.now(),
      );
    } catch (e) {
      state = state.copyWith(error: 'Failed to load reminders: $e');
    }
  }

  /// Update reminder settings for a booking
  Future<void> updateBookingReminders(
    String bookingId,
    List<ReminderTiming> timings,
  ) async {
    try {
      // This would update the reminder settings
      // For now, just update the state
      final updatedSettings = {...state.reminderSettings, bookingId: timings};

      state = state.copyWith(reminderSettings: updatedSettings);
    } catch (e) {
      state = state.copyWith(error: 'Failed to update reminders: $e');
    }
  }

  /// Set default reminder timings
  void setDefaultReminders(List<ReminderTiming> timings) {
    state = state.copyWith(defaultTimings: timings);
  }
}

// ============================================================================
// BOOKING HISTORY PROVIDER
// ============================================================================

@riverpod
class BookingHistoryState extends _$BookingHistoryState {
  @override
  List<BookingResult> build() {
    return [];
  }

  /// Add booking to history
  void addBooking(BookingResult booking) {
    state = [...state, booking];
  }

  /// Get bookings by status
  List<BookingResult> getBookingsByStatus(ExecutionStatus status) {
    return state.where((b) => b.status == status).toList();
  }

  /// Get upcoming bookings
  List<BookingResult> getUpcomingBookings() {
    final now = DateTime.now();
    return state
        .where(
          (b) =>
              b.status == ExecutionStatus.success &&
              b.activity != null &&
              b.activity!.time.isAfter(now),
        )
        .toList()
      ..sort((a, b) => a.activity!.time.compareTo(b.activity!.time));
  }

  /// Get past bookings
  List<BookingResult> getPastBookings() {
    final now = DateTime.now();
    return state
        .where((b) => b.activity != null && b.activity!.time.isBefore(now))
        .toList()
      ..sort((a, b) => b.activity!.time.compareTo(a.activity!.time));
  }
}

// ============================================================================
// STATE CLASSES
// ============================================================================

class BookingStateData {
  final AnchorBookingRequest? currentBooking;
  final bool isProcessing;
  final String? error;
  final BookingResult? lastSuccessfulBooking;
  final CancellationResult? lastCancellation;
  final List<BookingResult> bookingHistory;

  const BookingStateData({
    this.currentBooking,
    this.isProcessing = false,
    this.error,
    this.lastSuccessfulBooking,
    this.lastCancellation,
    this.bookingHistory = const [],
  });

  BookingStateData copyWith({
    AnchorBookingRequest? currentBooking,
    bool? isProcessing,
    String? error,
    BookingResult? lastSuccessfulBooking,
    CancellationResult? lastCancellation,
    List<BookingResult>? bookingHistory,
  }) {
    return BookingStateData(
      currentBooking: currentBooking ?? this.currentBooking,
      isProcessing: isProcessing ?? this.isProcessing,
      error: error,
      lastSuccessfulBooking:
          lastSuccessfulBooking ?? this.lastSuccessfulBooking,
      lastCancellation: lastCancellation ?? this.lastCancellation,
      bookingHistory: bookingHistory ?? this.bookingHistory,
    );
  }
}

class CalendarIntegrationData {
  final bool isConnected;
  final bool isConnecting;
  final CalendarIntegration? integration;
  final DateTime? lastSync;
  final List<WellnessCalendarEvent> syncedEvents;
  final String? error;

  const CalendarIntegrationData({
    this.isConnected = false,
    this.isConnecting = false,
    this.integration,
    this.lastSync,
    this.syncedEvents = const [],
    this.error,
  });

  CalendarIntegrationData copyWith({
    bool? isConnected,
    bool? isConnecting,
    CalendarIntegration? integration,
    DateTime? lastSync,
    List<WellnessCalendarEvent>? syncedEvents,
    String? error,
  }) {
    return CalendarIntegrationData(
      isConnected: isConnected ?? this.isConnected,
      isConnecting: isConnecting ?? this.isConnecting,
      integration: integration ?? this.integration,
      lastSync: lastSync ?? this.lastSync,
      syncedEvents: syncedEvents ?? this.syncedEvents,
      error: error,
    );
  }
}

class ReminderStateData {
  final List<PendingReminderInfo> pendingReminders;
  final Map<String, List<ReminderTiming>> reminderSettings;
  final List<ReminderTiming> defaultTimings;
  final DateTime? lastUpdated;
  final String? error;

  const ReminderStateData({
    this.pendingReminders = const [],
    this.reminderSettings = const {},
    this.defaultTimings = const [
      ReminderTiming.twentyFourHours,
      ReminderTiming.twoHours,
      ReminderTiming.thirtyMinutes,
    ],
    this.lastUpdated,
    this.error,
  });

  ReminderStateData copyWith({
    List<PendingReminderInfo>? pendingReminders,
    Map<String, List<ReminderTiming>>? reminderSettings,
    List<ReminderTiming>? defaultTimings,
    DateTime? lastUpdated,
    String? error,
  }) {
    return ReminderStateData(
      pendingReminders: pendingReminders ?? this.pendingReminders,
      reminderSettings: reminderSettings ?? this.reminderSettings,
      defaultTimings: defaultTimings ?? this.defaultTimings,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      error: error,
    );
  }
}

// ============================================================================
// HELPER EXTENSIONS
// ============================================================================

extension BookingResultExtensions on BookingResult {
  bool get isUpcoming {
    if (activity == null) return false;
    return activity!.time.isAfter(DateTime.now()) &&
        status == ExecutionStatus.success;
  }

  bool get isPast {
    if (activity == null) return false;
    return activity!.time.isBefore(DateTime.now());
  }

  bool get isToday {
    if (activity == null) return false;
    final now = DateTime.now();
    final activityDate = activity!.time;
    return activityDate.year == now.year &&
        activityDate.month == now.month &&
        activityDate.day == now.day;
  }

  Duration? get timeUntilActivity {
    if (activity == null) return null;
    final now = DateTime.now();
    return activity!.time.difference(now);
  }
}
