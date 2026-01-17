// Domain models for ANCHOR wellness app
// Using plain Dart classes (Freezed optional for serialization needs)

/// Represents a single option in a dopamine question
class QuestionOption {
  final String id;
  final String icon;
  final String title;
  final String subtitle;
  final int
  score; // 1 = low dopamine, 2 = low-medium, 3 = medium-high, 4 = high

  const QuestionOption({
    required this.id,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.score,
  });
}

/// Represents a dopamine profiling question
class Question {
  final String id;
  final String question;
  final List<QuestionOption> options;

  const Question({
    required this.id,
    required this.question,
    required this.options,
  });
}
