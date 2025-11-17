import 'package:flutter/material.dart';
import 'package:gas_employer/generated/l10n.dart';

class AppColors {
  // Const Light Colors
  static const Color primary = Color(0xFF006b4f);
  static const Color onPrimary = Color(0xFF333333);
  static const Color secondary = Color(0xFFc3dbd4);
  static const Color onSecondary = Color(0xFF919191);
  static const Color background = Color(0xFFf5f7f5);
  static const Color onBackground = Color(0xFF333333);
  static const Color error = Color(0xFFff2510);

  /// Light ColorScheme
  static ColorScheme colorSchemeLight() {
    return const ColorScheme.light(
      brightness: Brightness.light,
      primary: primary,
      onPrimary: onPrimary,
      secondary: secondary,
      onSecondary: onSecondary,
      surface: background,
      onSurface: onPrimary,
    );
  }
}
