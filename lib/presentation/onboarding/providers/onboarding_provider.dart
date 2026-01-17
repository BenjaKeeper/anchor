import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../data/dopamine_questions.dart';
import '../../../domain/models/models.dart';

/// Onboarding step enum
enum OnboardingStep {
  welcome,
  connect,
  dopamineIntro,
  dopamineQuestions,
  dopamineResult,
  preferences,
  timePreferences,
  complete,
}

/// Connection types for integrations
enum ConnectionType { calendar, health, classpass }

/// Onboarding state
class OnboardingState {
  final OnboardingStep step;
  final int questionIndex;
  final List<int> answers; // Scores for each answered question
  final DopamineProfile? profile;
  final Set<ConnectionType> connectedServices;
  final Set<String> selectedActivities;
  final Set<String> selectedTimeSlots;

  const OnboardingState({
    this.step = OnboardingStep.welcome,
    this.questionIndex = 0,
    this.answers = const [],
    this.profile,
    this.connectedServices = const {},
    this.selectedActivities = const {},
    this.selectedTimeSlots = const {},
  });

  OnboardingState copyWith({
    OnboardingStep? step,
    int? questionIndex,
    List<int>? answers,
    DopamineProfile? profile,
    Set<ConnectionType>? connectedServices,
    Set<String>? selectedActivities,
    Set<String>? selectedTimeSlots,
  }) {
    return OnboardingState(
      step: step ?? this.step,
      questionIndex: questionIndex ?? this.questionIndex,
      answers: answers ?? this.answers,
      profile: profile ?? this.profile,
      connectedServices: connectedServices ?? this.connectedServices,
      selectedActivities: selectedActivities ?? this.selectedActivities,
      selectedTimeSlots: selectedTimeSlots ?? this.selectedTimeSlots,
    );
  }

  int get totalQuestions => dopamineQuestions.length;
  Question get currentQuestion => dopamineQuestions[questionIndex];
}

/// Onboarding state notifier
class OnboardingNotifier extends StateNotifier<OnboardingState> {
  OnboardingNotifier() : super(const OnboardingState());

  void goToStep(OnboardingStep step) {
    state = state.copyWith(step: step);
  }

  void nextStep() {
    final nextStep = OnboardingStep.values[state.step.index + 1];
    state = state.copyWith(step: nextStep);
  }

  void previousStep() {
    if (state.step.index > 0) {
      final prevStep = OnboardingStep.values[state.step.index - 1];
      state = state.copyWith(step: prevStep);
    }
  }

  // Connection screen
  void toggleConnection(ConnectionType type) {
    final newConnections = Set<ConnectionType>.from(state.connectedServices);
    if (newConnections.contains(type)) {
      newConnections.remove(type);
    } else {
      newConnections.add(type);
    }
    state = state.copyWith(connectedServices: newConnections);
  }

  // Dopamine quiz
  void startQuiz() {
    state = state.copyWith(
      step: OnboardingStep.dopamineQuestions,
      questionIndex: 0,
      answers: [],
      profile: null,
    );
  }

  void answerQuestion(int score) {
    final newAnswers = [...state.answers, score];

    if (state.questionIndex < dopamineQuestions.length - 1) {
      // More questions to go
      state = state.copyWith(
        questionIndex: state.questionIndex + 1,
        answers: newAnswers,
      );
    } else {
      // Quiz complete - calculate profile
      final avgScore = newAnswers.reduce((a, b) => a + b) / newAnswers.length;
      final profile = getProfileFromScore(avgScore);
      state = state.copyWith(
        answers: newAnswers,
        profile: profile,
        step: OnboardingStep.dopamineResult,
      );
    }
  }

  void goToPreviousQuestion() {
    if (state.questionIndex > 0) {
      state = state.copyWith(
        questionIndex: state.questionIndex - 1,
        answers: state.answers.sublist(0, state.answers.length - 1),
      );
    } else {
      state = state.copyWith(step: OnboardingStep.dopamineIntro);
    }
  }

  // Preferences screen
  void toggleActivity(String activityId) {
    final newActivities = Set<String>.from(state.selectedActivities);
    if (newActivities.contains(activityId)) {
      newActivities.remove(activityId);
    } else {
      newActivities.add(activityId);
    }
    state = state.copyWith(selectedActivities: newActivities);
  }

  // Time preferences screen
  void toggleTimeSlot(String slotId) {
    final newSlots = Set<String>.from(state.selectedTimeSlots);
    if (newSlots.contains(slotId)) {
      newSlots.remove(slotId);
    } else {
      newSlots.add(slotId);
    }
    state = state.copyWith(selectedTimeSlots: newSlots);
  }

  // Complete onboarding
  Future<void> completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('anchor-onboarding-complete', true);

    // Store profile
    if (state.profile != null) {
      await prefs.setString('anchor-profile-id', state.profile!.id);
    }

    // Store preferences
    await prefs.setStringList(
      'anchor-activities',
      state.selectedActivities.toList(),
    );
    await prefs.setStringList(
      'anchor-time-slots',
      state.selectedTimeSlots.toList(),
    );
  }
}

/// Provider for onboarding state
final onboardingProvider =
    StateNotifierProvider<OnboardingNotifier, OnboardingState>((ref) {
      return OnboardingNotifier();
    });

/// Provider to check if onboarding is complete
final onboardingCompleteProvider = FutureProvider<bool>((ref) async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool('anchor-onboarding-complete') ?? false;
});
