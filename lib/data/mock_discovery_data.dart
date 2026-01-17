import '../domain/models/discovery_models.dart';

class MockDiscoveryData {
  // ==========================================================================
  // NYC Options
  // ==========================================================================

  static final List<RawWellnessOption> nycClassPassOptions = [
    RawWellnessOption(
      type: 'yoga',
      name: 'Y7 Studio - Yoga Flow',
      provider: ProviderType.classpass,
      details: const WellnessOptionDetails(
        address: '80 7th Ave, New York',
        distance: '0.4 mi',
        time: '07:00-08:00',
        durationMinutes: 60,
        price: '1 Credit',
        rating: 4.8,
        spotsAvailable: 5,
        amenities: ['Showers', 'Mats', 'Towels'],
      ),
      bookingInfo: const BookingInfo(
        canBookNow: true,
        requiresAction: 'Confirm booking',
        cancellationPolicy: 'Free up to 12h before',
      ),
    ),
    RawWellnessOption(
      type: 'boxing',
      name: 'Rumble Boxing',
      provider: ProviderType.classpass,
      details: const WellnessOptionDetails(
        address: '146 W 23rd St, New York',
        distance: '0.8 mi',
        time: '18:30-19:15',
        durationMinutes: 45,
        price: '2 Credits',
        rating: 4.9,
        spotsAvailable: 2,
        amenities: ['Showers', 'Gloves Rental', 'Lockers'],
      ),
      bookingInfo: const BookingInfo(
        canBookNow: true,
        requiresAction: 'Confirm booking',
      ),
    ),
    RawWellnessOption(
      type: 'meditation',
      name: 'MNDFL Meditation',
      provider: ProviderType.classpass,
      details: const WellnessOptionDetails(
        address: '10 E 8th St, New York',
        distance: '1.2 mi',
        time: '12:00-12:30',
        durationMinutes: 30,
        price: '1 Credit',
        rating: 4.7,
        spotsAvailable: 8,
        amenities: ['Cushions', 'Tea'],
      ),
      bookingInfo: const BookingInfo(
        canBookNow: true,
        requiresAction: 'Confirm booking',
      ),
    ),
  ];

  static final List<RawWellnessOption> nycGympassOptions = [
    RawWellnessOption(
      type: 'gym',
      name: 'Equinox Gramercy',
      provider: ProviderType.gympass,
      details: const WellnessOptionDetails(
        address: '315 Park Ave S, New York',
        distance: '0.3 mi',
        time: 'Opens 05:30',
        durationMinutes: 90, // Flexible
        price: 'Included',
        rating: 4.9,
        amenities: ['Pool', 'Sauna', 'Steam Room', 'Classes'],
      ),
      bookingInfo: const BookingInfo(
        canBookNow: true,
        requiresAction: 'Check in at desk',
      ),
    ),
  ];

  static final List<RawWellnessOption> nycFreeOptions = [
    RawWellnessOption(
      type: 'running',
      name: 'Central Park West Loop',
      provider: ProviderType.free,
      details: const WellnessOptionDetails(
        address: 'Columbus Circle Entrance',
        distance: '1.5 mi',
        time: 'Anytime',
        durationMinutes: 45,
        price: 'Free',
        weatherDependent: true,
        suggestedRoute: 'Start at Columbus Circle, run up West Drive...',
      ),
      bookingInfo: const BookingInfo(
        canBookNow: false,
        requiresAction: 'No booking needed',
        note: 'Route saved to maps',
      ),
    ),
    RawWellnessOption(
      type: 'walk',
      name: 'High Line Walk',
      provider: ProviderType.free,
      details: const WellnessOptionDetails(
        address: 'Gansevoort St Entrance',
        distance: '1.1 mi',
        time: '07:00-22:00',
        durationMinutes: 30,
        price: 'Free',
        weatherDependent: true,
      ),
      bookingInfo: const BookingInfo(
        canBookNow: false,
        requiresAction: 'No booking needed',
      ),
    ),
  ];

  // ==========================================================================
  // Miami Options
  // ==========================================================================
  static final List<RawWellnessOption> miamiClassPassOptions = [
    RawWellnessOption(
      type: 'yoga',
      name: 'Miami Life Center',
      provider: ProviderType.classpass,
      details: const WellnessOptionDetails(
        address: '736 6th St, Miami Beach',
        distance: '0.5 mi',
        time: '09:00-10:30',
        durationMinutes: 90,
        price: '2 Credits',
        rating: 4.8,
        spotsAvailable: 4,
      ),
      bookingInfo: const BookingInfo(
        canBookNow: true,
        requiresAction: 'Confirm booking',
      ),
    ),
  ];
}
