import '../domain/models/wellness_models.dart';

/// Mock data for wellness options across different cities
class MockWellnessData {
  static List<WellnessOption> getOptionsForCity(String city) {
    switch (city.toLowerCase()) {
      case 'nyc':
      case 'new york':
        return _nycOptions;
      case 'miami':
        return _miamiOptions;
      case 'cdmx':
      case 'mexico city':
        return _cdmxOptions;
      case 'austin':
        return _austinOptions;
      default:
        return _genericOptions;
    }
  }

  static final List<WellnessOption> _nycOptions = [
    const WellnessOption(
      id: 'nyc-1',
      name: 'Y7 Studio - Flatiron',
      type: WellnessType.yoga,
      time: '7:00 AM',
      distance: '0.4 mi',
      price: '\$32',
      whyRecommended: 'Morning yoga before meetings boosts HRV',
      address: '25 W 23rd St, New York, NY',
      rating: 4.8,
      bookingUrl: 'https://y7-studio.com/book',
    ),
    const WellnessOption(
      id: 'nyc-2',
      name: 'Chelsea Piers Fitness',
      type: WellnessType.gym,
      time: 'Open 5:30 AM',
      distance: '0.8 mi',
      price: '\$50 pass',
      whyRecommended: 'Full gym access near your hotel',
      address: '60 Chelsea Piers, New York, NY',
      rating: 4.7,
    ),
    const WellnessOption(
      id: 'nyc-3',
      name: 'Central Park Loop',
      type: WellnessType.running,
      time: 'Anytime',
      distance: '1.2 mi',
      price: 'Free',
      whyRecommended: 'Your favorite 5k route in the city',
      address: 'Central Park South, New York, NY',
      rating: 5.0,
    ),
  ];

  static final List<WellnessOption> _miamiOptions = [
    const WellnessOption(
      id: 'mia-1',
      name: 'Bayfront Park Run',
      type: WellnessType.running,
      time: 'Anytime',
      distance: '0.2 mi',
      price: 'Free',
      whyRecommended: 'Perfect morning run temperature today',
      address: '301 Biscayne Blvd, Miami, FL',
      rating: 4.9,
    ),
    const WellnessOption(
      id: 'mia-2',
      name: 'Standard Spa',
      type: WellnessType.spa,
      time: 'Available 8 PM',
      distance: '2.4 mi',
      price: '\$150',
      whyRecommended: 'Recovery opportunity after flight',
      address: '40 Island Ave, Miami Beach, FL',
      rating: 4.8,
    ),
  ];

  static final List<WellnessOption> _cdmxOptions = [
    const WellnessOption(
      id: 'cdmx-1',
      name: 'Aire Ancient Baths',
      type: WellnessType.spa,
      time: 'Available 6:30 PM',
      distance: '2.1 km',
      price: 'MX\$2200',
      whyRecommended: 'Perfect post-pitch reset',
      address: 'Paseo de la Reforma, CDMX',
      rating: 4.9,
    ),
    const WellnessOption(
      id: 'cdmx-2',
      name: 'Green Yoga Condesa',
      type: WellnessType.yoga,
      time: '7:00 AM',
      distance: '0.8 km',
      price: 'MX\$350',
      whyRecommended: 'Walking distance from your morning meeting',
      address: 'Av. Amsterdam, Condesa, CDMX',
      rating: 4.7,
    ),
  ];

  static final List<WellnessOption> _austinOptions = [
    const WellnessOption(
      id: 'aus-1',
      name: 'Wanderlust Yoga',
      type: WellnessType.yoga,
      time: '6:30 AM',
      distance: '0.3 mi',
      price: '\$18',
      whyRecommended: 'High rated studio near conference center',
      address: '206 E 4th St, Austin, TX',
      rating: 4.9,
    ),
    const WellnessOption(
      id: 'aus-2',
      name: 'Barton Springs Pool',
      type: WellnessType.swimming,
      time: 'Open 5 AM',
      distance: '1.5 mi',
      price: '\$9',
      whyRecommended: 'Natural spring recovery swim',
      address: '2201 William Barton Dr, Austin, TX',
      rating: 5.0,
    ),
  ];

  static final List<WellnessOption> _genericOptions = [
    const WellnessOption(
      id: 'gen-1',
      name: 'Local Yoga Studio',
      type: WellnessType.yoga,
      time: '7:00 AM',
      distance: '0.5 mi',
      price: '\$25',
      whyRecommended: 'Consistently good reviews',
      address: 'Downtown',
      rating: 4.5,
    ),
    const WellnessOption(
      id: 'gen-2',
      name: 'Hotel Gym',
      type: WellnessType.gym,
      time: '24/7',
      distance: '0.0 mi',
      price: 'Free',
      whyRecommended: 'Convenient option',
      address: 'Hotel Lobby',
      rating: 4.0,
    ),
  ];
}
