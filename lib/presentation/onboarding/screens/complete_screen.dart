import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../widgets/widgets.dart';
import '../providers/onboarding_provider.dart';

/// Complete screen - final onboarding step
class CompleteScreen extends ConsumerWidget {
  const CompleteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboarding = ref.read(onboardingProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 48),
          child: Column(
            children: [
              // Illustration
              TweenAnimationBuilder<double>(
                tween: Tween(begin: 0.5, end: 1.0),
                duration: const Duration(milliseconds: 600),
                curve: Curves.elasticOut,
                builder: (context, value, child) {
                  return Opacity(
                    opacity: value.clamp(0.0, 1.0),
                    child: Transform.scale(
                      scale: value,
                      child: Transform.rotate(
                        angle: (1 - value) * -0.2,
                        child: child,
                      ),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/celebration-illustration.png',
                  height: 192,
                  width: 192,
                ),
              ),
              const SizedBox(height: 32),

              // Title
              TweenAnimationBuilder<double>(
                tween: Tween(begin: 0.0, end: 1.0),
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOut,
                builder: (context, value, child) {
                  return Opacity(
                    opacity: value,
                    child: Transform.translate(
                      offset: Offset(0, 20 * (1 - value)),
                      child: child,
                    ),
                  );
                },
                child: Column(
                  children: [
                    Text(
                      "You're all set!",
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.navy,
                          ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "I'll be watching your calendar and health data in the background. When I spot a good opportunity for you to recharge, I'll let you know.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.mutedForeground,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),

              // What to expect card
              AnchorCard(
                variant: AnchorCardVariant.accent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.lightbulb_outline,
                          size: 20,
                          color: AppColors.primary,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'What to expect',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.navy,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    _ExpectationItem(
                      text:
                          "I'll suggest activities based on your dopamine profile and stress levels",
                    ),
                    const SizedBox(height: 12),
                    _ExpectationItem(
                      text: "I'll find options near wherever you are",
                    ),
                    const SizedBox(height: 12),
                    _ExpectationItem(
                      text: "I'll learn from your feedback to get better",
                    ),
                  ],
                ),
              ),

              const Spacer(),

              // Let's go button
              AnchorButton(
                text: "Let's go",
                fullWidth: true,
                onPressed: () async {
                  await onboarding.completeOnboarding();
                  if (context.mounted) {
                    context.go('/home');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ExpectationItem extends StatelessWidget {
  final String text;

  const _ExpectationItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '•',
          style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 14, color: AppColors.mutedForeground),
          ),
        ),
      ],
    );
  }
}
