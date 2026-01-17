import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/models/wellness_browser_models.dart';
import '../providers/wellness_browser_provider.dart';
import '../widgets/wellness_browser_header.dart';
import '../widgets/quick_filters_bar.dart';
import '../widgets/browse_sections.dart';
import '../widgets/wellness_search_delegate.dart';
import '../../widgets/anchor_app_bar.dart';

/// Main wellness browser screen showing personalized wellness options
class WellnessBrowserScreen extends ConsumerWidget {
  const WellnessBrowserScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final browseState = ref.watch(wellnessBrowseStateProvider);
    final mapView = ref.watch(mapViewProvider);

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AnchorAppBar(
        title: 'Wellness Options',
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => _showSearch(context),
          ),
          IconButton(
            icon: Icon(mapView ? Icons.list : Icons.map),
            onPressed: () =>
                ref.read(mapViewProvider.notifier).state = !mapView,
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          // Refresh data
          ref.invalidate(wellnessBrowseStateProvider);
        },
        child: mapView
            ? _buildMapView(context, ref)
            : _buildListView(context, ref),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showFilterBottomSheet(context, ref),
        label: const Text('Filter'),
        icon: const Icon(Icons.tune),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }

  Widget _buildListView(BuildContext context, WidgetRef ref) {
    final browseState = ref.watch(wellnessBrowseStateProvider);

    return CustomScrollView(
      slivers: [
        // Header with greeting and context
        SliverToBoxAdapter(
          child: WellnessBrowserHeader(
            greeting: browseState.headerGreeting,
            contextMessage: browseState.contextMessage,
            filterSummary: browseState.filterSummary,
          ),
        ),

        // Quick filters
        SliverToBoxAdapter(
          child: QuickFiltersBar(filters: browseState.quickFilters),
        ),

        // Browse sections
        BrowseSections(sections: browseState.sections),

        // Bottom padding for FAB
        const SliverToBoxAdapter(child: SizedBox(height: 80)),
      ],
    );
  }

  Widget _buildMapView(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.grey[200],
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.map_outlined, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              'Map View',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Interactive map would show here\nwith wellness venues plotted',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  void _showSearch(BuildContext context) {
    showSearch(context: context, delegate: WellnessSearchDelegate());
  }

  void _showFilterBottomSheet(BuildContext context, WidgetRef ref) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => _FilterBottomSheet(),
    );
  }
}

class _FilterBottomSheet extends ConsumerStatefulWidget {
  @override
  ConsumerState<_FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends ConsumerState<_FilterBottomSheet> {
  late WellnessFilters _tempFilters;

  @override
  void initState() {
    super.initState();
    _tempFilters = ref.read(wellnessFiltersProvider);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          // Handle
          Container(
            width: 40,
            height: 4,
            margin: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          // Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Text(
                  'Filter Options',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                TextButton(
                  onPressed: _resetFilters,
                  child: const Text('Reset'),
                ),
                TextButton(
                  onPressed: _applyFilters,
                  child: const Text('Apply'),
                ),
              ],
            ),
          ),

          const Divider(),

          // Filter options
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                _buildActivityTypeFilter(),
                const SizedBox(height: 24),
                _buildDistanceFilter(),
                const SizedBox(height: 24),
                _buildPriceFilter(),
                const SizedBox(height: 24),
                _buildAvailabilityFilter(),
                const SizedBox(height: 24),
                _buildSpecialFilter(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActivityTypeFilter() {
    const activities = [
      'Yoga',
      'Gym',
      'Spa',
      'Massage',
      'Pilates',
      'Boxing',
      'Swimming',
      'Running',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Activity Type',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: activities.map((activity) {
            final isSelected = _tempFilters.activityTypes.contains(
              activity.toLowerCase(),
            );
            return FilterChip(
              label: Text(activity),
              selected: isSelected,
              onSelected: (selected) =>
                  _toggleActivityType(activity.toLowerCase()),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildDistanceFilter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Distance',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 12),
        Slider(
          value: _tempFilters.maxDistance ?? 2.0,
          min: 0.5,
          max: 5.0,
          divisions: 9,
          label: '${(_tempFilters.maxDistance ?? 2.0).toStringAsFixed(1)} mi',
          onChanged: (value) {
            setState(() {
              _tempFilters = _tempFilters.copyWith(maxDistance: value);
            });
          },
        ),
        Text(
          'Within ${(_tempFilters.maxDistance ?? 2.0).toStringAsFixed(1)} miles',
          style: TextStyle(color: Colors.grey[600]),
        ),
      ],
    );
  }

  Widget _buildPriceFilter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Price Range',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: PriceLevel.values.map((price) {
            final isSelected = _tempFilters.priceRange.contains(price);
            return FilterChip(
              label: Text(price.displayName),
              selected: isSelected,
              onSelected: (selected) => _togglePriceLevel(price),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildAvailabilityFilter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Availability',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 12),
        SwitchListTile(
          title: const Text('Available Now'),
          subtitle: const Text('Has spots available today'),
          value: _tempFilters.availableNow,
          onChanged: (value) {
            setState(() {
              _tempFilters = _tempFilters.copyWith(availableNow: value);
            });
          },
        ),
        SwitchListTile(
          title: const Text('Saved Only'),
          subtitle: const Text('Only show venues you\'ve saved'),
          value: _tempFilters.savedOnly,
          onChanged: (value) {
            setState(() {
              _tempFilters = _tempFilters.copyWith(savedOnly: value);
            });
          },
        ),
      ],
    );
  }

  Widget _buildSpecialFilter() {
    const specials = ['Recommended', 'New to you', 'Trending', 'Hidden gems'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Special Filters',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: specials.map((special) {
            final isSelected = _tempFilters.specialFilters.contains(
              special.toLowerCase(),
            );
            return FilterChip(
              label: Text(special),
              selected: isSelected,
              onSelected: (selected) =>
                  _toggleSpecialFilter(special.toLowerCase()),
            );
          }).toList(),
        ),
      ],
    );
  }

  void _toggleActivityType(String activity) {
    setState(() {
      final activities = List<String>.from(_tempFilters.activityTypes);
      if (activities.contains(activity)) {
        activities.remove(activity);
      } else {
        activities.add(activity);
      }
      _tempFilters = _tempFilters.copyWith(activityTypes: activities);
    });
  }

  void _togglePriceLevel(PriceLevel price) {
    setState(() {
      final prices = List<PriceLevel>.from(_tempFilters.priceRange);
      if (prices.contains(price)) {
        prices.remove(price);
      } else {
        prices.add(price);
      }
      _tempFilters = _tempFilters.copyWith(priceRange: prices);
    });
  }

  void _toggleSpecialFilter(String special) {
    setState(() {
      final specials = List<String>.from(_tempFilters.specialFilters);
      if (specials.contains(special)) {
        specials.remove(special);
      } else {
        specials.add(special);
      }
      _tempFilters = _tempFilters.copyWith(specialFilters: specials);
    });
  }

  void _resetFilters() {
    setState(() {
      _tempFilters = const WellnessFilters();
    });
  }

  void _applyFilters() {
    ref.read(wellnessFiltersProvider.notifier).state = _tempFilters;
    Navigator.of(context).pop();
  }
}
