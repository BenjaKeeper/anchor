/// Time slot for preferred recharge times
class TimeSlot {
  final String id;
  final String icon;
  final String title;
  final String time;
  final String description;

  const TimeSlot({
    required this.id,
    required this.icon,
    required this.title,
    required this.time,
    required this.description,
  });
}

/// Predefined time slots from the React app
const List<TimeSlot> rechargeTimeSlots = [
  TimeSlot(
    id: 'early',
    icon: '🌅',
    title: 'Early Bird',
    time: '6am - 9am',
    description: 'Best way to start the day',
  ),
  TimeSlot(
    id: 'midday',
    icon: '🌞',
    title: 'Midday Break',
    time: '11am - 2pm',
    description: 'Reset in the middle of the day',
  ),
  TimeSlot(
    id: 'evening',
    icon: '🌆',
    title: 'Evening Wind-down',
    time: '5pm - 8pm',
    description: 'Decompress after the day',
  ),
];
