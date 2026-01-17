import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../domain/models/wellness_models.dart';
import '../../widgets/widgets.dart';

class WellnessOptionCard extends StatelessWidget {
  final WellnessOption option;
  final VoidCallback onBook;

  const WellnessOptionCard({
    super.key,
    required this.option,
    required this.onBook,
  });

  @override
  Widget build(BuildContext context) {
    return AnchorCard(
      padding: AnchorCardPadding.none,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with Image Placeholder
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.muted,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(AppTheme.radiusMedium),
              ),
            ),
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    _getIconForType(option.type),
                    size: 40,
                    color: AppColors.mutedForeground.withValues(alpha: 0.5),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.star,
                          size: 14,
                          color: AppColors.stressModerate,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          option.rating.toString(),
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColors.navy,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Content
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        option.name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.navy,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  '${option.type.displayName} • ${option.distance}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.mutedForeground,
                  ),
                ),
                const SizedBox(height: 8),

                // Why Recommended
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.secondary.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.insights,
                        size: 14,
                        color: AppColors.primary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          option.whyRecommended,
                          style: const TextStyle(
                            fontSize: 11,
                            color: AppColors.foreground,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                // Details Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      option.price,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.navy,
                      ),
                    ),
                    Text(
                      option.time,
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.mutedForeground,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                // Action Button
                SizedBox(
                  width: double.infinity,
                  child: AnchorButton(
                    text: 'Book Now',
                    onPressed: onBook,
                    size: AnchorButtonSize.small,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  IconData _getIconForType(WellnessType type) {
    switch (type) {
      case WellnessType.yoga:
        return Icons.self_improvement;
      case WellnessType.meditation:
        return Icons.spa;
      case WellnessType.gym:
        return Icons.fitness_center;
      case WellnessType.running:
        return Icons.directions_run;
      case WellnessType.swimming:
        return Icons.pool;
      default:
        return Icons.local_activity;
    }
  }
}
