import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

/// Animated progress bar widget
/// Matches the React ProgressBar component
class ProgressBar extends StatelessWidget {
  final double value;
  final double max;
  final bool showLabel;
  final String? label;
  final Color? color;
  final double height;

  const ProgressBar({
    super.key,
    required this.value,
    this.max = 100,
    this.showLabel = false,
    this.label,
    this.color,
    this.height = 4,
  });

  @override
  Widget build(BuildContext context) {
    final percentage = (value / max).clamp(0.0, 1.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showLabel) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (label != null)
                Text(
                  label!,
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.mutedForeground,
                  ),
                ),
              Text(
                '${(percentage * 100).round()}%',
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.mutedForeground,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
        ],
        Container(
          height: height,
          decoration: BoxDecoration(
            color: AppColors.muted,
            borderRadius: BorderRadius.circular(height / 2),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(height / 2),
            child: AnimatedFractionallySizedBox(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOut,
              alignment: Alignment.centerLeft,
              widthFactor: percentage,
              child: Container(
                decoration: BoxDecoration(
                  color: color ?? AppColors.primary,
                  borderRadius: BorderRadius.circular(height / 2),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Animatable FractionallySizedBox
class AnimatedFractionallySizedBox extends ImplicitlyAnimatedWidget {
  final double widthFactor;
  final AlignmentGeometry alignment;
  final Widget child;

  const AnimatedFractionallySizedBox({
    super.key,
    required this.widthFactor,
    required this.alignment,
    required this.child,
    required super.duration,
    super.curve = Curves.linear,
  });

  @override
  AnimatedFractionallySizedBoxState createState() =>
      AnimatedFractionallySizedBoxState();
}

class AnimatedFractionallySizedBoxState
    extends AnimatedWidgetBaseState<AnimatedFractionallySizedBox> {
  Tween<double>? _widthFactor;

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _widthFactor =
        visitor(
              _widthFactor,
              widget.widthFactor,
              (dynamic value) => Tween<double>(begin: value as double),
            )
            as Tween<double>?;
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: _widthFactor?.evaluate(animation) ?? widget.widthFactor,
      alignment: widget.alignment,
      child: widget.child,
    );
  }
}
