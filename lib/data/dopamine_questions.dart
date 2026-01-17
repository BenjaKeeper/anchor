import '../domain/models/question.dart';

/// Dopamine profiling questions
/// Ported from the React dopamine-questions.ts
const List<Question> dopamineQuestions = [
  Question(
    id: 'depleted',
    question:
        "When you're completely drained after a long week, what sounds most appealing?",
    options: [
      QuestionOption(
        id: 'book',
        icon: '🛋️',
        title: 'Staying in with a book or movie',
        subtitle: 'Quiet time to decompress',
        score: 1,
      ),
      QuestionOption(
        id: 'walk',
        icon: '🚶',
        title: 'A peaceful walk in nature',
        subtitle: 'Gentle movement, fresh air',
        score: 2,
      ),
      QuestionOption(
        id: 'social',
        icon: '🎉',
        title: 'Meeting friends for dinner or drinks',
        subtitle: 'Social energy recharges me',
        score: 3,
      ),
      QuestionOption(
        id: 'adventure',
        icon: '🏄',
        title: 'Something adventurous or thrilling',
        subtitle: 'I need excitement to feel alive',
        score: 4,
      ),
    ],
  ),
  Question(
    id: 'vacation',
    question: 'Your ideal vacation day looks like...',
    options: [
      QuestionOption(
        id: 'beach',
        icon: '🏖️',
        title: 'Beach day with a book',
        subtitle: 'Sun, waves, zero plans',
        score: 1,
      ),
      QuestionOption(
        id: 'hiking',
        icon: '🥾',
        title: 'Hiking to a scenic viewpoint',
        subtitle: 'Nature exploration at my pace',
        score: 2,
      ),
      QuestionOption(
        id: 'city',
        icon: '🏛️',
        title: 'Exploring a new city',
        subtitle: 'Food, culture, getting lost',
        score: 3,
      ),
      QuestionOption(
        id: 'extreme',
        icon: '🪂',
        title: 'Skydiving, surfing, or bungee jumping',
        subtitle: 'Maximum adrenaline please',
        score: 4,
      ),
    ],
  ),
  Question(
    id: 'stress',
    question: 'After a stressful meeting or presentation, you prefer to...',
    options: [
      QuestionOption(
        id: 'meditate',
        icon: '🧘',
        title: 'Meditate or do breathing exercises',
        subtitle: 'Calm the mind, slow down',
        score: 1,
      ),
      QuestionOption(
        id: 'coffee',
        icon: '☕',
        title: 'Grab a coffee and decompress',
        subtitle: 'Small ritual to transition',
        score: 2,
      ),
      QuestionOption(
        id: 'talk',
        icon: '💬',
        title: 'Talk it through with someone',
        subtitle: 'Processing out loud helps me',
        score: 3,
      ),
      QuestionOption(
        id: 'gym',
        icon: '🏃',
        title: 'Hit the gym or go for a run',
        subtitle: 'Burn off the tension physically',
        score: 4,
      ),
    ],
  ),
  Question(
    id: 'sunday',
    question: 'A perfect Sunday morning for you is...',
    options: [
      QuestionOption(
        id: 'sleep',
        icon: '😴',
        title: 'Sleeping in, no alarm',
        subtitle: 'Rest is sacred',
        score: 1,
      ),
      QuestionOption(
        id: 'journal',
        icon: '🍳',
        title: 'Slow breakfast and journaling',
        subtitle: 'Mindful morning routine',
        score: 2,
      ),
      QuestionOption(
        id: 'brunch',
        icon: '🥐',
        title: 'Brunch with friends',
        subtitle: 'Good food, good company',
        score: 3,
      ),
      QuestionOption(
        id: 'workout',
        icon: '🚴',
        title: 'Early morning workout or adventure',
        subtitle: 'Seize the day from the start',
        score: 4,
      ),
    ],
  ),
  Question(
    id: 'music',
    question: 'When you need a mood boost, you reach for...',
    options: [
      QuestionOption(
        id: 'ambient',
        icon: '🎵',
        title: 'Ambient or lo-fi beats',
        subtitle: 'Calm, atmospheric sounds',
        score: 1,
      ),
      QuestionOption(
        id: 'indie',
        icon: '🎸',
        title: 'Indie or acoustic music',
        subtitle: 'Something with feeling',
        score: 2,
      ),
      QuestionOption(
        id: 'pop',
        icon: '🎤',
        title: 'Pop or upbeat playlists',
        subtitle: 'Something catchy to sing along',
        score: 3,
      ),
      QuestionOption(
        id: 'edm',
        icon: '🔥',
        title: 'EDM, hip-hop, or high-energy tracks',
        subtitle: 'I need to feel the bass',
        score: 4,
      ),
    ],
  ),
  Question(
    id: 'overwhelm',
    question:
        'When everything feels overwhelming, what actually helps you reset?',
    options: [
      QuestionOption(
        id: 'bath',
        icon: '🛁',
        title: 'A long bath or shower',
        subtitle: 'Water and warmth heal everything',
        score: 1,
      ),
      QuestionOption(
        id: 'outside',
        icon: '🌳',
        title: 'Getting outside, any fresh air',
        subtitle: 'Nature grounds me',
        score: 2,
      ),
      QuestionOption(
        id: 'distraction',
        icon: '🎮',
        title: 'A fun distraction (game, show, hobby)',
        subtitle: 'Taking my mind off things',
        score: 3,
      ),
      QuestionOption(
        id: 'intense',
        icon: '💪',
        title: 'Intense physical activity',
        subtitle: 'Sweat out the stress',
        score: 4,
      ),
    ],
  ),
];
