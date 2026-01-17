import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_colors.dart';
import '../../widgets/widgets.dart';
import '../providers/onboarding_provider.dart';

/// Dopamine question screen - quiz with animated transitions
class DopamineQuestionScreen extends ConsumerWidget {
  const DopamineQuestionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingProvider);
    final onboarding = ref.read(onboardingProvider.notifier);
    final question = state.currentQuestion;

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
                    onPressed: () => onboarding.goToPreviousQuestion(),
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
              const SizedBox(height: 16),

              // Progress bar
              Row(
                children: [
                  Expanded(
                    child: ProgressBar(
                      value: (state.questionIndex + 1).toDouble(),
                      max: state.totalQuestions.toDouble(),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    '${state.questionIndex + 1} of ${state.totalQuestions}',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.mutedForeground,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Question with animation
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0.1, 0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    ),
                  );
                },
                child: Column(
                  key: ValueKey(question.id),
                  children: [
                    Text(
                      question.question,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.navy,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 32),

                    // Options
                    ...question.options.asMap().entries.map((entry) {
                      final index = entry.key;
                      final option = entry.value;

                      return TweenAnimationBuilder<double>(
                        key: ValueKey('${question.id}_${option.id}'),
                        tween: Tween(begin: 0.0, end: 1.0),
                        duration: Duration(milliseconds: 200 + (index * 50)),
                        curve: Curves.easeOut,
                        builder: (context, value, child) {
                          return Opacity(
                            opacity: value,
                            child: Transform.translate(
                              offset: Offset(0, 10 * (1 - value)),
                              child: child,
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: AnchorCard(
                            variant: AnchorCardVariant.normal,
                            onTap: () =>
                                onboarding.answerQuestion(option.score),
                            child: Row(
                              children: [
                                Text(
                                  option.icon,
                                  style: const TextStyle(fontSize: 28),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        option.title,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.navy,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        option.subtitle,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: AppColors.mutedForeground,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
