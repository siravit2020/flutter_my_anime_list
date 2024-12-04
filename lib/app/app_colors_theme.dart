import 'package:flutter/material.dart';

class AppColorsTheme extends ThemeExtension<AppColorsTheme> {
  AppColorsTheme({
    required this.primary,
    required this.secondary,
    required this.textPrimary,
    required this.white,
    required this.black,
    required this.iconPrimary,
    required this.iconSecondary,
    required this.backgroundImage,
    required this.shimerBase,
    required this.shimerHighlight,
    required this.indicator,
    required this.indicatorActive,
    required this.error,
    required this.hint,
    required this.backgroundColor,
  });

  factory AppColorsTheme.light() {
    return AppColorsTheme(
      primary: _primary,
      secondary: _secondary,
      textPrimary: _textPrimary,
      white: _white,
      black: _black,
      iconPrimary: _black,
      iconSecondary: _grey,
      backgroundImage: _white,
      shimerBase: _lightGrey,
      shimerHighlight: _white,
      indicator: _lightGrey,
      indicatorActive: _primary,
      error: _red,
      hint: _grey,
      backgroundColor: _white,
    );
  }

  factory AppColorsTheme.dark() {
    return AppColorsTheme(
      primary: _primary,
      secondary: _secondary,
      textPrimary: _textPrimary,
      white: _white,
      black: _black,
      iconPrimary: _black,
      iconSecondary: _grey,
      backgroundImage: _black,
      shimerBase: _grey,
      shimerHighlight: _lightGrey,
      indicator: _lightGrey,
      indicatorActive: _primary,
      error: _red,
      hint: _grey,
      backgroundColor: _black,
    );
  }

  // reference colors:
  static const _primary = Color(0xFFfb8500);
  static const _secondary = Color(0xFFB7036d);
  static const _white = Color(0xFFFFFFFF);
  static const _black = Color.fromARGB(255, 19, 19, 19);
  static const _textPrimary = Color(0x00023047);
  static const _grey = Color(0xFFBDBDBD);
  static const _lightGrey = Color.fromARGB(255, 234, 234, 234);
  static const _red = Color(0xFFD32F2F);

  // actual colors used throughout the app:
  final Color primary;
  final Color secondary;
  final Color textPrimary;
  final Color white;
  final Color black;
  final Color iconPrimary;
  final Color iconSecondary;
  final Color backgroundImage;
  final Color shimerBase;
  final Color shimerHighlight;
  final Color indicator;
  final Color indicatorActive;
  final Color error;
  final Color hint;
  final Color backgroundColor;

  @override
  ThemeExtension<AppColorsTheme> copyWith({bool? lightMode}) {
    if (lightMode == null || lightMode == true) {
      return AppColorsTheme.light();
    }
    return AppColorsTheme.dark();
  }

  @override
  ThemeExtension<AppColorsTheme> lerp(
    AppColorsTheme? other,
    double t,
  ) {
    if (other == null) {
      return this;
    }
    return AppColorsTheme(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      iconPrimary: Color.lerp(iconPrimary, other.iconPrimary, t)!,
      iconSecondary: Color.lerp(iconSecondary, other.iconSecondary, t)!,
      backgroundImage: Color.lerp(backgroundImage, other.backgroundImage, t)!,
      shimerBase: Color.lerp(shimerBase, other.shimerBase, t)!,
      shimerHighlight: Color.lerp(shimerHighlight, other.shimerHighlight, t)!,
      indicator: Color.lerp(indicator, other.indicator, t)!,
      indicatorActive: Color.lerp(indicatorActive, other.indicatorActive, t)!,
      error: Color.lerp(error, other.error, t)!,
      hint: Color.lerp(hint, other.hint, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
    );
  }
}
