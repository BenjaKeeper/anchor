import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers/onboarding_provider.dart';
import 'screens/screens.dart';

/// Main onboarding flow widget that switches between screens based on state
class OnboardingFlow extends ConsumerWidget {
  const OnboardingFlow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingProvider);

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (child, animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      child: _buildScreen(state.step),
    );
  }

  Widget _buildScreen(OnboardingStep step) {
    switch (step) {
      case OnboardingStep.welcome:
        return const WelcomeScreen(key: ValueKey('welcome'));
      case OnboardingStep.connect:
        return const ConnectScreen(key: ValueKey('connect'));
      case OnboardingStep.dopamineIntro:
        return const DopamineIntroScreen(key: ValueKey('dopamine_intro'));
      case OnboardingStep.dopamineQuestions:
        return const DopamineQuestionScreen(
          key: ValueKey('dopamine_questions'),
        );
      case OnboardingStep.dopamineResult:
        return const DopamineResultScreen(key: ValueKey('dopamine_result'));
      case OnboardingStep.preferences:
        return const PreferencesScreen(key: ValueKey('preferences'));
      case OnboardingStep.timePreferences:
        return const TimePreferencesScreen(key: ValueKey('time_preferences'));
      case OnboardingStep.complete:
        return const CompleteScreen(key: ValueKey('complete'));
    }
  }
}
