import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../domain/models/wellness_browser_models.dart';
import '../providers/wellness_browser_provider.dart';

enum VenueCardLayout { horizontal, list, grid }

/// Venue card widget for displaying wellness venues
class VenueCard extends ConsumerWidget {
  final WellnessVenue venue;
  final VenueCardLayout layout;

  const VenueCard({super.key, required this.venue, required this.layout});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedVenues = ref.watch(savedVenuesProvider);
    final isSaved = savedVenues.contains(venue.id);

    return GestureDetector(
      onTap: () => _navigateToVenueDetails(context, ref),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: _buildCardContent(context, ref, isSaved),
      ),
    );
  }

  Widget _buildCardContent(BuildContext context, WidgetRef ref, bool isSaved) {
    switch (layout) {
      case VenueCardLayout.horizontal:
        return _buildHorizontalCard(context, ref, isSaved);
      case VenueCardLayout.list:
        return _buildListCard(context, ref, isSaved);
      case VenueCardLayout.grid:
        return _buildGridCard(context, ref, isSaved);
    }
  }

  Widget _buildHorizontalCard(
    BuildContext context,
    WidgetRef ref,
    bool isSaved,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image with badges and save button
        Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: Container(
                height: 140,
                width: double.infinity,
                color: Colors.grey[200],
                child: venue.images.isNotEmpty
                    ? Image.network(
                        venue.images.first,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            _buildImagePlaceholder(),
                      )
                    : _buildImagePlaceholder(),
              ),
            ),

            // Badges
            Positioned(
              top: 8,
              left: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (venue.isRecommended)
                    _buildBadge('Recommended', Colors.green),
                  if (_hasAvailableToday())
                    _buildBadge('Available now', Colors.blue),
                ],
              ),
            ),

            // Save button
            Positioned(top: 8, right: 8, child: _buildSaveButton(ref, isSaved)),
          ],
        ),

        // Content
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Venue name and type
                Text(
                  venue.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  venue.type.displayName,
                  style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                ),
                const SizedBox(height: 8),

                // Rating and distance
                Row(
                  children: [
                    Icon(Icons.star, size: 14, color: Colors.amber[700]),
                    const SizedBox(width: 4),
                    Text(
                      '${venue.rating}',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Icon(Icons.location_on, size: 14, color: Colors.grey[500]),
                    const SizedBox(width: 2),
                    Text(
                      '${venue.distance.fromUser} mi',
                      style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                    ),
                  ],
                ),

                const Spacer(),

                // Availability and price
                if (_getNextAvailableSlot() != null) ...[
                  Row(
                    children: [
                      Icon(Icons.schedule, size: 14, color: Colors.green[600]),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          _getNextAvailableSlot()!,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.green[600],
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                ],

                // Price
                Text(
                  _getBestPrice(),
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),

                // ANCHOR insight
                if (venue.userHistory != null &&
                    venue.recommendationReason != null) ...[
                  const SizedBox(height: 6),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      children: [
                        const Text('✨', style: TextStyle(fontSize: 12)),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            venue.recommendationReason!,
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.blue[700],
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildListCard(BuildContext context, WidgetRef ref, bool isSaved) {
    return IntrinsicHeight(
      child: Row(
        children: [
          // Image
          ClipRRect(
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(12),
            ),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.grey[200],
              child: venue.images.isNotEmpty
                  ? Image.network(
                      venue.images.first,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          _buildImagePlaceholder(),
                    )
                  : _buildImagePlaceholder(),
            ),
          ),

          // Content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header with badges and save
                  Row(
                    children: [
                      if (venue.isRecommended) ...[
                        _buildBadge('Recommended', Colors.green),
                        const SizedBox(width: 8),
                      ],
                      const Spacer(),
                      _buildSaveButton(ref, isSaved),
                    ],
                  ),

                  // Venue info
                  Text(
                    venue.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    venue.type.displayName,
                    style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 4),

                  // Rating and distance
                  DefaultTextStyle(
                    style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                    child: Row(
                      children: [
                        Icon(Icons.star, size: 14, color: Colors.amber[700]),
                        Text(' ${venue.rating} • '),
                        Icon(
                          Icons.location_on,
                          size: 14,
                          color: Colors.grey[500],
                        ),
                        Text(' ${venue.distance.fromUser} mi'),
                      ],
                    ),
                  ),

                  const Spacer(),

                  // Price and availability
                  Row(
                    children: [
                      Text(
                        _getBestPrice(),
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      if (_getNextAvailableSlot() != null) ...[
                        const Text(' • ', style: TextStyle(color: Colors.grey)),
                        Icon(
                          Icons.schedule,
                          size: 12,
                          color: Colors.green[600],
                        ),
                        const SizedBox(width: 2),
                        Text(
                          _getNextAvailableSlot()!,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.green[600],
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridCard(BuildContext context, WidgetRef ref, bool isSaved) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image
        Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: Container(
                height: 120,
                width: double.infinity,
                color: Colors.grey[200],
                child: venue.images.isNotEmpty
                    ? Image.network(
                        venue.images.first,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            _buildImagePlaceholder(),
                      )
                    : _buildImagePlaceholder(),
              ),
            ),
            Positioned(top: 8, right: 8, child: _buildSaveButton(ref, isSaved)),
            if (venue.isRecommended)
              Positioned(
                top: 8,
                left: 8,
                child: _buildBadge('Recommended', Colors.green),
              ),
          ],
        ),

        // Content
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  venue.name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  venue.type.displayName,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
                const SizedBox(height: 4),

                DefaultTextStyle(
                  style: const TextStyle(fontSize: 12),
                  child: Row(
                    children: [
                      Icon(Icons.star, size: 12, color: Colors.amber[700]),
                      Text(' ${venue.rating}'),
                    ],
                  ),
                ),

                const Spacer(),

                Text(
                  _getBestPrice(),
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildImagePlaceholder() {
    return Container(
      color: Colors.grey[200],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(_getVenueTypeIcon(), size: 32, color: Colors.grey[400]),
            const SizedBox(height: 4),
            Text(
              venue.type.displayName,
              style: TextStyle(fontSize: 12, color: Colors.grey[500]),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getVenueTypeIcon() {
    switch (venue.type) {
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

  Widget _buildBadge(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildSaveButton(WidgetRef ref, bool isSaved) {
    return GestureDetector(
      onTap: () => ref.read(savedVenuesProvider.notifier).toggleSaved(venue.id),
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(
          isSaved ? Icons.bookmark : Icons.bookmark_border,
          size: 16,
          color: isSaved ? Colors.blue : Colors.grey[600],
        ),
      ),
    );
  }

  bool _hasAvailableToday() {
    return venue.activities.any((activity) {
      return activity.schedule.any(
        (schedule) => schedule.day == "today" && schedule.spotsLeft > 0,
      );
    });
  }

  String? _getNextAvailableSlot() {
    for (final activity in venue.activities) {
      for (final schedule in activity.schedule) {
        if (schedule.day == "today" && schedule.spotsLeft > 0) {
          return "Today ${schedule.time}";
        }
        if (schedule.day == "tomorrow" && schedule.spotsLeft > 0) {
          return "Tomorrow ${schedule.time}";
        }
      }
    }
    return null;
  }

  String _getBestPrice() {
    if (venue.pricing.classpassCredits != null) {
      return venue.pricing.classpassCredits!;
    }
    if (venue.pricing.dropInPrice != null) {
      return '\$${venue.pricing.dropInPrice!.toInt()}';
    }
    if (venue.pricing.bestValue != null) {
      return venue.pricing.bestValue!;
    }
    return 'See pricing';
  }

  void _navigateToVenueDetails(BuildContext context, WidgetRef ref) {
    ref.read(selectedVenueProvider.notifier).state = venue;
    context.push('/wellness/venue/${venue.id}');
  }
}
