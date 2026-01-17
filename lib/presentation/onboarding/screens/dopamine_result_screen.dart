import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_colors.dart';
import '../../widgets/widgets.dart';
import '../providers/onboarding_provider.dart';

/// Dopamine result screen - displays calculated profile
class DopamineResultScreen extends ConsumerWidget {
  const DopamineResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingProvider);
    final onboarding = ref.read(onboardingProvider.notifier);
    final profile = state.profile;

    if (profile == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      // Go back to last question
                      onboarding.goToStep(OnboardingStep.dopamineQuestions);
                    },
                    icon: Icon(Icons.arrow_back, color: AppColors.navy),
                  ),
                  Text(
                    '2/5',
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
                'Your Recharge Profile',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.navy,
                ),
              ),
              const SizedBox(height: 24),

              // Profile card
              TweenAnimationBuilder<double>(
                tween: Tween(begin: 0.9, end: 1.0),
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeOut,
                builder: (context, value, child) {
                  return Opacity(
                    opacity: value,
                    child: Transform.scale(scale: value, child: child),
                  );
                },
                child: AnchorCard(
                  variant: AnchorCardVariant.accent,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.auto_awesome,
                            size: 20,
                            color: AppColors.primary,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            profile.name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Icon(
                            Icons.auto_awesome,
                            size: 20,
                            color: AppColors.primary,
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Text(
                        profile.description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.mutedForeground,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Spectrum card
              AnchorCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'YOUR RECHARGE SPECTRUM',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        color: AppColors.mutedForeground,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Spectrum bar
                    SizedBox(
                      height: 24,
                      child: Stack(
                        children: [
                          Container(
                            height: 8,
                            margin: const EdgeInsets.only(top: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              gradient: AppColors.calmGradient,
                            ),
                          ),
                          TweenAnimationBuilder<double>(
                            tween: Tween(begin: 0, end: profile.position / 100),
                            duration: const Duration(milliseconds: 800),
                            curve: Curves.easeOut,
                            builder: (context, value, _) {
                              return Positioned(
                                left:
                                    value *
                                    (MediaQuery.of(context).size.width -
                                        80 -
                                        20),
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.card,
                                    border: Border.all(
                                      color: AppColors.primary,
                                      width: 2,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withValues(
                                          alpha: 0.1,
                                        ),
                                        blurRadius: 4,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.primary,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Labels
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Low\nDopamine',
                          style: TextStyle(
                            fontSize: 11,
                            color: AppColors.mutedForeground,
                          ),
                        ),
                        Text(
                          'Medium\nDopamine',
                          style: TextStyle(
                            fontSize: 11,
                            color: AppColors.mutedForeground,
                          ),
                        ),
                        Text(
                          'High\nDopamine',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 11,
                            color: AppColors.mutedForeground,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // Activities grid
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: _ActivityColumn(
                            icon: '🧘',
                            title: 'Calm',
                            color: AppColors.sky,
                            activities: profile.activities.calm,
                          ),
                        ),
                        Expanded(
                          child: _ActivityColumn(
                            icon: '🚶',
                            title: 'Active',
                            color: AppColors.accent,
                            activities: profile.activities.active,
                          ),
                        ),
                        Expanded(
                          child: _ActivityColumn(
                            icon: '🏄',
                            title: 'Thrill',
                            color: AppColors.primary,
                            activities: profile.activities.thrill,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),

              // Continue button
              AnchorButton(
                text: 'Continue',
                fullWidth: true,
                onPressed: () =>
                    onboarding.goToStep(OnboardingStep.preferences),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ActivityColumn extends StatelessWidget {
  final String icon;
  final String title;
  final Color color;
  final List<String> activities;

  const _ActivityColumn({
    required this.icon,
    required this.title,
    required this.color,
    required this.activities,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(icon, style: const TextStyle(fontSize: 16)),
            const SizedBox(width: 4),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ...activities.map(
          (a) => Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(
              a,
              style: TextStyle(fontSize: 12, color: AppColors.mutedForeground),
            ),
          ),
        ),
      ],
    );
  }
}
