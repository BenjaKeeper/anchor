import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/models/wellness_browser_models.dart';
import '../providers/wellness_browser_provider.dart';
import 'venue_card.dart';

/// Search delegate for wellness venues and activities
class WellnessSearchDelegate extends SearchDelegate<WellnessVenue?> {
  @override
  String get searchFieldLabel => 'Search wellness options...';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
          showSuggestions(context);
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        ref.read(wellnessSearchQueryProvider.notifier).state = query;
        final results = ref.watch(wellnessSearchResultsProvider);

        if (query.trim().isEmpty) {
          return _buildEmptyState(
            context,
            'Start typing to search for wellness options',
          );
        }

        if (results.isEmpty) {
          return _buildEmptyState(context, 'No results found for "$query"');
        }

        return _buildResults(context, results);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        if (query.trim().isEmpty) {
          return _buildSuggestions(context, ref);
        }

        ref.read(wellnessSearchQueryProvider.notifier).state = query;
        final results = ref.watch(wellnessSearchResultsProvider);

        return _buildResults(context, results);
      },
    );
  }

  Widget _buildResults(BuildContext context, List<WellnessVenue> results) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: results.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final venue = results[index];
        return VenueCard(venue: venue, layout: VenueCardLayout.list);
      },
    );
  }

  Widget _buildSuggestions(BuildContext context, WidgetRef ref) {
    final browsingContext = ref.watch(wellnessBrowsingContextProvider);
    final suggestions = ref.watch(discoverySuggestionsProvider);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Recent searches
          if (browsingContext.userPreferences.recentSearches.isNotEmpty) ...[
            const Text(
              'Recent Searches',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            ...browsingContext.userPreferences.recentSearches.map((search) {
              return ListTile(
                leading: const Icon(Icons.history),
                title: Text(search),
                onTap: () {
                  query = search;
                  showResults(context);
                },
              );
            }),
            const SizedBox(height: 24),
          ],

          // Popular searches
          const Text(
            'Popular Searches',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children:
                [
                  'hot yoga',
                  'massage',
                  'gym',
                  'pilates',
                  'boxing',
                  'spa',
                  'meditation',
                  'cycling',
                ].map((suggestion) {
                  return ActionChip(
                    label: Text(suggestion),
                    onPressed: () {
                      query = suggestion;
                      showResults(context);
                    },
                  );
                }).toList(),
          ),
          const SizedBox(height: 24),

          // Activity categories
          const Text(
            'Browse by Category',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 3,
            children: [
              _buildCategoryCard(
                context,
                'Yoga',
                Icons.self_improvement,
                'yoga',
              ),
              _buildCategoryCard(context, 'Gym', Icons.fitness_center, 'gym'),
              _buildCategoryCard(context, 'Spa', Icons.spa, 'spa'),
              _buildCategoryCard(context, 'Massage', Icons.healing, 'massage'),
              _buildCategoryCard(
                context,
                'Boxing',
                Icons.sports_martial_arts,
                'boxing',
              ),
              _buildCategoryCard(
                context,
                'Running',
                Icons.directions_run,
                'running',
              ),
            ],
          ),

          // Discovery suggestions
          if (suggestions.isNotEmpty) ...[
            const SizedBox(height: 24),
            ...suggestions.entries.map((entry) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    entry.key,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: entry.value.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 12),
                      itemBuilder: (context, index) {
                        final venue = entry.value[index];
                        return SizedBox(
                          width: 180,
                          child: VenueCard(
                            venue: venue,
                            layout: VenueCardLayout.horizontal,
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              );
            }),
          ],
        ],
      ),
    );
  }

  Widget _buildCategoryCard(
    BuildContext context,
    String title,
    IconData icon,
    String searchQuery,
  ) {
    return Material(
      color: Colors.grey[50],
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          query = searchQuery;
          showResults(context);
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Icon(icon, size: 20, color: Colors.grey[700]),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context, String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search_off, size: 64, color: Colors.grey[400]),
          const SizedBox(height: 16),
          Text(
            message,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            textAlign: TextAlign.center,
          ),
          if (query.isNotEmpty) ...[
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                query = '';
                showSuggestions(context);
              },
              child: const Text('Clear search'),
            ),
          ],
        ],
      ),
    );
  }
}
