import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/providers/wellness_discovery_provider.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/models/discovery_models.dart';
// Ensure AnchorBackButton is available
import 'widgets/recommendation_banner.dart';
import 'widgets/search_context_header.dart';
import 'widgets/wellness_option_card.dart';

class DiscoveryScreen extends ConsumerStatefulWidget {
  const DiscoveryScreen({super.key});

  @override
  ConsumerState<DiscoveryScreen> createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends ConsumerState<DiscoveryScreen> {
  // Hardcoded window for demo purposes
  // In real app, this would be passed via route arguments or selected from a schedule
  final _demoWindow = TimeWindow(
    date: DateTime.now().add(const Duration(days: 1)),
    startTime: '06:30',
    endTime: '08:30',
    durationMinutes: 120,
    beforeEvent: '9am Important Meeting', // Triggers pre-meeting logic
    location: 'New York',
  );

  @override
  Widget build(BuildContext context) {
    // Watch the discovery provider
    final discoveryAsync = ref.watch(
      wellnessDiscoveryProvider(window: _demoWindow),
    );

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Wellness Discovery'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: discoveryAsync.when(
        loading: () => const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 16),
              Text('Finding perfect options for you...'),
            ],
          ),
        ),
        error: (err, stack) => Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.error_outline,
                  size: 48,
                  color: AppColors.stressHigh,
                ),
                const SizedBox(height: 16),
                Text(
                  'Could not load recommendations',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.navy,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  err.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.mutedForeground),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () => ref.refresh(
                    wellnessDiscoveryProvider(window: _demoWindow),
                  ),
                  child: const Text('Try Again'),
                ),
              ],
            ),
          ),
        ),
        data: (result) => SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Context Header
              SearchContextHeader(searchContext: result.searchContext),
              const SizedBox(height: 20),

              // AI Recommendation Banner
              RecommendationBanner(result: result),
              const SizedBox(height: 24),

              // Results Section Title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TOP SUGGESTIONS',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      color: AppColors.mutedForeground,
                    ),
                  ),
                  Icon(Icons.tune, size: 16, color: AppColors.mutedForeground),
                ],
              ),
              const SizedBox(height: 16),

              // Options List
              if (result.options.isEmpty)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 32),
                  child: Center(
                    child: Text('No options found matching your criteria.'),
                  ),
                )
              else
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: result.options.length,
                  itemBuilder: (context, index) {
                    final option = result.options[index];
                    return WellnessOptionCard(
                      option: option,
                      onBook: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Booking ${option.name}...')),
                        );
                      },
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
