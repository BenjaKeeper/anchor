import 'dart:async';
import 'dart:ui';
import 'dart:convert';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

/// Notification service for booking reminders and confirmations
class NotificationService {
  static final FlutterLocalNotificationsPlugin _notifications =
      FlutterLocalNotificationsPlugin();

  static bool _initialized = false;

  // ============================================================================
  // INITIALIZATION
  // ============================================================================

  static Future<void> initialize() async {
    if (_initialized) return;

    const androidSettings = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );
    const iosSettings = DarwinInitializationSettings(
      requestSoundPermission: true,
      requestBadgePermission: true,
      requestAlertPermission: true,
    );

    const initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _notifications.initialize(
      initSettings,
      onDidReceiveNotificationResponse: _onNotificationTapped,
    );

    _initialized = true;
  }

  static void _onNotificationTapped(NotificationResponse response) {
    final payload = response.payload;
    if (payload != null) {
      final data = json.decode(payload);
      _handleNotificationTap(data);
    }
  }

  static void _handleNotificationTap(Map<String, dynamic> data) {
    final type = data['type'] as String?;

    switch (type) {
      case 'booking_reminder':
        // Navigate to booking details
        break;
      case 'booking_confirmation':
        // Navigate to calendar or booking history
        break;
      case 'first_time_venue':
        // Show venue information
        break;
      case 'stress_relief':
        // Navigate to wellness dashboard
        break;
      default:
        // Default action
        break;
    }
  }

  // ============================================================================
  // BOOKING NOTIFICATIONS
  // ============================================================================

  /// Schedule a notification
  Future<void> scheduleNotification({
    required DateTime when,
    required String title,
    required String body,
    Map<String, dynamic>? data,
  }) async {
    if (!_initialized) await initialize();

    final notificationId = when.millisecondsSinceEpoch ~/ 1000;

    const androidDetails = AndroidNotificationDetails(
      'booking_reminders',
      'Booking Reminders',
      channelDescription: 'Reminders for your wellness bookings',
      importance: Importance.high,
      priority: Priority.high,
      icon: '@mipmap/ic_launcher',
      color: Color(0xFF4CAF50), // Wellness green
      enableVibration: true,
      playSound: true,
    );

    const iosDetails = DarwinNotificationDetails(
      categoryIdentifier: 'booking_reminder',
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    const notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _notifications.zonedSchedule(
      notificationId,
      title,
      body,
      _convertToTZDateTime(when),
      notificationDetails,
      payload: data != null ? json.encode(data) : null,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }

  /// Send immediate booking confirmation notification
  Future<void> sendBookingConfirmation({
    required String activityName,
    required String venue,
    required DateTime time,
    required String confirmationCode,
  }) async {
    if (!_initialized) await initialize();

    const androidDetails = AndroidNotificationDetails(
      'booking_confirmations',
      'Booking Confirmations',
      channelDescription: 'Confirmations for your wellness bookings',
      importance: Importance.max,
      priority: Priority.high,
      icon: '@mipmap/ic_launcher',
      color: Color(0xFF4CAF50),
      enableVibration: true,
      playSound: true,
      styleInformation: BigTextStyleInformation(''),
    );

    const iosDetails = DarwinNotificationDetails(
      categoryIdentifier: 'booking_confirmation',
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    const notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _notifications.show(
      DateTime.now().millisecondsSinceEpoch ~/ 1000,
      '✓ Booking confirmed!',
      '$activityName at $venue • ${_formatTime(time)}',
      notificationDetails,
      payload: json.encode({
        'type': 'booking_confirmation',
        'activityName': activityName,
        'venue': venue,
        'confirmationCode': confirmationCode,
      }),
    );
  }

  /// Schedule standard booking reminder sequence
  Future<void> scheduleBookingReminderSequence({
    required String bookingId,
    required String activityName,
    required String venue,
    required DateTime activityTime,
    List<ReminderTiming>? customTimings,
  }) async {
    final timings =
        customTimings ??
        [
          ReminderTiming.twentyFourHours,
          ReminderTiming.twoHours,
          ReminderTiming.thirtyMinutes,
        ];

    for (final timing in timings) {
      final reminderTime = activityTime.subtract(
        Duration(minutes: timing.minutes),
      );

      if (reminderTime.isAfter(DateTime.now())) {
        final message = _buildReminderMessage(timing, activityName, venue);

        await scheduleNotification(
          when: reminderTime,
          title: message.title,
          body: message.body,
          data: {
            'type': 'booking_reminder',
            'bookingId': bookingId,
            'activityName': activityName,
            'venue': venue,
            'timing': timing.name,
          },
        );
      }
    }
  }

  /// Schedule contextual reminder
  Future<void> scheduleContextualReminder({
    required DateTime when,
    required String title,
    required String body,
    required String context,
    Map<String, dynamic>? additionalData,
  }) async {
    final data = {
      'type': 'contextual_reminder',
      'context': context,
      ...?additionalData,
    };

    await scheduleNotification(
      when: when,
      title: title,
      body: body,
      data: data,
    );
  }

  // ============================================================================
  // REMINDER MANAGEMENT
  // ============================================================================

  /// Cancel all reminders for a booking
  Future<void> cancelBookingReminders(String bookingId) async {
    if (!_initialized) await initialize();

    // Get all pending notifications
    final pending = await _notifications.pendingNotificationRequests();

    for (final notification in pending) {
      if (notification.payload != null) {
        try {
          final data = json.decode(notification.payload!);
          if (data['bookingId'] == bookingId) {
            await _notifications.cancel(notification.id);
          }
        } catch (e) {
          // Skip invalid payload
        }
      }
    }
  }

  /// Get all pending booking reminders
  Future<List<PendingReminderInfo>> getPendingReminders() async {
    if (!_initialized) await initialize();

    final pending = await _notifications.pendingNotificationRequests();
    final bookingReminders = <PendingReminderInfo>[];

    for (final notification in pending) {
      if (notification.payload != null) {
        try {
          final data = json.decode(notification.payload!);
          if (data['type'] == 'booking_reminder') {
            bookingReminders.add(
              PendingReminderInfo(
                id: notification.id,
                title: notification.title ?? '',
                body: notification.body ?? '',
                bookingId: data['bookingId'],
                activityName: data['activityName'],
                venue: data['venue'],
                timing: data['timing'],
              ),
            );
          }
        } catch (e) {
          // Skip invalid payload
        }
      }
    }

    return bookingReminders;
  }

  /// Update reminder for a booking
  Future<void> updateBookingReminder({
    required String bookingId,
    required ReminderTiming timing,
    required DateTime newTime,
    required String title,
    required String body,
  }) async {
    // Cancel existing reminder for this timing
    final pending = await _notifications.pendingNotificationRequests();

    for (final notification in pending) {
      if (notification.payload != null) {
        try {
          final data = json.decode(notification.payload!);
          if (data['bookingId'] == bookingId && data['timing'] == timing.name) {
            await _notifications.cancel(notification.id);
            break;
          }
        } catch (e) {
          // Skip invalid payload
        }
      }
    }

    // Schedule new reminder
    await scheduleNotification(
      when: newTime,
      title: title,
      body: body,
      data: {
        'type': 'booking_reminder',
        'bookingId': bookingId,
        'timing': timing.name,
      },
    );
  }

  // ============================================================================
  // SMART REMINDER FEATURES
  // ============================================================================

  /// Schedule weather-dependent reminder
  Future<void> scheduleWeatherReminder({
    required DateTime activityTime,
    required String activityName,
    required String venue,
    required bool isOutdoor,
  }) async {
    if (!isOutdoor) return;

    // Schedule weather check 4 hours before
    final weatherCheckTime = activityTime.subtract(const Duration(hours: 4));

    if (weatherCheckTime.isAfter(DateTime.now())) {
      await scheduleNotification(
        when: weatherCheckTime,
        title: 'Weather check for $activityName',
        body: 'Check the weather forecast for your outdoor activity at $venue',
        data: {
          'type': 'weather_reminder',
          'activityName': activityName,
          'venue': venue,
          'isOutdoor': true,
        },
      );
    }
  }

  /// Schedule traffic-aware departure reminder
  Future<void> scheduleTrafficAwareReminder({
    required DateTime activityTime,
    required String activityName,
    required String venue,
    required int baseMinutesToVenue,
    required int bufferMinutes,
  }) async {
    // Schedule traffic check 30 minutes before planned departure
    final trafficCheckTime = activityTime.subtract(
      Duration(minutes: baseMinutesToVenue + bufferMinutes + 30),
    );

    if (trafficCheckTime.isAfter(DateTime.now())) {
      await scheduleNotification(
        when: trafficCheckTime,
        title: 'Check traffic to $venue',
        body: 'Verify travel time for $activityName - leaving in 30 min',
        data: {
          'type': 'traffic_reminder',
          'activityName': activityName,
          'venue': venue,
          'baseMinutes': baseMinutesToVenue,
        },
      );
    }
  }

  // ============================================================================
  // HELPER METHODS
  // ============================================================================

  ReminderMessage _buildReminderMessage(
    ReminderTiming timing,
    String activityName,
    String venue,
  ) {
    switch (timing) {
      case ReminderTiming.twentyFourHours:
        return ReminderMessage(
          title: '✓ $activityName tomorrow!',
          body: '$activityName at $venue • You\'re all set! 🧘',
        );
      case ReminderTiming.twelveHours:
        return ReminderMessage(
          title: '$activityName in 12 hours',
          body: 'Get ready for $activityName at $venue',
        );
      case ReminderTiming.twoHours:
        return ReminderMessage(
          title: '$activityName in 2 hours',
          body: 'Remember to bring water! $activityName at $venue',
        );
      case ReminderTiming.oneHour:
        return ReminderMessage(
          title: '$activityName in 1 hour',
          body: 'Start getting ready for $venue',
        );
      case ReminderTiming.thirtyMinutes:
        return ReminderMessage(
          title: 'Time to head out!',
          body: 'Leave now for $venue. Arrive 10 min early recommended.',
        );
      case ReminderTiming.tenMinutes:
        return ReminderMessage(
          title: '$activityName starting soon',
          body: 'Should be at $venue now. Check in at front desk.',
        );
      case ReminderTiming.custom:
        return ReminderMessage(
          title: '$activityName reminder',
          body: '$activityName at $venue',
        );
    }
  }

  String _formatTime(DateTime time) {
    final hour = time.hour > 12
        ? time.hour - 12
        : (time.hour == 0 ? 12 : time.hour);
    final ampm = time.hour >= 12 ? 'PM' : 'AM';
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute $ampm';
  }

  // This is a placeholder - would need timezone package for proper implementation
  dynamic _convertToTZDateTime(DateTime dateTime) {
    return dateTime; // Simplified for now
  }

  void dispose() {
    // Cleanup if needed
  }
}

// ============================================================================
// SUPPORTING CLASSES
// ============================================================================

class ReminderMessage {
  final String title;
  final String body;

  const ReminderMessage({required this.title, required this.body});
}

class PendingReminderInfo {
  final int id;
  final String title;
  final String body;
  final String bookingId;
  final String activityName;
  final String venue;
  final String timing;

  const PendingReminderInfo({
    required this.id,
    required this.title,
    required this.body,
    required this.bookingId,
    required this.activityName,
    required this.venue,
    required this.timing,
  });
}

enum ReminderTiming {
  twentyFourHours,
  twelveHours,
  twoHours,
  oneHour,
  thirtyMinutes,
  tenMinutes,
  custom;

  int get minutes {
    switch (this) {
      case ReminderTiming.twentyFourHours:
        return 1440;
      case ReminderTiming.twelveHours:
        return 720;
      case ReminderTiming.twoHours:
        return 120;
      case ReminderTiming.oneHour:
        return 60;
      case ReminderTiming.thirtyMinutes:
        return 30;
      case ReminderTiming.tenMinutes:
        return 10;
      case ReminderTiming.custom:
        return 0;
    }
  }

  String get displayName {
    switch (this) {
      case ReminderTiming.twentyFourHours:
        return '24 hours before';
      case ReminderTiming.twelveHours:
        return '12 hours before';
      case ReminderTiming.twoHours:
        return '2 hours before';
      case ReminderTiming.oneHour:
        return '1 hour before';
      case ReminderTiming.thirtyMinutes:
        return '30 minutes before';
      case ReminderTiming.tenMinutes:
        return '10 minutes before';
      case ReminderTiming.custom:
        return 'Custom';
    }
  }
}
