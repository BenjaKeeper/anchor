/// Activity that users can select as their decompression preference
class Activity {
  final String id;
  final String icon;
  final String label;

  const Activity({required this.id, required this.icon, required this.label});
}

/// Predefined activities from the React app
const List<Activity> decompressActivities = [
  Activity(id: 'yoga', icon: '🧘', label: 'Yoga'),
  Activity(id: 'gym', icon: '🏋️', label: 'Gym'),
  Activity(id: 'running', icon: '🏃', label: 'Running'),
  Activity(id: 'massage', icon: '💆', label: 'Massage'),
  Activity(id: 'spa', icon: '🧖', label: 'Spa'),
  Activity(id: 'swimming', icon: '🏊', label: 'Swimming'),
  Activity(id: 'meditate', icon: '🧘‍♂️', label: 'Meditate'),
  Activity(id: 'boxing', icon: '🥊', label: 'Boxing'),
  Activity(id: 'cycling', icon: '🚴', label: 'Cycling'),
  Activity(id: 'reading', icon: '📚', label: 'Reading'),
  Activity(id: 'beach', icon: '🌊', label: 'Beach'),
  Activity(id: 'coffee', icon: '🍵', label: 'Tea/Coffee'),
];
