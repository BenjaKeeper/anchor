import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/models/wellness_browser_models.dart';
import '../providers/wellness_browser_provider.dart';

/// Quick filters bar for browsing wellness options
class QuickFiltersBar extends ConsumerWidget {
  final List<QuickFilter> filters;

  const QuickFiltersBar({super.key, required this.filters});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilter = ref.watch(activeQuickFilterProvider);

    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.2)),
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: filters.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final filter = filters[index];
          final isActive = activeFilter == filter.filterId;

          return _QuickFilterChip(
            filter: filter,
            isActive: isActive,
            onTap: () {
              ref.read(activeQuickFilterProvider.notifier).state = isActive
                  ? null
                  : filter.filterId;
            },
          );
        },
      ),
    );
  }
}

class _QuickFilterChip extends StatelessWidget {
  final QuickFilter filter;
  final bool isActive;
  final VoidCallback onTap;

  const _QuickFilterChip({
    required this.filter,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isActive
              ? Theme.of(context).primaryColor.withValues(alpha: 0.1)
              : Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isActive
                ? Theme.of(context).primaryColor
                : Colors.grey[300]!,
            width: isActive ? 1.5 : 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              filter.label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
                color: isActive
                    ? Theme.of(context).primaryColor
                    : Colors.grey[700],
              ),
            ),
            if (filter.count > 0) ...[
              const SizedBox(width: 6),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: isActive
                      ? Theme.of(context).primaryColor
                      : Colors.grey[400],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '${filter.count}',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: isActive ? Colors.white : Colors.white,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
