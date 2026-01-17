import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_colors.dart';
import '../../widgets/widgets.dart';
import '../providers/onboarding_provider.dart';

/// Connection screen - connect integrations
class ConnectScreen extends ConsumerWidget {
  const ConnectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingProvider);
    final onboarding = ref.read(onboardingProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () =>
                        onboarding.goToStep(OnboardingStep.welcome),
                    icon: Icon(Icons.arrow_back, color: AppColors.navy),
                  ),
                  Text(
                    '1/5',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.mutedForeground,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Title
              Text(
                "Let's connect your world",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.navy,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                "So I can understand your schedule and how you're feeling",
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.mutedForeground,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),

              // Connection options
              _ConnectionCard(
                icon: Icons.calendar_month,
                name: 'Google Calendar',
                description: "Know where you'll be",
                isConnected: state.connectedServices.contains(
                  ConnectionType.calendar,
                ),
                onConnect: () =>
                    onboarding.toggleConnection(ConnectionType.calendar),
              ),
              const SizedBox(height: 16),
              _ConnectionCard(
                icon: Icons.favorite,
                name: 'Apple Health',
                description: "Understand how you're doing",
                isConnected: state.connectedServices.contains(
                  ConnectionType.health,
                ),
                onConnect: () =>
                    onboarding.toggleConnection(ConnectionType.health),
              ),
              const SizedBox(height: 16),
              _ConnectionCard(
                icon: Icons.fitness_center,
                name: 'ClassPass / Gympass',
                description: 'Book activities for you',
                isOptional: true,
                isConnected: state.connectedServices.contains(
                  ConnectionType.classpass,
                ),
                onConnect: () =>
                    onboarding.toggleConnection(ConnectionType.classpass),
              ),

              const Spacer(),

              // Buttons
              AnchorButton(
                text: 'Continue',
                fullWidth: true,
                onPressed: () =>
                    onboarding.goToStep(OnboardingStep.dopamineIntro),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () =>
                    onboarding.goToStep(OnboardingStep.dopamineIntro),
                child: Text(
                  'Skip for now',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.mutedForeground,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ConnectionCard extends StatelessWidget {
  final IconData icon;
  final String name;
  final String description;
  final bool isOptional;
  final bool isConnected;
  final VoidCallback onConnect;

  const _ConnectionCard({
    required this.icon,
    required this.name,
    required this.description,
    this.isOptional = false,
    required this.isConnected,
    required this.onConnect,
  });

  @override
  Widget build(BuildContext context) {
    return AnchorCard(
      variant: isConnected
          ? AnchorCardVariant.highlight
          : AnchorCardVariant.normal,
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: AppColors.primary),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.navy,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (isOptional) ...[
                      const SizedBox(width: 8),
                      Text(
                        'Optional',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.mutedForeground,
                        ),
                      ),
                    ],
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.mutedForeground,
                  ),
                ),
              ],
            ),
          ),
          AnchorButton(
            text: isConnected ? 'Connected' : 'Connect',
            size: AnchorButtonSize.small,
            variant: isConnected
                ? AnchorButtonVariant.primary
                : AnchorButtonVariant.ghost,
            icon: isConnected ? const Icon(Icons.check, size: 16) : null,
            onPressed: onConnect,
          ),
        ],
      ),
    );
  }
}
