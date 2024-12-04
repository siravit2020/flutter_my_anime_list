import 'package:flutter/material.dart';

class AppShadowTheme extends ThemeExtension<AppShadowTheme> {
  const AppShadowTheme({
    this.shadow1,
    this.shadow2,
    this.shadow3,
    this.shadow4,
    this.shadow5,
  });

  factory AppShadowTheme.light() {
    return const AppShadowTheme(
      shadow1: [
        BoxShadow(
          color: Color.fromRGBO(99, 99, 99, 0.2),
          blurRadius: 8,
          offset: Offset(
            0,
            2,
          ),
        ),
      ],
      shadow2: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          blurRadius: 12,
          offset: Offset(
            0,
            4,
          ),
        ),
      ],
      shadow3: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          blurRadius: 12,
          offset: Offset(
            0,
            4,
          ),
        ),
      ],
      shadow4: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          blurRadius: 12,
          offset: Offset(
            0,
            4,
          ),
        ),
      ],
      shadow5: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          blurRadius: 12,
          offset: Offset(
            0,
            4,
          ),
        ),
      ],
    );
  }

  factory AppShadowTheme.dark() {
    return const AppShadowTheme();
  }

  final List<BoxShadow>? shadow1;
  final List<BoxShadow>? shadow2;
  final List<BoxShadow>? shadow3;
  final List<BoxShadow>? shadow4;
  final List<BoxShadow>? shadow5;

  @override
  ThemeExtension<AppShadowTheme> copyWith({bool? lightMode}) {
    if (lightMode ?? false) {
      return AppShadowTheme.light();
    }
    return AppShadowTheme.dark();
  }

  @override
  ThemeExtension<AppShadowTheme> lerp(
    covariant ThemeExtension<AppShadowTheme>? other,
    double t,
  ) =>
      this;
}
