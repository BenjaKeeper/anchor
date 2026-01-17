import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_theme.dart';
import '../../../domain/models/models.dart';
import '../../widgets/widgets.dart';
import '../providers/onboarding_provider.dart';

/// Preferences screen - select decompress activities
class PreferencesScreen extends ConsumerWidget {
  const PreferencesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingProvider);
    final onboarding = ref.read(onboardingProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () =>
                        onboarding.goToStep(OnboardingStep.dopamineResult),
                    icon: Icon(Icons.arrow_back, color: AppColors.navy),
                  ),
                  Text(
                    '3/5',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.mutedForeground,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Title
              Text(
                'What helps you decompress?',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.navy,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                "Select all that apply — I'll learn more over time",
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.mutedForeground,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),

              // Activities grid
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 1,
                  ),
                  itemCount: decompressActivities.length,
                  itemBuilder: (context, index) {
                    final activity = decompressActivities[index];
                    final isSelected = state.selectedActivities.contains(
                      activity.id,
                    );

                    return TweenAnimationBuilder<double>(
                      tween: Tween(begin: 0.8, end: 1.0),
                      duration: Duration(milliseconds: 200 + (index * 30)),
                      curve: Curves.easeOut,
                      builder: (context, value, child) {
                        return Opacity(
                          opacity: value,
                          child: Transform.scale(scale: value, child: child),
                        );
                      },
                      child: GestureDetector(
                        onTap: () => onboarding.toggleActivity(activity.id),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.primary
                                : AppColors.muted,
                            borderRadius: BorderRadius.circular(
                              AppTheme.radiusLarge,
                            ),
                            boxShadow: isSelected ? AppTheme.shadowGlow : null,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                activity.icon,
                                style: const TextStyle(fontSize: 28),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                activity.label,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: isSelected
                                      ? AppColors.primaryForeground
                                      : AppColors.mutedForeground,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),

              // Continue button
              AnchorButton(
                text: 'Continue',
                fullWidth: true,
                onPressed: state.selectedActivities.isEmpty
                    ? null
                    : () => onboarding.goToStep(OnboardingStep.timePreferences),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
