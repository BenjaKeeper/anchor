import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_theme.dart';

/// Button variants matching the React AnchorButton component
enum AnchorButtonVariant { primary, secondary, ghost, accent }

/// Button sizes
enum AnchorButtonSize { small, medium, large }

/// Custom styled button for ANCHOR app
/// Matches the React AnchorButton component with coral primary, glow effects
class AnchorButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final AnchorButtonVariant variant;
  final AnchorButtonSize size;
  final bool fullWidth;
  final Widget? icon;
  final bool isLoading;

  const AnchorButton({
    super.key,
    required this.text,
    this.onPressed,
    this.variant = AnchorButtonVariant.primary,
    this.size = AnchorButtonSize.medium,
    this.fullWidth = false,
    this.icon,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: fullWidth ? double.infinity : null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_borderRadius),
        boxShadow: variant == AnchorButtonVariant.primary && onPressed != null
            ? AppTheme.shadowGlow
            : null,
      ),
      child: Material(
        color: _backgroundColor,
        borderRadius: BorderRadius.circular(_borderRadius),
        child: InkWell(
          onTap: isLoading ? null : onPressed,
          borderRadius: BorderRadius.circular(_borderRadius),
          child: Container(
            padding: _padding,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(_borderRadius),
              border: variant == AnchorButtonVariant.ghost
                  ? Border.all(color: AppColors.primary, width: 2)
                  : null,
            ),
            child: Row(
              mainAxisSize: fullWidth ? MainAxisSize.max : MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isLoading) ...[
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation(_textColor),
                    ),
                  ),
                  const SizedBox(width: 12),
                ] else if (icon != null) ...[
                  IconTheme(
                    data: IconThemeData(color: _textColor, size: 20),
                    child: icon!,
                  ),
                  const SizedBox(width: 8),
                ],
                Flexible(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: _textColor,
                      fontSize: _fontSize,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color get _backgroundColor {
    if (onPressed == null) {
      return AppColors.muted;
    }
    switch (variant) {
      case AnchorButtonVariant.primary:
        return AppColors.primary;
      case AnchorButtonVariant.secondary:
        return AppColors.muted;
      case AnchorButtonVariant.ghost:
        return Colors.transparent;
      case AnchorButtonVariant.accent:
        return AppColors.accent;
    }
  }

  Color get _textColor {
    if (onPressed == null) {
      return AppColors.mutedForeground;
    }
    switch (variant) {
      case AnchorButtonVariant.primary:
        return AppColors.primaryForeground;
      case AnchorButtonVariant.secondary:
        return AppColors.navy;
      case AnchorButtonVariant.ghost:
        return AppColors.primary;
      case AnchorButtonVariant.accent:
        return AppColors.accentForeground;
    }
  }

  double get _borderRadius {
    switch (size) {
      case AnchorButtonSize.small:
        return AppTheme.radiusMedium;
      case AnchorButtonSize.medium:
      case AnchorButtonSize.large:
        return AppTheme.radiusLarge;
    }
  }

  EdgeInsets get _padding {
    switch (size) {
      case AnchorButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 10);
      case AnchorButtonSize.medium:
        return const EdgeInsets.symmetric(horizontal: 32, vertical: 16);
      case AnchorButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 40, vertical: 20);
    }
  }

  double get _fontSize {
    switch (size) {
      case AnchorButtonSize.small:
        return 14;
      case AnchorButtonSize.medium:
        return 16;
      case AnchorButtonSize.large:
        return 18;
    }
  }
}
