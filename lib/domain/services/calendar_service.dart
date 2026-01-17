import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/booking_models.dart';

/// Calendar integration service supporting multiple providers
class CalendarService {
  final http.Client _httpClient;

  CalendarService({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  // ============================================================================
  // CALENDAR EVENT OPERATIONS
  // ============================================================================

  /// Create a new calendar event
  Future<String> createEvent(
    CalendarIntegration calendarIntegration,
    WellnessCalendarEvent event,
  ) async {
    switch (calendarIntegration.provider) {
      case CalendarProvider.google:
        return _createGoogleEvent(calendarIntegration, event);
      case CalendarProvider.outlook:
        return _createOutlookEvent(calendarIntegration, event);
      case CalendarProvider.apple:
        return _createAppleEvent(calendarIntegration, event);
      case CalendarProvider.other:
        return _createGenericEvent(calendarIntegration, event);
    }
  }

  /// Get calendar events in date range
  Future<List<WellnessCalendarEvent>> getEvents(
    CalendarIntegration calendarIntegration,
    DateTime start,
    DateTime end,
  ) async {
    switch (calendarIntegration.provider) {
      case CalendarProvider.google:
        return _getGoogleEvents(calendarIntegration, start, end);
      case CalendarProvider.outlook:
        return _getOutlookEvents(calendarIntegration, start, end);
      case CalendarProvider.apple:
        return _getAppleEvents(calendarIntegration, start, end);
      case CalendarProvider.other:
        return _getGenericEvents(calendarIntegration, start, end);
    }
  }

  /// Update existing calendar event
  Future<bool> updateEvent(
    CalendarIntegration calendarIntegration,
    String eventId,
    WellnessCalendarEvent event,
  ) async {
    switch (calendarIntegration.provider) {
      case CalendarProvider.google:
        return _updateGoogleEvent(calendarIntegration, eventId, event);
      case CalendarProvider.outlook:
        return _updateOutlookEvent(calendarIntegration, eventId, event);
      case CalendarProvider.apple:
        return _updateAppleEvent(calendarIntegration, eventId, event);
      case CalendarProvider.other:
        return _updateGenericEvent(calendarIntegration, eventId, event);
    }
  }

  /// Delete calendar event
  Future<bool> deleteEvent(
    CalendarIntegration calendarIntegration,
    String eventId,
  ) async {
    switch (calendarIntegration.provider) {
      case CalendarProvider.google:
        return _deleteGoogleEvent(calendarIntegration, eventId);
      case CalendarProvider.outlook:
        return _deleteOutlookEvent(calendarIntegration, eventId);
      case CalendarProvider.apple:
        return _deleteAppleEvent(calendarIntegration, eventId);
      case CalendarProvider.other:
        return _deleteGenericEvent(calendarIntegration, eventId);
    }
  }

  // ============================================================================
  // GOOGLE CALENDAR INTEGRATION
  // ============================================================================

  Future<String> _createGoogleEvent(
    CalendarIntegration calendarIntegration,
    WellnessCalendarEvent event,
  ) async {
    try {
      final eventData = {
        'summary': event.title,
        'location': event.location,
        'description': event.description,
        'start': {
          'dateTime': event.start.toIso8601String(),
          'timeZone': 'America/New_York', // This should be dynamic
        },
        'end': {
          'dateTime': event.end.toIso8601String(),
          'timeZone': 'America/New_York',
        },
        'attendees': event.attendees
            ?.map((a) => {
                  'email': a.email,
                  'displayName': a.displayName,
                  'responseStatus': a.responseStatus.name,
                })
            .toList(),
        'reminders': {
          'useDefault': event.reminders?.useDefault ?? false,
          'overrides': event.reminders?.overrides
              ?.map((r) => {
                    'method': r.method.name,
                    'minutes': r.minutes,
                  })
              .toList(),
        },
        'colorId': event.colorId,
        'transparency': event.transparency?.name,
        'extendedProperties': {
          'private': event.extendedProperties,
        },
        'source': {
          'title': 'ANCHOR',
          'url': 'https://anchor.app/bookings/${event.extendedProperties?['anchorBookingId']}',
        },
      };

      final response = await _httpClient.post(
        Uri.parse(
          'https://www.googleapis.com/calendar/v3/calendars/${calendarIntegration.primaryCalendar}/events',
        ),
        headers: {
          'Authorization': 'Bearer ${calendarIntegration.accessToken}',
          'Content-Type': 'application/json',
        },
        body: json.encode(eventData),
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        return responseData['id'] as String;
      } else {
        throw Exception('Failed to create Google Calendar event: ${response.body}');
      }
    } catch (e) {
      throw Exception('Google Calendar creation error: $e');
    }
  }

  Future<List<WellnessCalendarEvent>> _getGoogleEvents(
    CalendarIntegration calendarIntegration,
    DateTime start,
    DateTime end,
  ) async {
    try {
      final response = await _httpClient.get(
        Uri.parse(
          'https://www.googleapis.com/calendar/v3/calendars/${calendarIntegration.primaryCalendar}/events'
          '?timeMin=${start.toIso8601String()}'
          '&timeMax=${end.toIso8601String()}'
          '&singleEvents=true'
          '&orderBy=startTime',
        ),
        headers: {
          'Authorization': 'Bearer ${calendarIntegration.accessToken}',
        },
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final events = <WellnessCalendarEvent>[];

        for (final item in data['items']) {
          events.add(_parseGoogleEvent(item));
        }

        return events;
      } else {
        throw Exception('Failed to get Google Calendar events: ${response.body}');
      }
    } catch (e) {
      throw Exception('Google Calendar fetch error: $e');
    }
  }

  Future<bool> _updateGoogleEvent(
    CalendarIntegration calendarIntegration,
    String eventId,
    WellnessCalendarEvent event,
  ) async {
    try {
      final eventData = {
        'summary': event.title,
        'location': event.location,
        'description': event.description,
        'start': {
          'dateTime': event.start.toIso8601String(),
          'timeZone': 'America/New_York',
        },
        'end': {
          'dateTime': event.end.toIso8601String(),
          'timeZone': 'America/New_York',
        },
      };

      final response = await _httpClient.put(
        Uri.parse(
          'https://www.googleapis.com/calendar/v3/calendars/${calendarIntegration.primaryCalendar}/events/$eventId',
        ),
        headers: {
          'Authorization': 'Bearer ${calendarIntegration.accessToken}',
          'Content-Type': 'application/json',
        },
        body: json.encode(eventData),
      );

      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }

  Future<bool> _deleteGoogleEvent(
    CalendarIntegration calendarIntegration,
    String eventId,
  ) async {
    try {
      final response = await _httpClient.delete(
        Uri.parse(
          'https://www.googleapis.com/calendar/v3/calendars/${calendarIntegration.primaryCalendar}/events/$eventId',
        ),
        headers: {
          'Authorization': 'Bearer ${calendarIntegration.accessToken}',
        },
      );

      return response.statusCode == 204;
    } catch (e) {
      return false;
    }
  }

  WellnessCalendarEvent _parseGoogleEvent(Map<String, dynamic> eventData) {
    return WellnessCalendarEvent(
      title: eventData['summary'] ?? 'No title',
      start: DateTime.parse(eventData['start']['dateTime'] ?? eventData['start']['date']),
      end: DateTime.parse(eventData['end']['dateTime'] ?? eventData['end']['date']),
      location: eventData['location'] ?? '',
      description: eventData['description'] ?? '',
      eventId: eventData['id'],
      attendees: (eventData['attendees'] as List<dynamic>?)
          ?.map((a) => CalendarAttendee(
                email: a['email'],
                displayName: a['displayName'],
                responseStatus: _parseResponseStatus(a['responseStatus']),
              ))
          .toList(),
      reminders: _parseGoogleReminders(eventData['reminders']),
      colorId: eventData['colorId'],
      transparency: _parseTransparency(eventData['transparency']),
      extendedProperties: eventData['extendedProperties']?['private']?.cast<String, String>(),
    );
  }

  CalendarReminders? _parseGoogleReminders(Map<String, dynamic>? remindersData) {
    if (remindersData == null) return null;

    return CalendarReminders(
      useDefault: remindersData['useDefault'] ?? false,
      overrides: (remindersData['overrides'] as List<dynamic>?)
          ?.map((o) => ReminderOverride(
                method: _parseReminderMethod(o['method']),
                minutes: o['minutes'],
              ))
          .toList(),
    );
  }

  // ============================================================================
  // OUTLOOK CALENDAR INTEGRATION
  // ============================================================================

  Future<String> _createOutlookEvent(
    CalendarIntegration calendarIntegration,
    WellnessCalendarEvent event,
  ) async {
    try {
      final eventData = {
        'subject': event.title,
        'location': {
          'displayName': event.location,
        },
        'body': {
          'contentType': 'HTML',
          'content': event.description.replaceAll('\n', '<br>'),
        },
        'start': {
          'dateTime': event.start.toIso8601String(),
          'timeZone': 'America/New_York',
        },
        'end': {
          'dateTime': event.end.toIso8601String(),
          'timeZone': 'America/New_York',
        },
        'attendees': event.attendees
            ?.map((a) => {
                  'emailAddress': {
                    'address': a.email,
                    'name': a.displayName,
                  },
                  'type': 'required',
                })
            .toList(),
        'reminderMinutesBeforeStart': event.reminders?.overrides?.first.minutes ?? 15,
        'categories': ['Wellness', 'ANCHOR'],
      };

      final response = await _httpClient.post(
        Uri.parse('https://graph.microsoft.com/v1.0/me/events'),
        headers: {
          'Authorization': 'Bearer ${calendarIntegration.accessToken}',
          'Content-Type': 'application/json',
        },
        body: json.encode(eventData),
      );

      if (response.statusCode == 201) {
        final responseData = json.decode(response.body);
        return responseData['id'] as String;
      } else {
        throw Exception('Failed to create Outlook event: ${response.body}');
      }
    } catch (e) {
      throw Exception('Outlook Calendar creation error: $e');
    }
  }

  Future<List<WellnessCalendarEvent>> _getOutlookEvents(
    CalendarIntegration calendarIntegration,
    DateTime start,
    DateTime end,
  ) async {
    try {
      final response = await _httpClient.get(
        Uri.parse(
          'https://graph.microsoft.com/v1.0/me/calendarview'
          '?startDateTime=${start.toIso8601String()}'
          '&endDateTime=${end.toIso8601String()}'
          '&\$orderby=start/dateTime',
        ),
        headers: {
          'Authorization': 'Bearer ${calendarIntegration.accessToken}',
        },
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final events = <WellnessCalendarEvent>[];

        for (final item in data['value']) {
          events.add(_parseOutlookEvent(item));
        }

        return events;
      } else {
        throw Exception('Failed to get Outlook events: ${response.body}');
      }
    } catch (e) {
      throw Exception('Outlook Calendar fetch error: $e');
    }
  }

  Future<bool> _updateOutlookEvent(
    CalendarIntegration calendarIntegration,
    String eventId,
    WellnessCalendarEvent event,
  ) async {
    try {
      final eventData = {
        'subject': event.title,
        'location': {
          'displayName': event.location,
        },
        'body': {
          'contentType': 'HTML',
          'content': event.description.replaceAll('\n', '<br>'),
        },
        'start': {
          'dateTime': event.start.toIso8601String(),
          'timeZone': 'America/New_York',
        },
        'end': {
          'dateTime': event.end.toIso8601String(),
          'timeZone': 'America/New_York',
        },
      };

      final response = await _httpClient.patch(
        Uri.parse('https://graph.microsoft.com/v1.0/me/events/$eventId'),
        headers: {
          'Authorization': 'Bearer ${calendarIntegration.accessToken}',
          'Content-Type': 'application/json',
        },
        body: json.encode(eventData),
      );

      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }

  Future<bool> _deleteOutlookEvent(
    CalendarIntegration calendarIntegration,
    String eventId,
  ) async {
    try {
      final response = await _httpClient.delete(
        Uri.parse('https://graph.microsoft.com/v1.0/me/events/$eventId'),
        headers: {
          'Authorization': 'Bearer ${calendarIntegration.accessToken}',
        },
      );

      return response.statusCode == 204;
    } catch (e) {
      return false;
    }
  }

  WellnessCalendarEvent _parseOutlookEvent(Map<String, dynamic> eventData) {
    return WellnessCalendarEvent(
      title: eventData['subject'] ?? 'No title',
      start: DateTime.parse(eventData['start']['dateTime']),
      end: DateTime.parse(eventData['end']['dateTime']),
      location: eventData['location']?['displayName'] ?? '',
      description: eventData['body']?['content']?.replaceAll('<br>', '\n') ?? '',
      eventId: eventData['id'],
      attendees: (eventData['attendees'] as List<dynamic>?)
          ?.map((a) => CalendarAttendee(
                email: a['emailAddress']['address'],
                displayName: a['emailAddress']['name'],
                responseStatus: _parseOutlookResponseStatus(a['status']['response']),
              ))
          .toList(),
    );
  }

  // ============================================================================
  // APPLE CALENDAR INTEGRATION (EventKit)
  // ============================================================================

  Future<String> _createAppleEvent(
    CalendarIntegration calendarIntegration,
    WellnessCalendarEvent event,
  ) async {
    // Apple Calendar integration would use device_calendar package
    // This is a placeholder implementation
    throw UnimplementedError('Apple Calendar integration requires device_calendar package');
  }

  Future<List<WellnessCalendarEvent>> _getAppleEvents(
    CalendarIntegration calendarIntegration,
    DateTime start,
    DateTime end,
  ) async {
    throw UnimplementedError('Apple Calendar integration requires device_calendar package');
  }

  Future<bool> _updateAppleEvent(
    CalendarIntegration calendarIntegration,
    String eventId,
    WellnessCalendarEvent event,
  ) async {
    throw UnimplementedError('Apple Calendar integration requires device_calendar package');
  }

  Future<bool> _deleteAppleEvent(
    CalendarIntegration calendarIntegration,
    String eventId,
  ) async {
    throw UnimplementedError('Apple Calendar integration requires device_calendar package');
  }

  // ============================================================================
  // GENERIC CALENDAR INTEGRATION
  // ============================================================================

  Future<String> _createGenericEvent(
    CalendarIntegration calendarIntegration,
    WellnessCalendarEvent event,
  ) async {
    // Fallback for other calendar providers
    throw UnimplementedError('Generic calendar integration not yet implemented');
  }

  Future<List<WellnessCalendarEvent>> _getGenericEvents(
    CalendarIntegration calendarIntegration,
    DateTime start,
    DateTime end,
  ) async {
    throw UnimplementedError('Generic calendar integration not yet implemented');
  }

  Future<bool> _updateGenericEvent(
    CalendarIntegration calendarIntegration,
    String eventId,
    WellnessCalendarEvent event,
  ) async {
    throw UnimplementedError('Generic calendar integration not yet implemented');
  }

  Future<bool> _deleteGenericEvent(
    CalendarIntegration calendarIntegration,
    String eventId,
  ) async {
    throw UnimplementedError('Generic calendar integration not yet implemented');
  }

  // ============================================================================
  // HELPER METHODS
  // ============================================================================

  ResponseStatus _parseResponseStatus(String? status) {
    switch (status?.toLowerCase()) {
      case 'needsaction':
        return ResponseStatus.needsAction;
      case 'declined':
        return ResponseStatus.declined;
      case 'tentative':
        return ResponseStatus.tentative;
      case 'accepted':
        return ResponseStatus.accepted;
      default:
        return ResponseStatus.needsAction;
    }
  }

  ResponseStatus _parseOutlookResponseStatus(String? status) {
    switch (status?.toLowerCase()) {
      case 'none':
        return ResponseStatus.needsAction;
      case 'declined':
        return ResponseStatus.declined;
      case 'tentativelyaccepted':
        return ResponseStatus.tentative;
      case 'accepted':
        return ResponseStatus.accepted;
      default:
        return ResponseStatus.needsAction;
    }
  }

  EventTransparency? _parseTransparency(String? transparency) {
    switch (transparency?.toLowerCase()) {
      case 'opaque':
        return EventTransparency.opaque;
      case 'transparent':
        return EventTransparency.transparent;
      default:
        return null;
    }
  }

  ReminderMethod _parseReminderMethod(String method) {
    switch (method.toLowerCase()) {
      case 'popup':
        return ReminderMethod.popup;
      case 'email':
        return ReminderMethod.email;
      case 'sms':
        return ReminderMethod.sms;
      default:
        return ReminderMethod.notification;
    }
  }

  void dispose() {
    _httpClient.close();
  }
}