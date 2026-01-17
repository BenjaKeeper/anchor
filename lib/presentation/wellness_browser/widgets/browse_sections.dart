import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/models/wellness_browser_models.dart';
import 'venue_card.dart';

/// Widget that renders browse sections based on layout type
class BrowseSections extends ConsumerWidget {
  final List<BrowseSection> sections;

  const BrowseSections({super.key, required this.sections});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final section = sections[index];
        return _BrowseSectionWidget(section: section);
      }, childCount: sections.length),
    );
  }
}

class _BrowseSectionWidget extends StatelessWidget {
  final BrowseSection section;

  const _BrowseSectionWidget({required this.section});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section header
        _SectionHeader(section: section),

        // Section content based on layout
        _buildSectionContent(context),

        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildSectionContent(BuildContext context) {
    switch (section.layout) {
      case BrowseSectionLayout.horizontalScroll:
        return _buildHorizontalScrollLayout();
      case BrowseSectionLayout.list:
        return _buildListLayout();
      case BrowseSectionLayout.grid:
        return _buildGridLayout();
    }
  }

  Widget _buildHorizontalScrollLayout() {
    return SizedBox(
      height: 280,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: section.items.length,
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          final venue = section.items[index];
          return SizedBox(
            width: 240,
            child: VenueCard(venue: venue, layout: VenueCardLayout.horizontal),
          );
        },
      ),
    );
  }

  Widget _buildListLayout() {
    return Column(
      children: section.items.map((venue) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: VenueCard(venue: venue, layout: VenueCardLayout.list),
        );
      }).toList(),
    );
  }

  Widget _buildGridLayout() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.75,
        ),
        itemCount: section.items.length,
        itemBuilder: (context, index) {
          final venue = section.items[index];
          return VenueCard(venue: venue, layout: VenueCardLayout.grid);
        },
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final BrowseSection section;

  const _SectionHeader({required this.section});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      section.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    if (section.subtitle != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        section.subtitle!,
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                    ],
                  ],
                ),
              ),
              if (section.count != null)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    '${section.count}',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    ),
                  ),
                ),
            ],
          ),

          // Show reasoning for recommended sections
          if (section.reasoning.isNotEmpty) ...[
            const SizedBox(height: 8),
            ...section.reasoning.map(
              (reason) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Icon(
                      Icons.tips_and_updates,
                      size: 14,
                      color: Colors.amber[700],
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        reason,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.amber[700],
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
