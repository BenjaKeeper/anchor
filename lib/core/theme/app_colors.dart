import 'package:flutter/material.dart';

/// ANCHOR Design System Colors
/// Headspace-inspired wellness aesthetic with coral/teal palette
abstract class AppColors {
  // === Primary - Coral Orange ===
  static const Color primary = Color(0xFFFF6B5B);
  static const Color primaryForeground = Colors.white;

  // === Background - Warm Sand ===
  static const Color background = Color(0xFFFFF9F5);
  static const Color foreground = Color(0xFF2A3F5F);

  // === Card - Pure White ===
  static const Color card = Colors.white;
  static const Color cardForeground = Color(0xFF2A3F5F);

  // === Secondary - Soft Peach ===
  static const Color secondary = Color(0xFFFFE4D6);
  static const Color secondaryForeground = Color(0xFF2A3F5F);

  // === Muted - Light Gray ===
  static const Color muted = Color(0xFFF1F3F5);
  static const Color mutedForeground = Color(0xFF6B7B8C);

  // === Accent - Soft Teal ===
  static const Color accent = Color(0xFF4ECDC4);
  static const Color accentForeground = Colors.white;

  // === Calm Blue ===
  static const Color calm = Color(0xFF5789A8);
  static const Color calmForeground = Colors.white;

  // === Sky Blue ===
  static const Color sky = Color(0xFFA8DAD5);
  static const Color skyForeground = Color(0xFF2A3F5F);

  // === Deep Navy ===
  static const Color navy = Color(0xFF2A3F5F);
  static const Color navyForeground = Colors.white;

  // === Stress Indicators ===
  static const Color stressLow = Color(0xFF6ECB8E);
  static const Color stressModerate = Color(0xFFFFCC4D);
  static const Color stressHigh = Color(0xFFFF8A65);
  static const Color stressCritical = Color(0xFFE57373);

  // === Destructive ===
  static const Color destructive = Color(0xFFEF5350);
  static const Color destructiveForeground = Colors.white;

  // === UI Elements ===
  static const Color border = Color(0xFFE5E8EB);
  static const Color input = Color(0xFFF1F3F5);
  static const Color ring = Color(0xFFFF6B5B);

  // === Gradients ===
  static const LinearGradient calmGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [sky, accent, primary],
  );

  static const LinearGradient textGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primary, accent],
  );
}
