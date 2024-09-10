import 'package:flutter/material.dart';

abstract class _AppColors {
  static const primary = Color(0xFFFF7950);
  static const secondary = Color(0xFF1E282F);
  static const surface = Color(0xFF161519);
  static const success = Color(0xFF00FF57);
}

final ThemeData theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: _AppColors.primary,
    brightness: Brightness.dark,
    primary: _AppColors.primary,
    secondary: _AppColors.secondary,
    surface: _AppColors.surface,
  ),
  primaryColor: _AppColors.primary,
  useMaterial3: true,
  scaffoldBackgroundColor: _AppColors.surface,
  fontFamily: 'Inter',
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: 25,
      fontWeight: FontWeight.w700,
    ),
    titleSmall: TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      color: Color(0xFFFFFFFF),
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
  ),
);

extension ColorSchemeExtension on ColorScheme {
  Color get success => _AppColors.success;
}