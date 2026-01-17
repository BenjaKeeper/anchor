import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_theme.dart';

/// Card variants matching the React AnchorCard component
enum AnchorCardVariant {
  /// Default with soft shadow
  normal,

  /// With hover/tap elevation effect
  elevated,

  /// Flat with border
  flat,

  /// Soft peach background
  accent,

  /// Selected state with ring
  highlight,
}

/// Card padding options
enum AnchorCardPadding { none, small, medium, large }

/// Custom styled card for ANCHOR app
/// Matches the React AnchorCard component with soft shadows and variants
class AnchorCard extends StatelessWidget {
  final Widget child;
  final AnchorCardVariant variant;
  final AnchorCardPadding padding;
  final VoidCallback? onTap;
  final double? width;
  final double? height;

  const AnchorCard({
    super.key,
    required this.child,
    this.variant = AnchorCardVariant.normal,
    this.padding = AnchorCardPadding.medium,
    this.onTap,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
        border: _border,
        boxShadow: _boxShadow,
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
          child: Padding(padding: _paddingValue, child: child),
        ),
      ),
    );
  }

  Color get _backgroundColor {
    switch (variant) {
      case AnchorCardVariant.normal:
      case AnchorCardVariant.elevated:
      case AnchorCardVariant.flat:
      case AnchorCardVariant.highlight:
        return AppColors.card;
      case AnchorCardVariant.accent:
        return AppColors.secondary;
    }
  }

  Border? get _border {
    switch (variant) {
      case AnchorCardVariant.flat:
        return Border.all(color: AppColors.border);
      case AnchorCardVariant.highlight:
        return Border.all(color: AppColors.primary, width: 2);
      default:
        return null;
    }
  }

  List<BoxShadow>? get _boxShadow {
    switch (variant) {
      case AnchorCardVariant.normal:
      case AnchorCardVariant.accent:
      case AnchorCardVariant.highlight:
        return AppTheme.shadowSoft;
      case AnchorCardVariant.elevated:
        return [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 24,
            offset: const Offset(0, 6),
          ),
        ];
      case AnchorCardVariant.flat:
        return null;
    }
  }

  EdgeInsets get _paddingValue {
    switch (padding) {
      case AnchorCardPadding.none:
        return EdgeInsets.zero;
      case AnchorCardPadding.small:
        return const EdgeInsets.all(12);
      case AnchorCardPadding.medium:
        return const EdgeInsets.all(20);
      case AnchorCardPadding.large:
        return const EdgeInsets.all(24);
    }
  }
}
