import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/models/wellness_browser_models.dart';
import '../../../domain/services/wellness_browser_service.dart';
import '../providers/wellness_browser_provider.dart';
import '../../widgets/anchor_app_bar.dart';

/// Detailed view for a specific wellness venue
class VenueDetailsScreen extends ConsumerWidget {
  final String venueId;

  const VenueDetailsScreen({super.key, required this.venueId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final venue = WellnessBrowserService.getVenueById(venueId);
    final savedVenues = ref.watch(savedVenuesProvider);
    final bookingState = ref.watch(venueBookingStateProvider(venueId));
    final reviews = ref.watch(venueReviewsProvider(venueId));

    if (venue == null) {
      return Scaffold(
        appBar: const AnchorAppBar(title: 'Venue Not Found'),
        body: const Center(child: Text('Venue not found')),
      );
    }

    final isSaved = savedVenues.contains(venue.id);

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // Hero image with app bar
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  venue.images.isNotEmpty
                      ? Image.network(
                          venue.images.first,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              _buildImagePlaceholder(venue),
                        )
                      : _buildImagePlaceholder(venue),

                  // Gradient overlay
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withValues(alpha: 0.3),
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.5),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  isSaved ? Icons.bookmark : Icons.bookmark_border,
                  color: Colors.white,
                ),
                onPressed: () {
                  ref.read(savedVenuesProvider.notifier).toggleSaved(venue.id);
                },
              ),
              IconButton(
                icon: const Icon(Icons.share, color: Colors.white),
                onPressed: () => _shareVenue(venue),
              ),
            ],
          ),

          // Content
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header info
                  _buildHeader(venue),
                  const SizedBox(height: 20),

                  // Quick info
                  _buildQuickInfo(venue),
                  const SizedBox(height: 24),

                  // ANCHOR personalization
                  if (venue.userHistory != null) ...[
                    _buildAnchorPersonalization(venue),
                    const SizedBox(height: 24),
                  ],

                  // Schedule
                  _buildSchedule(context, ref, venue, bookingState),
                  const SizedBox(height: 24),

                  // About
                  _buildAbout(venue),
                  const SizedBox(height: 24),

                  // Reviews
                  _buildReviews(reviews),
                  const SizedBox(height: 24),

                  // Location
                  _buildLocation(venue),
                  const SizedBox(height: 100), // Space for FAB
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showBookingOptions(context, ref, venue),
        label: const Text('Book a Class'),
        icon: const Icon(Icons.event_available),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }

  Widget _buildImagePlaceholder(WellnessVenue venue) {
    return Container(
      color: Colors.grey[300],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _getVenueTypeIcon(venue.type),
              size: 48,
              color: Colors.grey[500],
            ),
            const SizedBox(height: 8),
            Text(
              venue.name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  IconData _getVenueTypeIcon(VenueType type) {
    switch (type) {
      case VenueType.yogaStudio:
        return Icons.self_improvement;
      case VenueType.gym:
        return Icons.fitness_center;
      case VenueType.spa:
        return Icons.spa;
      case VenueType.massageCenter:
        return Icons.healing;
      case VenueType.pilatesStudio:
        return Icons.accessibility_new;
      case VenueType.boxingGym:
        return Icons.sports_martial_arts;
      case VenueType.swimmingPool:
        return Icons.pool;
      case VenueType.meditationCenter:
        return Icons.psychology;
      case VenueType.outdoorSpace:
        return Icons.park;
      case VenueType.other:
        return Icons.spa;
    }
  }

  Widget _buildHeader(WellnessVenue venue) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    venue.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    venue.type.displayName,
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                venue.priceLevel.displayName,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),

        Row(
          children: [
            Icon(Icons.star, size: 18, color: Colors.amber[700]),
            const SizedBox(width: 4),
            Text(
              '${venue.rating}',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Text(
              ' (${venue.reviewCount} reviews)',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            const SizedBox(width: 16),
            Icon(Icons.location_on, size: 16, color: Colors.grey[500]),
            const SizedBox(width: 4),
            Text(
              '${venue.distance.fromUser} mi (${venue.distance.walkTime} min walk)',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildQuickInfo(WellnessVenue venue) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.business, color: Colors.grey[600]),
                const SizedBox(width: 12),
                Expanded(child: Text(venue.provider.displayName)),
              ],
            ),
            if (venue.phone != null) ...[
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(Icons.phone, color: Colors.grey[600]),
                  const SizedBox(width: 12),
                  Expanded(child: Text(venue.phone!)),
                ],
              ),
            ],
            if (venue.website != null) ...[
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(Icons.web, color: Colors.grey[600]),
                  const SizedBox(width: 12),
                  Expanded(child: Text(venue.website!)),
                ],
              ),
            ],
            const SizedBox(height: 12),
            Row(
              children: [
                Icon(Icons.local_offer, color: Colors.grey[600]),
                const SizedBox(width: 12),
                Expanded(
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: venue.amenities.map((amenity) {
                      return Chip(
                        label: Text(
                          amenity,
                          style: const TextStyle(fontSize: 12),
                        ),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnchorPersonalization(WellnessVenue venue) {
    final history = venue.userHistory!;

    return Card(
      color: Colors.blue[50],
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text('✨', style: TextStyle(fontSize: 20)),
                const SizedBox(width: 8),
                Text(
                  'Your ANCHOR Insights',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[700],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${history.visitCount} visits',
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Last: ${history.lastVisit}',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                if (history.hrvImpact != null)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'HRV ${history.hrvImpact}',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.green[700],
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8),

            Text(
              'This studio works really well for you - ${(history.completionRate! * 100).toInt()}% completion rate',
              style: TextStyle(
                color: Colors.blue[700],
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSchedule(
    BuildContext context,
    WidgetRef ref,
    WellnessVenue venue,
    VenueBookingState bookingState,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Schedule',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        ...venue.activities.map((activity) {
          return Card(
            child: ExpansionTile(
              title: Text(activity.name),
              subtitle: Text(
                '${activity.instructor ?? 'Various instructors'} • ${activity.level ?? activity.intensity.displayName}',
              ),
              children: activity.schedule.map((schedule) {
                return ListTile(
                  title: Text(
                    '${schedule.day.capitalize()} at ${schedule.time}',
                  ),
                  subtitle: Text(
                    '${schedule.duration} min • ${schedule.spotsLeft} spots left',
                  ),
                  trailing: schedule.spotsLeft > 0
                      ? ElevatedButton(
                          onPressed: bookingState.isLoading
                              ? null
                              : () => _bookClass(
                                  ref,
                                  venue.id,
                                  activity.id,
                                  schedule,
                                ),
                          child: bookingState.isLoading
                              ? const SizedBox(
                                  width: 16,
                                  height: 16,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                )
                              : const Text('Book'),
                        )
                      : const Text(
                          'Full',
                          style: TextStyle(color: Colors.grey),
                        ),
                );
              }).toList(),
            ),
          );
        }),

        if (bookingState.isBooked) ...[
          const SizedBox(height: 16),
          Card(
            color: Colors.green[50],
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.check_circle, color: Colors.green[600]),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Booking Confirmed!',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Confirmation: ${bookingState.confirmationCode}'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],

        if (bookingState.error != null) ...[
          const SizedBox(height: 16),
          Card(
            color: Colors.red[50],
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.error, color: Colors.red[600]),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      bookingState.error!,
                      style: TextStyle(color: Colors.red[600]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildAbout(WellnessVenue venue) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'About',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        if (venue.description != null) ...[
          Text(venue.description!, style: const TextStyle(height: 1.5)),
          const SizedBox(height: 16),
        ],

        if (venue.highlights.isNotEmpty) ...[
          const Text(
            'What to Expect:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          ...venue.highlights.map((highlight) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                children: [
                  const Text(
                    '• ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Text(highlight)),
                ],
              ),
            );
          }),
        ],
      ],
    );
  }

  Widget _buildReviews(List<VenueReview> reviews) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Reviews',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        ...reviews.take(3).map((review) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.grey[300],
                        child: Text(
                          review.userName[0],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              review.userName,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              children: [
                                ...List.generate(5, (index) {
                                  return Icon(
                                    index < review.rating
                                        ? Icons.star
                                        : Icons.star_border,
                                    size: 14,
                                    color: Colors.amber,
                                  );
                                }),
                                const SizedBox(width: 8),
                                Text(
                                  _formatDate(review.date),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(review.text),
                  const SizedBox(height: 8),
                  Text(
                    '${review.helpful} people found this helpful',
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }

  Widget _buildLocation(WellnessVenue venue) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Location',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  venue.address,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${venue.distance.fromUser} miles away • ${venue.distance.walkTime} minute walk',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                const SizedBox(height: 12),

                // Mock map placeholder
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.map, size: 48, color: Colors.grey),
                        Text('Interactive map would show here'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () => _getDirections(venue),
                        icon: const Icon(Icons.directions),
                        label: const Text('Get Directions'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date).inDays;

    if (difference == 0) return 'Today';
    if (difference == 1) return 'Yesterday';
    if (difference < 7) return '$difference days ago';
    if (difference < 30) return '${(difference / 7).floor()} weeks ago';
    return '${(difference / 30).floor()} months ago';
  }

  void _bookClass(
    WidgetRef ref,
    String venueId,
    String activityId,
    ClassSchedule schedule,
  ) {
    ref
        .read(venueBookingStateProvider(venueId).notifier)
        .bookVenue(activityId: activityId, schedule: schedule);
  }

  void _showBookingOptions(
    BuildContext context,
    WidgetRef ref,
    WellnessVenue venue,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Book a Class',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Choose from available classes above or contact the venue directly.',
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      // Scroll to schedule section
                    },
                    child: const Text('View Schedule'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      _callVenue(venue);
                    },
                    child: const Text('Call Venue'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _shareVenue(WellnessVenue venue) {
    // Implementation for sharing venue
  }

  void _getDirections(WellnessVenue venue) {
    // Implementation for getting directions
  }

  void _callVenue(WellnessVenue venue) {
    // Implementation for calling venue
  }
}

extension StringCapitalize on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
