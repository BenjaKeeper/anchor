import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_colors.dart';
import '../../../domain/models/models.dart';
import '../../widgets/widgets.dart';
import '../providers/onboarding_provider.dart';

/// Time preferences screen - select preferred recharge times
class TimePreferencesScreen extends ConsumerWidget {
  const TimePreferencesScreen({super.key});

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
                        onboarding.goToStep(OnboardingStep.preferences),
                    icon: Icon(Icons.arrow_back, color: AppColors.navy),
                  ),
                  Text(
                    '4/5',
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
                'When do you prefer to recharge?',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.navy,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),

              // Time slots
              ...rechargeTimeSlots.asMap().entries.map((entry) {
                final index = entry.key;
                final slot = entry.value;
                final isSelected = state.selectedTimeSlots.contains(slot.id);

                return TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0.0, end: 1.0),
                  duration: Duration(milliseconds: 300 + (index * 100)),
                  curve: Curves.easeOut,
                  builder: (context, value, child) {
                    return Opacity(
                      opacity: value,
                      child: Transform.translate(
                        offset: Offset(-20 * (1 - value), 0),
                        child: child,
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: AnchorCard(
                      variant: isSelected
                          ? AnchorCardVariant.highlight
                          : AnchorCardVariant.normal,
                      onTap: () => onboarding.toggleTimeSlot(slot.id),
                      child: Column(
                        children: [
                          Text(slot.icon, style: const TextStyle(fontSize: 40)),
                          const SizedBox(height: 12),
                          Text(
                            slot.title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.navy,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            slot.time,
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.mutedForeground,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            slot.description,
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.mutedForeground,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),

              const Spacer(),

              // Continue button
              AnchorButton(
                text: 'Continue',
                fullWidth: true,
                onPressed: state.selectedTimeSlots.isEmpty
                    ? null
                    : () => onboarding.goToStep(OnboardingStep.complete),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
