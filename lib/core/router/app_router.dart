import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/onboarding/onboarding_flow.dart';
import '../../presentation/onboarding/providers/onboarding_provider.dart';
import '../../presentation/dashboard/screens/home_dashboard.dart';
import '../../presentation/discovery/discovery_screen.dart';
import '../../presentation/chat/screens/chat_screen.dart';
import '../../presentation/wellness_browser/screens/wellness_browser_screen.dart';
import '../../presentation/wellness_browser/screens/venue_details_screen.dart';
import '../../presentation/booking/screens/booking_screen.dart';
import '../../presentation/insights/screens/insights_screen.dart';
import '../../presentation/settings/screens/settings_screen.dart';

/// App router configuration using go_router
final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      // Initial route - checks onboarding status
      GoRoute(path: '/', builder: (context, state) => const _InitialRedirect()),
      // Onboarding flow
      GoRoute(
        path: '/onboarding',
        builder: (context, state) => const OnboardingFlow(),
      ),
      // Home dashboard
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeDashboard(),
      ),
      GoRoute(
        path: '/discovery',
        builder: (context, state) => const DiscoveryScreen(),
      ),
      GoRoute(path: '/chat', builder: (context, state) => const ChatScreen()),
      // Wellness Browser routes
      GoRoute(
        path: '/wellness',
        builder: (context, state) => const WellnessBrowserScreen(),
      ),
      GoRoute(
        path: '/wellness/venue/:venueId',
        builder: (context, state) {
          final venueId = state.pathParameters['venueId']!;
          return VenueDetailsScreen(venueId: venueId);
        },
      ),
      GoRoute(
        path: '/booking',
        builder: (context, state) => const BookingScreen(),
      ),
      GoRoute(
        path: '/insights',
        builder: (context, state) => const InsightsScreen(),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const SettingsScreen(),
      ),
    ],
  );
});

/// Widget that checks onboarding status and redirects accordingly
class _InitialRedirect extends ConsumerWidget {
  const _InitialRedirect();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboardingComplete = ref.watch(onboardingCompleteProvider);

    return onboardingComplete.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (_, __) =>
          const Scaffold(body: Center(child: Text('Error loading app'))),
      data: (isComplete) {
        // Use addPostFrameCallback to avoid build-time navigation
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (isComplete) {
            context.go('/home');
          } else {
            context.go('/onboarding');
          }
        });

        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
