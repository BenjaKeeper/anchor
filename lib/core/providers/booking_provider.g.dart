// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$calendarServiceHash() => r'77425ed3e87d8603262011e165284f53c86ce5e3';

/// See also [calendarService].
@ProviderFor(calendarService)
final calendarServiceProvider = AutoDisposeProvider<CalendarService>.internal(
  calendarService,
  name: r'calendarServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$calendarServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CalendarServiceRef = AutoDisposeProviderRef<CalendarService>;
String _$notificationServiceHash() =>
    r'cda5ea9d196dce85bee56839a4a0f035021752e3';

/// See also [notificationService].
@ProviderFor(notificationService)
final notificationServiceProvider =
    AutoDisposeProvider<NotificationService>.internal(
      notificationService,
      name: r'notificationServiceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$notificationServiceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef NotificationServiceRef = AutoDisposeProviderRef<NotificationService>;
String _$bookingCalendarEngineHash() =>
    r'8e99ed8bd4f0aab0f718bf4f9bc46df133dd3c72';

/// See also [bookingCalendarEngine].
@ProviderFor(bookingCalendarEngine)
final bookingCalendarEngineProvider =
    AutoDisposeProvider<BookingCalendarEngine>.internal(
      bookingCalendarEngine,
      name: r'bookingCalendarEngineProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$bookingCalendarEngineHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BookingCalendarEngineRef =
    AutoDisposeProviderRef<BookingCalendarEngine>;
String _$bookingStateHash() => r'97df9bf38a6b5f0b2a84d0467cde95d1c313c257';

/// See also [BookingState].
@ProviderFor(BookingState)
final bookingStateProvider =
    AutoDisposeNotifierProvider<BookingState, BookingStateData>.internal(
      BookingState.new,
      name: r'bookingStateProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$bookingStateHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$BookingState = AutoDisposeNotifier<BookingStateData>;
String _$calendarIntegrationStateHash() =>
    r'4c3d177123c28e58819567185a8dbf37eee06633';

/// See also [CalendarIntegrationState].
@ProviderFor(CalendarIntegrationState)
final calendarIntegrationStateProvider =
    AutoDisposeNotifierProvider<
      CalendarIntegrationState,
      CalendarIntegrationData
    >.internal(
      CalendarIntegrationState.new,
      name: r'calendarIntegrationStateProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$calendarIntegrationStateHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CalendarIntegrationState =
    AutoDisposeNotifier<CalendarIntegrationData>;
String _$reminderStateHash() => r'56939cfbaf06eb1147210d34f1cc9ae7889a7b2e';

/// See also [ReminderState].
@ProviderFor(ReminderState)
final reminderStateProvider =
    AutoDisposeNotifierProvider<ReminderState, ReminderStateData>.internal(
      ReminderState.new,
      name: r'reminderStateProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$reminderStateHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ReminderState = AutoDisposeNotifier<ReminderStateData>;
String _$bookingHistoryStateHash() =>
    r'aef4f8af1cf527db3fba82fe2cea3f306d2d0031';

/// See also [BookingHistoryState].
@ProviderFor(BookingHistoryState)
final bookingHistoryStateProvider =
    AutoDisposeNotifierProvider<
      BookingHistoryState,
      List<BookingResult>
    >.internal(
      BookingHistoryState.new,
      name: r'bookingHistoryStateProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$bookingHistoryStateHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$BookingHistoryState = AutoDisposeNotifier<List<BookingResult>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
