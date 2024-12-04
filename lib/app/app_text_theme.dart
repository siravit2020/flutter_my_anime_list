import 'package:flutter/material.dart';

class AppTextsTheme extends ThemeExtension<AppTextsTheme> {
  const AppTextsTheme._internal({
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
  });

  factory AppTextsTheme.main() {
    return const AppTextsTheme._internal(
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        fontFamily: _baseFamily,
        letterSpacing: 0.4,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w900,
        fontFamily: _baseFamily,
        letterSpacing: 0.32,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        fontFamily: _baseFamily,
        letterSpacing: 0.28,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w900,
        fontFamily: _baseFamily,
        letterSpacing: 0.02,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: _baseFamily,
        letterSpacing: 0.24,
        height: 1.4,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: _baseFamily,
        letterSpacing: 0.24,
      ),
    );
  }
  static const _baseFamily = 'Promp';

  final TextStyle titleLarge;
  final TextStyle titleMedium;
  final TextStyle titleSmall;
  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle bodySmall;

  @override
  ThemeExtension<AppTextsTheme> copyWith() {
    return AppTextsTheme._internal(
      titleLarge: titleLarge,
      titleMedium: titleMedium,
      titleSmall: titleSmall,
      bodyLarge: bodyLarge,
      bodyMedium: bodyMedium,
      bodySmall: bodySmall,
    );
  }

  @override
  ThemeExtension<AppTextsTheme> lerp(
    covariant ThemeExtension<AppTextsTheme>? other,
    double t,
  ) =>
      this;
}
