import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_theme.dart';
import '../../widgets/widgets.dart';

/// Home dashboard screen - main screen after onboarding
class HomeDashboard extends ConsumerWidget {
  const HomeDashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        bottom:
            false, // Don't apply safe area to bottom, we handle it in the nav
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good morning,',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.mutedForeground,
                        ),
                      ),
                      Text(
                        'Alex',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.navy,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Stack(
                        children: [
                          IconButton(
                            onPressed: () => context.push(
                              '/notifications',
                            ), // Placeholder or link to settings
                            icon: Icon(
                              Icons.notifications_outlined,
                              color: AppColors.navy,
                            ),
                          ),
                          Positioned(
                            right: 10,
                            top: 10,
                            child: Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () => context.push('/settings'),
                        icon: Icon(
                          Icons.settings_outlined,
                          color: AppColors.navy,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Scrollable content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // AI Insight Card
                    _buildInsightCard(context),
                    const SizedBox(height: 24),

                    // How you're doing section
                    Text(
                      "HOW YOU'RE DOING",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        color: AppColors.mutedForeground,
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildMetricsGrid(),
                    const SizedBox(height: 24),

                    // Week ahead section
                    Text(
                      'YOUR WEEK AHEAD',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        color: AppColors.mutedForeground,
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildWeekCard(context),
                    const SizedBox(height: 24),

                    // Quick actions
                    Text(
                      'QUICK ACTIONS',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        color: AppColors.mutedForeground,
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildQuickActions(context),
                  ],
                ),
              ),
            ),

            // Bottom navigation
            _buildBottomNav(context),
          ],
        ),
      ),
    );
  }

  Widget _buildInsightCard(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeOut,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - value)),
            child: child,
          ),
        );
      },
      child: AnchorCard(
        variant: AnchorCardVariant.accent,
        child: Stack(
          children: [
            Positioned(
              top: -40,
              right: -40,
              child: Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColors.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.lightbulb_outline,
                        color: AppColors.primary,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'ANCHOR says',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.navy,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  '"Your stress is trending up this week. Based on your Balanced Explorer profile, a gentle activity like yoga would help more than an intense workout right now."',
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.5,
                    color: AppColors.mutedForeground,
                  ),
                ),
                const SizedBox(height: 16),
                AnchorButton(
                  text: 'See my suggestions',
                  size: AnchorButtonSize.small,
                  icon: const Icon(Icons.chevron_right, size: 16),
                  onPressed: () =>
                      context.push('/discovery'), // Or /wellness with filter
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMetricsGrid() {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: 1.1,
      children: [
        _MetricCard(
          icon: Icons.bolt,
          iconColor: AppColors.accent,
          label: 'ENERGY',
          emoji: '😊',
          value: 'Good',
          progress: 0.72,
          progressColor: AppColors.accent,
          subtitle: '72%',
        ),
        _MetricCard(
          icon: Icons.trending_up,
          iconColor: AppColors.stressModerate,
          label: 'STRESS',
          emoji: '😐',
          value: 'Moderate',
          progress: 0.55,
          progressColor: AppColors.stressModerate,
          subtitle: 'Trending ↗',
        ),
        _MetricCard(
          icon: Icons.access_time,
          iconColor: AppColors.primary,
          label: 'LAST RECHARGE',
          emoji: '🧘',
          value: 'Yoga',
          subtitle: '3 days ago',
          warning: '⚠️ Time for another',
        ),
        _MetricCard(
          icon: Icons.dark_mode,
          iconColor: AppColors.calm,
          label: 'SLEEP',
          emoji: '😴',
          value: '6.5 hrs',
          subtitle: 'last night',
          danger: 'Debt: 2.5 hrs',
        ),
      ],
    );
  }

  Widget _buildWeekCard(BuildContext context) {
    final weekDays = [
      {'day': 'Mon', 'icon': '🧘', 'label': '7am Yoga'},
      {'day': 'Tue', 'icon': '✈️', 'label': 'NYC→Miami'},
      {'day': 'Wed', 'icon': '💆', 'label': '7pm Spa'},
      {'day': 'Thu', 'icon': '📅', 'label': 'Free'},
      {'day': 'Fri', 'icon': '🏃', 'label': '6am Run'},
      {'day': 'Sat', 'icon': '🎉', 'label': 'Brunch'},
      {'day': 'Sun', 'icon': '📖', 'label': 'Rest'},
    ];

    return GestureDetector(
      onTap: () => context.push('/booking'),
      child: AnchorCard(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: weekDays.asMap().entries.map((entry) {
              final index = entry.key;
              final day = entry.value;

              return TweenAnimationBuilder<double>(
                tween: Tween(begin: 0.8, end: 1.0),
                duration: Duration(milliseconds: 200 + (index * 50)),
                curve: Curves.easeOut,
                builder: (context, value, child) {
                  return Opacity(
                    opacity: value,
                    child: Transform.scale(scale: value, child: child),
                  );
                },
                child: Container(
                  width: 72,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 12,
                  ),
                  margin: EdgeInsets.only(right: index < 6 ? 8 : 0),
                  decoration: BoxDecoration(
                    color: AppColors.muted.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
                  ),
                  child: Column(
                    children: [
                      Text(
                        day['day']!,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.mutedForeground,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(day['icon']!, style: const TextStyle(fontSize: 24)),
                      const SizedBox(height: 4),
                      Text(
                        day['label']!,
                        style: TextStyle(fontSize: 11, color: AppColors.navy),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildQuickActions(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: AnchorButton(
                text: 'Chat with ANCHOR',
                variant: AnchorButtonVariant.secondary,
                icon: const Text('💬', style: TextStyle(fontSize: 16)),
                onPressed: () => context.push('/chat'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: AnchorButton(
                text: 'View Insights',
                variant: AnchorButtonVariant.ghost,
                icon: const Text('📊', style: TextStyle(fontSize: 16)),
                onPressed: () => context.push('/insights'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: AnchorButton(
                text: 'Browse Wellness',
                variant: AnchorButtonVariant.primary,
                icon: const Text('🏃‍♂️', style: TextStyle(fontSize: 16)),
                onPressed: () => context.push('/wellness'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: AnchorButton(
                text: 'Discover',
                variant: AnchorButtonVariant.ghost,
                icon: const Text('🔍', style: TextStyle(fontSize: 16)),
                onPressed: () => context.push('/discovery'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBottomNav(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.card,
        border: Border(top: BorderSide(color: AppColors.border)),
        boxShadow: AppTheme.shadowSoft,
      ),
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 12,
        bottom: 12 + bottomPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavItem(
            icon: Icons.anchor,
            label: 'Home',
            isActive: true,
            onTap: () {}, // Already on home
          ),
          _NavItem(
            icon: Icons.chat_bubble_outline,
            label: 'Chat',
            emoji: '💬',
            onTap: () => context.push('/chat'),
          ),
          _NavItem(
            icon: Icons.insights,
            label: 'Insights',
            emoji: '📊',
            onTap: () => context.push('/insights'),
          ),
          _NavItem(
            icon: Icons.settings_outlined,
            label: 'Settings',
            onTap: () => context.push('/settings'),
          ),
        ],
      ),
    );
  }
}

class _MetricCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;
  final String emoji;
  final String value;
  final double? progress;
  final Color? progressColor;
  final String? subtitle;
  final String? warning;
  final String? danger;

  const _MetricCard({
    required this.icon,
    required this.iconColor,
    required this.label,
    required this.emoji,
    required this.value,
    this.progress,
    this.progressColor,
    this.subtitle,
    this.warning,
    this.danger,
  });

  @override
  Widget build(BuildContext context) {
    return AnchorCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 16, color: iconColor),
              const SizedBox(width: 8),
              Text(
                label,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: AppColors.mutedForeground,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Text(emoji, style: const TextStyle(fontSize: 24)),
              const SizedBox(width: 8),
              Text(
                value,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.navy,
                ),
              ),
            ],
          ),
          if (progress != null) ...[
            const SizedBox(height: 12),
            ProgressBar(
              value: progress! * 100,
              max: 100,
              color: progressColor,
              height: 8,
            ),
          ],
          if (subtitle != null) ...[
            const SizedBox(height: 8),
            Text(
              subtitle!,
              style: TextStyle(fontSize: 12, color: AppColors.mutedForeground),
            ),
          ],
          if (warning != null) ...[
            const SizedBox(height: 8),
            Text(
              warning!,
              style: TextStyle(fontSize: 12, color: AppColors.primary),
            ),
          ],
          if (danger != null) ...[
            const SizedBox(height: 8),
            Text(
              danger!,
              style: TextStyle(fontSize: 12, color: AppColors.stressHigh),
            ),
          ],
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String? emoji;
  final bool isActive;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.label,
    this.emoji,
    this.isActive = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (emoji != null)
            Text(emoji!, style: const TextStyle(fontSize: 24))
          else
            Icon(
              icon,
              size: 24,
              color: isActive ? AppColors.primary : AppColors.mutedForeground,
            ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: isActive ? AppColors.primary : AppColors.mutedForeground,
            ),
          ),
        ],
      ),
    );
  }
}
