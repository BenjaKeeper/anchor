import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/providers/booking_provider.dart';
import '../../domain/models/booking_models.dart';

/// Widget for displaying and managing bookings with the comprehensive system
class BookingManagementWidget extends ConsumerStatefulWidget {
  const BookingManagementWidget({super.key});

  @override
  ConsumerState<BookingManagementWidget> createState() =>
      _BookingManagementWidgetState();
}

class _BookingManagementWidgetState
    extends ConsumerState<BookingManagementWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ANCHOR Bookings'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.event), text: 'Book'),
            Tab(icon: Icon(Icons.history), text: 'History'),
            Tab(icon: Icon(Icons.notifications), text: 'Reminders'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          const BookingTab(),
          const BookingHistoryTab(),
          const RemindersTab(),
        ],
      ),
    );
  }
}

// ============================================================================
// BOOKING TAB
// ============================================================================

class BookingTab extends ConsumerWidget {
  const BookingTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookingState = ref.watch(bookingStateProvider);
    final calendarState = ref.watch(calendarIntegrationStateProvider);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Calendar Integration Status
          _buildCalendarIntegrationCard(context, ref, calendarState),

          const SizedBox(height: 16),

          // Sample Booking Card
          _buildSampleBookingCard(context, ref, bookingState),

          const SizedBox(height: 16),

          // Booking Status
          if (bookingState.isProcessing) const _BookingProgressCard(),

          if (bookingState.error != null)
            _BookingErrorCard(error: bookingState.error!),

          if (bookingState.lastSuccessfulBooking != null)
            _BookingSuccessCard(booking: bookingState.lastSuccessfulBooking!),
        ],
      ),
    );
  }

  Widget _buildCalendarIntegrationCard(
    BuildContext context,
    WidgetRef ref,
    CalendarIntegrationData calendarState,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  calendarState.isConnected
                      ? Icons.check_circle
                      : Icons.calendar_today,
                  color: calendarState.isConnected ? Colors.green : Colors.grey,
                ),
                const SizedBox(width: 8),
                Text(
                  'Calendar Integration',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 8),
            if (calendarState.isConnected) ...[
              Text(
                'Connected to ${calendarState.integration?.provider.name ?? 'Unknown'}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              if (calendarState.lastSync != null)
                Text(
                  'Last sync: ${_formatTime(calendarState.lastSync!)}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              const SizedBox(height: 8),
              Row(
                children: [
                  TextButton(
                    onPressed: () => ref
                        .read(calendarIntegrationStateProvider.notifier)
                        .syncCalendar(),
                    child: const Text('Sync Calendar'),
                  ),
                  TextButton(
                    onPressed: () => ref
                        .read(calendarIntegrationStateProvider.notifier)
                        .disconnectCalendar(),
                    child: const Text('Disconnect'),
                  ),
                ],
              ),
            ] else ...[
              const Text(
                'Connect your calendar to enable automatic event creation',
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: calendarState.isConnecting
                    ? null
                    : () => _connectCalendar(context, ref),
                child: calendarState.isConnecting
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Connect Calendar'),
              ),
            ],
            if (calendarState.error != null) ...[
              const SizedBox(height: 8),
              Text(
                calendarState.error!,
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildSampleBookingCard(
    BuildContext context,
    WidgetRef ref,
    BookingStateData bookingState,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sample Booking',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            _buildActivityCard(context),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: bookingState.isProcessing
                    ? null
                    : () => _bookSampleActivity(context, ref),
                child: bookingState.isProcessing
                    ? const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                          SizedBox(width: 8),
                          Text('Booking...'),
                        ],
                      )
                    : const Text('Book This Activity'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActivityCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.self_improvement, color: Colors.green),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Evening Flow Yoga',
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  'Y7 Studio',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  'Tomorrow 6:30 PM • 60 min',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 4),
                Text(
                  'with Sarah Chen • All levels',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.orange.shade100,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        '1 ClassPass Credit',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.orange.shade800,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '4.8 ⭐ • 3 spots left',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _connectCalendar(BuildContext context, WidgetRef ref) async {
    // Show calendar provider selection dialog
    final provider = await showDialog<CalendarProvider>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Connect Calendar'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Google Calendar'),
              onTap: () => Navigator.pop(context, CalendarProvider.google),
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text('Outlook Calendar'),
              onTap: () => Navigator.pop(context, CalendarProvider.outlook),
            ),
            ListTile(
              leading: const Icon(Icons.apple),
              title: const Text('Apple Calendar'),
              onTap: () => Navigator.pop(context, CalendarProvider.apple),
            ),
          ],
        ),
      ),
    );

    if (provider != null) {
      // Mock calendar integration setup
      final integration = CalendarIntegration(
        provider: provider,
        accessToken: 'mock_token_${DateTime.now().millisecondsSinceEpoch}',
        primaryCalendar: 'primary',
        calendars: [
          CalendarInfo(id: 'primary', name: 'Personal', isDefault: true),
        ],
      );

      await ref
          .read(calendarIntegrationStateProvider.notifier)
          .setupCalendarIntegration(integration);
    }
  }

  Future<void> _bookSampleActivity(BuildContext context, WidgetRef ref) async {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    final activityTime = DateTime(
      tomorrow.year,
      tomorrow.month,
      tomorrow.day,
      18, // 6 PM
      30, // 30 minutes
    );

    final request = AnchorBookingRequest(
      userId: 'user_123',
      activityId: 'class_yoga_y7_20260120_1830',
      venue: const BookingVenue(
        id: 'venue_001',
        name: 'Y7 Studio',
        address: '80 7th Ave, New York, NY 10011',
        phone: '+1 (212) 555-0123',
        latitude: 40.7484,
        longitude: -73.9857,
      ),
      activity: BookingActivity(
        type: ActivityType.yoga,
        name: 'Evening Flow',
        date: tomorrow,
        time: activityTime,
        duration: 60,
        instructor: 'Sarah Chen',
        level: 'All levels',
        description: 'A relaxing evening flow to help you unwind from the day',
      ),
      pricing: const BookingPricing(
        provider: BookingProvider.classpass,
        cost: '1 credit',
        cancellationPolicy: 'Free cancellation up to 12 hours before',
        priceAmount: 0,
        currency: 'USD',
      ),
      userContext: const UserContext(
        beforeEvent: 'Team meeting (ends at 5:30 PM)',
        afterEvent: 'Dinner at 8:00 PM',
        travelBuffer: TravelBuffer.minimal,
        stressLevel: StressLevel.moderate,
        location: 'Ace Hotel, NYC',
        travelMode: 'walking',
      ),
      preferences: const BookingPreferences(
        autoAddToCalendar: true,
        enableReminders: true,
        blockTravelTime: true,
        arriveEarlyMinutes: 10,
      ),
    );

    final calendarIntegration = ref
        .read(calendarIntegrationStateProvider)
        .integration;

    await ref
        .read(bookingStateProvider.notifier)
        .processBooking(request, calendarIntegration: calendarIntegration);
  }

  String _formatTime(DateTime time) {
    final now = DateTime.now();
    final difference = now.difference(time);

    if (difference.inMinutes < 1) {
      return 'Just now';
    } else if (difference.inHours < 1) {
      return '${difference.inMinutes}m ago';
    } else if (difference.inDays < 1) {
      return '${difference.inHours}h ago';
    } else {
      return '${difference.inDays}d ago';
    }
  }
}

// ============================================================================
// BOOKING HISTORY TAB
// ============================================================================

class BookingHistoryTab extends ConsumerWidget {
  const BookingHistoryTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(bookingHistoryStateProvider);

    if (history.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.event_available, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              'No bookings yet',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 8),
            Text(
              'Your booking history will appear here',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      );
    }

    final upcoming = history.where((b) => b.isUpcoming).toList();
    final past = history.where((b) => b.isPast).toList();

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        if (upcoming.isNotEmpty) ...[
          Text(
            'Upcoming Bookings',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          ...upcoming.map(
            (booking) => _buildBookingCard(context, booking, ref),
          ),
          const SizedBox(height: 24),
        ],
        if (past.isNotEmpty) ...[
          Text('Past Bookings', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          ...past.map((booking) => _buildBookingCard(context, booking, ref)),
        ],
      ],
    );
  }

  Widget _buildBookingCard(
    BuildContext context,
    BookingResult booking,
    WidgetRef ref,
  ) {
    final activity = booking.activity;
    if (activity == null) return const SizedBox.shrink();

    final isUpcoming = booking.isUpcoming;
    final timeUntil = booking.timeUntilActivity;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: _getActivityColor(activity.type),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    _getActivityIcon(activity.type),
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        activity.name,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        booking.venue?.name ?? 'Unknown Venue',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                if (isUpcoming && timeUntil != null)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: booking.isToday
                          ? Colors.orange.shade100
                          : Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      _formatTimeUntil(timeUntil),
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: booking.isToday
                            ? Colors.orange.shade800
                            : Colors.blue.shade800,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Icon(Icons.schedule, size: 16, color: Colors.grey.shade600),
                const SizedBox(width: 4),
                Text(
                  _formatDateTime(activity.time),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(width: 16),
                Icon(Icons.timer, size: 16, color: Colors.grey.shade600),
                const SizedBox(width: 4),
                Text(
                  '${activity.duration} min',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(width: 16),
                Icon(Icons.person, size: 16, color: Colors.grey.shade600),
                const SizedBox(width: 4),
                Text(
                  activity.instructor,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            if (booking.confirmationNumber != null) ...[
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    Icons.confirmation_number,
                    size: 16,
                    color: Colors.grey.shade600,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    booking.confirmationNumber!,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
            if (isUpcoming) ...[
              const SizedBox(height: 12),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () => _viewBookingDetails(context, booking),
                    child: const Text('View Details'),
                  ),
                  const SizedBox(width: 8),
                  OutlinedButton(
                    onPressed: () => _cancelBooking(context, ref, booking),
                    child: const Text('Cancel'),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  Color _getActivityColor(ActivityType type) {
    switch (type) {
      case ActivityType.yoga:
        return Colors.green;
      case ActivityType.pilates:
        return Colors.purple;
      case ActivityType.meditation:
        return Colors.blue;
      case ActivityType.fitness:
        return Colors.red;
      case ActivityType.spa:
        return Colors.pink;
      case ActivityType.massage:
        return Colors.indigo;
      case ActivityType.wellness:
        return Colors.teal;
      case ActivityType.other:
        return Colors.grey;
    }
  }

  IconData _getActivityIcon(ActivityType type) {
    switch (type) {
      case ActivityType.yoga:
        return Icons.self_improvement;
      case ActivityType.pilates:
        return Icons.fitness_center;
      case ActivityType.meditation:
        return Icons.spa;
      case ActivityType.fitness:
        return Icons.sports_gymnastics;
      case ActivityType.spa:
        return Icons.hot_tub;
      case ActivityType.massage:
        return Icons.healing;
      case ActivityType.wellness:
        return Icons.eco;
      case ActivityType.other:
        return Icons.more_horiz;
    }
  }

  String _formatDateTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = dateTime.difference(now).inDays;

    if (difference == 0) {
      return 'Today ${_formatTime(dateTime)}';
    } else if (difference == 1) {
      return 'Tomorrow ${_formatTime(dateTime)}';
    } else if (difference == -1) {
      return 'Yesterday ${_formatTime(dateTime)}';
    } else {
      return '${dateTime.month}/${dateTime.day} ${_formatTime(dateTime)}';
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

  String _formatTimeUntil(Duration duration) {
    if (duration.inDays > 0) {
      return '${duration.inDays}d';
    } else if (duration.inHours > 0) {
      return '${duration.inHours}h';
    } else {
      return '${duration.inMinutes}m';
    }
  }

  void _viewBookingDetails(BuildContext context, BookingResult booking) {
    showDialog(
      context: context,
      builder: (context) => _BookingDetailsDialog(booking: booking),
    );
  }

  Future<void> _cancelBooking(
    BuildContext context,
    WidgetRef ref,
    BookingResult booking,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Cancel Booking'),
        content: Text(
          'Are you sure you want to cancel "${booking.activity?.name}"?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Keep Booking'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Cancel Booking'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      await ref
          .read(bookingStateProvider.notifier)
          .cancelBooking(booking.bookingId);
    }
  }
}

// ============================================================================
// REMINDERS TAB
// ============================================================================

class RemindersTab extends ConsumerWidget {
  const RemindersTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reminderState = ref.watch(reminderStateProvider);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Default reminder settings
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Default Reminder Settings',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 12),
                ...reminderState.defaultTimings.map(
                  (timing) => CheckboxListTile(
                    title: Text(timing.displayName),
                    value: true,
                    onChanged: (value) {
                      // Handle reminder timing changes
                    },
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () => _showReminderCustomization(context, ref),
                  child: const Text('Customize Reminders'),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 16),

        // Pending reminders
        if (reminderState.pendingReminders.isNotEmpty) ...[
          Text(
            'Upcoming Reminders',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          ...reminderState.pendingReminders.map(
            (reminder) => Card(
              child: ListTile(
                leading: const Icon(Icons.notifications),
                title: Text(reminder.title),
                subtitle: Text(reminder.body),
                trailing: Text('ID: ${reminder.id}'),
              ),
            ),
          ),
        ] else ...[
          const Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Center(
                child: Column(
                  children: [
                    Icon(Icons.notifications_off, size: 48, color: Colors.grey),
                    SizedBox(height: 8),
                    Text('No pending reminders'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }

  void _showReminderCustomization(BuildContext context, WidgetRef ref) {
    // Show reminder customization dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Customize Reminders'),
        content: const Text('Reminder customization options would go here'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// SUPPORT WIDGETS
// ============================================================================

class _BookingProgressCard extends StatelessWidget {
  const _BookingProgressCard();

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            CircularProgressIndicator(),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Processing booking...'),
                  SizedBox(height: 4),
                  Text(
                    'Checking availability and calendar conflicts',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BookingErrorCard extends StatelessWidget {
  final String error;

  const _BookingErrorCard({required this.error});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(Icons.error, color: Colors.red.shade700),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Booking Failed',
                    style: TextStyle(
                      color: Colors.red.shade700,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(error, style: TextStyle(color: Colors.red.shade700)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BookingSuccessCard extends StatelessWidget {
  final BookingResult booking;

  const _BookingSuccessCard({required this.booking});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(Icons.check_circle, color: Colors.green.shade700),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Booking Confirmed!',
                    style: TextStyle(
                      color: Colors.green.shade700,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${booking.activity?.name ?? 'Activity'} at ${booking.venue?.name ?? 'venue'}',
                    style: TextStyle(color: Colors.green.shade700),
                  ),
                  if (booking.confirmationNumber != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      'Confirmation: ${booking.confirmationNumber}',
                      style: TextStyle(
                        color: Colors.green.shade600,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BookingDetailsDialog extends StatelessWidget {
  final BookingResult booking;

  const _BookingDetailsDialog({required this.booking});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(booking.activity?.name ?? 'Booking Details'),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (booking.activity != null) ...[
              _buildDetailRow('Instructor', booking.activity!.instructor),
              _buildDetailRow(
                'Duration',
                '${booking.activity!.duration} minutes',
              ),
              _buildDetailRow('Level', booking.activity!.level),
              if (booking.activity!.description != null)
                _buildDetailRow('Description', booking.activity!.description!),
            ],
            if (booking.venue != null) ...[
              const SizedBox(height: 12),
              const Text(
                'Venue:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              _buildDetailRow('Name', booking.venue!.name),
              _buildDetailRow('Address', booking.venue!.address),
              _buildDetailRow('Phone', booking.venue!.phone),
            ],
            if (booking.confirmationNumber != null) ...[
              const SizedBox(height: 12),
              _buildDetailRow('Confirmation', booking.confirmationNumber!),
            ],
            if (booking.calendar?.added == true) ...[
              const SizedBox(height: 12),
              _buildDetailRow(
                'Calendar',
                'Added to ${booking.calendar!.calendarName}',
              ),
              _buildDetailRow(
                'Reminders',
                '${booking.calendar!.remindersSet} set',
              ),
            ],
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Close'),
        ),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}

extension on ReminderTiming {
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
