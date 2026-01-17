// Dopamine profile representing user's recharge personality type

/// Activities categorized by intensity
class ProfileActivities {
  final List<String> calm;
  final List<String> active;
  final List<String> thrill;

  const ProfileActivities({
    required this.calm,
    required this.active,
    required this.thrill,
  });
}

/// Dopamine profile type
class DopamineProfile {
  final String id;
  final String name;
  final String description;
  final int position; // 0-100, position on spectrum
  final ProfileActivities activities;

  const DopamineProfile({
    required this.id,
    required this.name,
    required this.description,
    required this.position,
    required this.activities,
  });
}

/// All available dopamine profiles
const List<DopamineProfile> dopamineProfiles = [
  DopamineProfile(
    id: 'calm-restorer',
    name: 'The Calm Restorer',
    description:
        'You recharge best with low-stimulation activities. You thrive in quiet environments and need solitude to truly restore your energy.',
    position: 15,
    activities: ProfileActivities(
      calm: ['Reading', 'Baths', 'Meditation'],
      active: ['Gentle walks', 'Yoga'],
      thrill: [],
    ),
  ),
  DopamineProfile(
    id: 'gentle-mover',
    name: 'The Gentle Mover',
    description:
        'You find restoration in peaceful but purposeful activities. Nature and gentle movement are your sweet spot.',
    position: 35,
    activities: ProfileActivities(
      calm: ['Journaling', 'Tea rituals'],
      active: ['Nature walks', 'Yoga', 'Swimming'],
      thrill: [],
    ),
  ),
  DopamineProfile(
    id: 'balanced-explorer',
    name: 'The Balanced Explorer',
    description:
        'You recharge best with a mix of calm and active experiences. You appreciate quiet time but also get energy from meaningful activities and social connection.',
    position: 50,
    activities: ProfileActivities(
      calm: ['Reading', 'Coffee shops'],
      active: ['Walking', 'Yoga', 'Exploring'],
      thrill: ['Light adventures'],
    ),
  ),
  DopamineProfile(
    id: 'social-energizer',
    name: 'The Social Energizer',
    description:
        'You get energy from connection and stimulation. Social activities and group experiences leave you feeling recharged.',
    position: 70,
    activities: ProfileActivities(
      calm: ['Podcasts'],
      active: ['Group fitness', 'Brunch', 'City exploring'],
      thrill: ['Dancing', 'Events'],
    ),
  ),
  DopamineProfile(
    id: 'thrill-seeker',
    name: 'The Thrill Seeker',
    description:
        'You need excitement to feel truly alive. High-energy activities and new experiences are what restore you.',
    position: 90,
    activities: ProfileActivities(
      calm: [],
      active: ['Intense workouts', 'Sports'],
      thrill: ['Adventures', 'Surfing', 'Dancing'],
    ),
  ),
];

/// Get profile based on average quiz score
DopamineProfile getProfileFromScore(double avgScore) {
  if (avgScore <= 1.5) return dopamineProfiles[0];
  if (avgScore <= 2.0) return dopamineProfiles[1];
  if (avgScore <= 2.8) return dopamineProfiles[2];
  if (avgScore <= 3.4) return dopamineProfiles[3];
  return dopamineProfiles[4];
}
