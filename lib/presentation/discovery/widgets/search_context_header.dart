import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../domain/models/discovery_models.dart';

class SearchContextHeader extends StatelessWidget {
  final SearchContext searchContext;

  const SearchContextHeader({super.key, required this.searchContext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.location_on, size: 16, color: AppColors.primary),
              const SizedBox(width: 4),
              Text(
                searchContext.location,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.navy,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.muted.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 14,
                  color: AppColors.mutedForeground,
                ),
                const SizedBox(width: 6),
                Text(
                  searchContext.window,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.navy,
                  ),
                ),
              ],
            ),
          ),
          if (searchContext.weatherForecast != null)
            Row(
              children: [
                const Text('☀️', style: TextStyle(fontSize: 14)),
                const SizedBox(width: 4),
                Text(
                  searchContext.weatherForecast!.split(',').first,
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.mutedForeground,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
