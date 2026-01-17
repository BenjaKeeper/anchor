import '../domain/models/wellness_browser_models.dart';

/// Mock data for wellness venues and activities
class MockWellnessBrowserData {
  /// Sample user browsing context for NYC
  static WellnessBrowsingContext get nycContext => WellnessBrowsingContext(
    location: LocationContext(
      current: const UserLocation(
        city: "New York",
        coordinates: [40.7128, -74.0060],
        userBase: "Ace Hotel, 20 W 29th St",
      ),
      upcoming: [
        FutureLocation(
          city: "Miami",
          dates: "2026-01-22 to 2026-01-24",
          userBase: "JW Marriott Miami",
          coordinates: const [25.7617, -80.1918],
        ),
      ],
    ),
    timeContext: TimeContext(
      currentTime: DateTime.parse("2026-01-20T14:30:00Z"),
      todayAvailability: const [
        AvailabilityWindow(start: "18:00", end: "20:00"),
      ],
      tomorrowAvailability: const [
        AvailabilityWindow(start: "06:30", end: "08:30"),
      ],
    ),
    userPreferences: const UserPreferences(
      favoriteActivities: ["yoga", "massage", "spa"],
      recentSearches: ["hot yoga", "thai massage"],
      savedVenues: ["Y7 Studio NYC", "Equinox"],
    ),
  );

  /// Sample wellness venues
  static List<WellnessVenue> get venues => [
    // Y7 Studio - User's favorite
    WellnessVenue(
      id: "venue_001",
      name: "Y7 Studio",
      type: VenueType.yogaStudio,
      address: "80 7th Ave, New York, NY",
      coordinates: [40.7456, -73.9912],
      distance: const DistanceInfo(fromUser: 0.4, unit: "miles", walkTime: 8),
      provider: WellnessProvider.classpass,
      rating: 4.8,
      reviewCount: 342,
      priceLevel: PriceLevel.moderate,
      pricing: const PricingInfo(
        classpassCredits: "1 credit",
        dropInPrice: 32.0,
        monthlyMembership: 189.0,
        bestValue: "ClassPass",
      ),
      amenities: ["Showers", "Lockers", "Towels"],
      activities: [
        const WellnessActivity(
          id: "activity_001",
          name: "Yoga Flow",
          type: "yoga",
          intensity: ActivityIntensity.moderate,
          schedule: [
            ClassSchedule(
              day: "today",
              time: "18:30",
              duration: 60,
              spotsLeft: 3,
            ),
            ClassSchedule(
              day: "tomorrow",
              time: "07:00",
              duration: 60,
              spotsLeft: 5,
            ),
          ],
          instructor: "Sarah Chen",
          level: "All levels",
        ),
      ],
      images: ["https://example.com/y7_1.jpg", "https://example.com/y7_2.jpg"],
      highlights: [
        "Heated studio",
        "Great for beginners",
        "Popular with professionals",
      ],
      phone: "+1 (212) 555-0123",
      website: "y7studio.com",
      description:
          "Y7 Studio brings the energy of a music festival to the practice of yoga.",
      tags: ["hot-yoga", "music", "energetic"],
      userHistory: UserVenueHistory(
        visitCount: 4,
        lastVisit: DateTime.parse("2025-12-15"),
        favoriteActivity: "Morning Flow",
        averageRating: 5.0,
        hrvImpact: "+18%",
        completionRate: 1.0,
      ),
      isSaved: true,
      isRecommended: true,
      recommendationReason: "You love this place - 4 visits, avg HRV +18%",
    ),

    // Equinox - Premium gym
    const WellnessVenue(
      id: "venue_002",
      name: "Equinox Flatiron",
      type: VenueType.gym,
      address: "838 Broadway, New York, NY",
      coordinates: [40.7342, -73.9910],
      distance: DistanceInfo(fromUser: 0.6, unit: "miles", walkTime: 12),
      provider: WellnessProvider.membership,
      rating: 4.5,
      reviewCount: 289,
      priceLevel: PriceLevel.premium,
      pricing: PricingInfo(
        dropInPrice: 50.0,
        monthlyMembership: 250.0,
        bestValue: "Membership",
      ),
      amenities: ["Pool", "Spa", "Personal Training", "Eucalyptus Steam Room"],
      activities: [
        WellnessActivity(
          id: "activity_002",
          name: "HIIT Strength",
          type: "fitness",
          intensity: ActivityIntensity.high,
          schedule: [
            ClassSchedule(
              day: "today",
              time: "19:00",
              duration: 45,
              spotsLeft: 8,
            ),
          ],
          instructor: "Mike Rodriguez",
          level: "Intermediate",
        ),
      ],
      images: ["https://example.com/equinox_1.jpg"],
      highlights: ["Luxury amenities", "Expert trainers", "Full spa services"],
      phone: "+1 (212) 555-0456",
      website: "equinox.com",
      description:
          "High-performance fitness with luxury amenities in the heart of NYC.",
      tags: ["luxury", "fitness", "spa"],
      isSaved: true,
      isRecommended: true,
      recommendationReason: "Premium facilities match your profile",
    ),

    // SoulCycle - Popular cycling
    const WellnessVenue(
      id: "venue_003",
      name: "SoulCycle Flatiron",
      type: VenueType.gym,
      address: "103 5th Ave, New York, NY",
      coordinates: [40.7379, -73.9923],
      distance: DistanceInfo(fromUser: 0.5, unit: "miles", walkTime: 10),
      provider: WellnessProvider.classpass,
      rating: 4.6,
      reviewCount: 156,
      priceLevel: PriceLevel.moderate,
      pricing: PricingInfo(
        classpassCredits: "8 credits",
        dropInPrice: 36.0,
        bestValue: "ClassPass",
      ),
      amenities: ["Showers", "Lockers", "SoulCycle Shoes"],
      activities: [
        WellnessActivity(
          id: "activity_003",
          name: "SoulCycle 45",
          type: "cycling",
          intensity: ActivityIntensity.high,
          schedule: [
            ClassSchedule(
              day: "today",
              time: "18:00",
              duration: 45,
              spotsLeft: 2,
            ),
            ClassSchedule(
              day: "tomorrow",
              time: "07:30",
              duration: 45,
              spotsLeft: 12,
            ),
          ],
          instructor: "Ashley Kim",
          level: "All levels",
        ),
      ],
      images: ["https://example.com/soulcycle_1.jpg"],
      highlights: [
        "High-energy music",
        "Motivating instructors",
        "Full-body workout",
      ],
      phone: "+1 (212) 555-0789",
      website: "soul-cycle.com",
      tags: ["cycling", "music", "energy"],
      isRecommended: false,
    ),

    // AIRE Ancient Baths - Spa experience
    const WellnessVenue(
      id: "venue_004",
      name: "AIRE Ancient Baths",
      type: VenueType.spa,
      address: "88 Franklin St, New York, NY",
      coordinates: [40.7191, -74.0067],
      distance: DistanceInfo(fromUser: 1.2, unit: "miles", walkTime: 24),
      provider: WellnessProvider.dropIn,
      rating: 4.9,
      reviewCount: 423,
      priceLevel: PriceLevel.premium,
      pricing: PricingInfo(dropInPrice: 120.0, bestValue: "Experience Package"),
      amenities: ["Thermal Baths", "Massage", "Relaxation Area", "Tea Service"],
      activities: [
        WellnessActivity(
          id: "activity_004",
          name: "Thermal Circuit",
          type: "spa",
          intensity: ActivityIntensity.low,
          schedule: [
            ClassSchedule(
              day: "today",
              time: "19:30",
              duration: 90,
              spotsLeft: 4,
            ),
          ],
          description: "Ancient thermal bathing experience",
        ),
      ],
      images: ["https://example.com/aire_1.jpg"],
      highlights: [
        "Historic Roman baths",
        "Ultimate relaxation",
        "Perfect for dates",
      ],
      phone: "+1 (212) 555-1234",
      website: "beaire.com",
      description:
          "Ancient thermal bathing experience inspired by Greek, Roman, and Ottoman traditions.",
      tags: ["spa", "relaxation", "luxury", "date-night"],
      isRecommended: true,
      recommendationReason: "Perfect for stress relief after busy days",
    ),

    // Pure Yoga - Another yoga option
    const WellnessVenue(
      id: "venue_005",
      name: "Pure Yoga West",
      type: VenueType.yogaStudio,
      address: "204 E 6th St, New York, NY",
      coordinates: [40.7267, -73.9844],
      distance: DistanceInfo(fromUser: 0.8, unit: "miles", walkTime: 16),
      provider: WellnessProvider.classpass,
      rating: 4.4,
      reviewCount: 198,
      priceLevel: PriceLevel.moderate,
      pricing: PricingInfo(
        classpassCredits: "1 credit",
        dropInPrice: 30.0,
        monthlyMembership: 165.0,
        bestValue: "ClassPass",
      ),
      amenities: ["Showers", "Lockers", "Props Included"],
      activities: [
        WellnessActivity(
          id: "activity_005",
          name: "Hatha Yoga",
          type: "yoga",
          intensity: ActivityIntensity.low,
          schedule: [
            ClassSchedule(
              day: "today",
              time: "18:45",
              duration: 75,
              spotsLeft: 7,
            ),
          ],
          instructor: "David Park",
          level: "Beginner friendly",
        ),
      ],
      images: ["https://example.com/pure_yoga_1.jpg"],
      highlights: [
        "Authentic practice",
        "Experienced teachers",
        "Peaceful environment",
      ],
      phone: "+1 (212) 555-5678",
      website: "pureyoga.com",
      tags: ["traditional-yoga", "peaceful", "authentic"],
      isRecommended: false,
    ),

    // The Well - Wellness club
    const WellnessVenue(
      id: "venue_006",
      name: "The Well",
      type: VenueType.gym,
      address: "1 E 53rd St, New York, NY",
      coordinates: [40.7614, -73.9776],
      distance: DistanceInfo(fromUser: 2.1, unit: "miles", walkTime: 42),
      provider: WellnessProvider.membership,
      rating: 4.7,
      reviewCount: 87,
      priceLevel: PriceLevel.premium,
      pricing: PricingInfo(monthlyMembership: 295.0, bestValue: "Membership"),
      amenities: [
        "Recovery Suite",
        "Cryotherapy",
        "IV Therapy",
        "Meditation Studio",
      ],
      activities: [
        WellnessActivity(
          id: "activity_006",
          name: "Recovery Session",
          type: "recovery",
          intensity: ActivityIntensity.low,
          schedule: [
            ClassSchedule(
              day: "tomorrow",
              time: "08:00",
              duration: 30,
              spotsLeft: 3,
            ),
          ],
          description: "Personalized recovery experience",
        ),
      ],
      images: ["https://example.com/thewell_1.jpg"],
      highlights: [
        "Cutting-edge recovery",
        "Personalized wellness",
        "Luxury experience",
      ],
      phone: "+1 (212) 555-9012",
      website: "thewell.com",
      description:
          "The future of wellness with personalized, science-backed treatments.",
      tags: ["recovery", "technology", "personalized", "luxury"],
      isRecommended: true,
      recommendationReason:
          "Advanced recovery tech matches your wellness goals",
    ),

    // Gotham Gym - Boxing
    const WellnessVenue(
      id: "venue_007",
      name: "Gotham Gym",
      type: VenueType.boxingGym,
      address: "14 Desbrosses St, New York, NY",
      coordinates: [40.7218, -74.0095],
      distance: DistanceInfo(fromUser: 1.0, unit: "miles", walkTime: 20),
      provider: WellnessProvider.classpass,
      rating: 4.3,
      reviewCount: 134,
      priceLevel: PriceLevel.moderate,
      pricing: PricingInfo(
        classpassCredits: "3 credits",
        dropInPrice: 25.0,
        bestValue: "ClassPass",
      ),
      amenities: ["Boxing Equipment", "Showers", "Personal Training"],
      activities: [
        WellnessActivity(
          id: "activity_007",
          name: "Boxing Bootcamp",
          type: "boxing",
          intensity: ActivityIntensity.high,
          schedule: [
            ClassSchedule(
              day: "tomorrow",
              time: "07:15",
              duration: 50,
              spotsLeft: 6,
            ),
          ],
          instructor: "Tony Martinez",
          level: "All levels",
        ),
      ],
      images: ["https://example.com/gotham_1.jpg"],
      highlights: ["Authentic boxing", "Great cardio workout", "Stress relief"],
      phone: "+1 (212) 555-3456",
      website: "gothamgym.com",
      tags: ["boxing", "cardio", "stress-relief"],
      isRecommended: false,
    ),

    // Fluid Running - Outdoor running
    const WellnessVenue(
      id: "venue_008",
      name: "Fluid Running Central Park",
      type: VenueType.outdoorSpace,
      address: "Central Park, New York, NY",
      coordinates: [40.7829, -73.9654],
      distance: DistanceInfo(fromUser: 1.8, unit: "miles", walkTime: 36),
      provider: WellnessProvider.free,
      rating: 4.6,
      reviewCount: 92,
      priceLevel: PriceLevel.free,
      pricing: PricingInfo(bestValue: "Free"),
      amenities: ["Scenic Routes", "Group Runs", "All Weather"],
      activities: [
        WellnessActivity(
          id: "activity_008",
          name: "Morning Run Group",
          type: "running",
          intensity: ActivityIntensity.moderate,
          schedule: [
            ClassSchedule(
              day: "tomorrow",
              time: "07:00",
              duration: 45,
              spotsLeft: 999, // No limit for outdoor
            ),
          ],
          instructor: "Running Club",
          level: "All paces",
        ),
      ],
      images: ["https://example.com/central_park_1.jpg"],
      highlights: ["Beautiful scenery", "Fresh air", "Social running"],
      website: "fluidrunning.com",
      description:
          "Join our community of runners exploring NYC's most beautiful park.",
      tags: ["running", "outdoor", "free", "social"],
      isRecommended: false,
    ),
  ];

  /// Get venues filtered by various criteria
  static List<WellnessVenue> getRecommendedVenues() {
    return venues.where((venue) => venue.isRecommended).toList();
  }

  static List<WellnessVenue> getAvailableTonight() {
    return venues.where((venue) {
      return venue.activities.any((activity) {
        return activity.schedule.any((schedule) {
          if (schedule.day == "today") {
            final time = schedule.time.split(":");
            final hour = int.parse(time[0]);
            return hour >= 18 && hour <= 20 && schedule.spotsLeft > 0;
          }
          return false;
        });
      });
    }).toList();
  }

  static List<WellnessVenue> getNearbyVenues({double maxDistance = 1.0}) {
    return venues
        .where((venue) => venue.distance.fromUser <= maxDistance)
        .toList()
      ..sort((a, b) => a.distance.fromUser.compareTo(b.distance.fromUser));
  }

  static List<WellnessVenue> getSavedVenues() {
    return venues.where((venue) => venue.isSaved).toList();
  }

  static List<WellnessVenue> getPopularVenues() {
    return venues.where((venue) => venue.rating >= 4.5).toList()
      ..sort((a, b) => b.rating.compareTo(a.rating));
  }

  static List<WellnessVenue> getVenuesByType(VenueType type) {
    return venues.where((venue) => venue.type == type).toList();
  }

  /// Generate quick filters based on current data
  static List<QuickFilter> getQuickFilters() {
    return [
      QuickFilter(
        label: "Available Now",
        count: getAvailableTonight().length,
        active: false,
        filterId: "available_now",
      ),
      QuickFilter(
        label: "Recommended",
        count: getRecommendedVenues().length,
        active: true,
        filterId: "recommended",
      ),
      QuickFilter(
        label: "Nearby",
        count: getNearbyVenues().length,
        active: false,
        filterId: "nearby",
      ),
      QuickFilter(
        label: "Your Favorites",
        count: getSavedVenues().length,
        active: false,
        filterId: "saved",
      ),
    ];
  }
}
