import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/app/app_colors_theme.dart';
import 'package:flutter_my_anime_list/app/app_dimens.dart';
import 'package:flutter_my_anime_list/app/app_shadow_theme.dart';
import 'package:flutter_my_anime_list/app/app_text_theme.dart';

class AppTheme {
  factory AppTheme.light() {
    return AppTheme._internal(
      colors: AppColorsTheme.light(),
      text: AppTextsTheme.main(),
      shadow: AppShadowTheme.light(),
      brightness: Brightness.light,
    );
  }

  factory AppTheme.dark() {
    return AppTheme._internal(
      colors: AppColorsTheme.dark(),
      text: AppTextsTheme.main(),
      shadow: AppShadowTheme.dark(),
      brightness: Brightness.dark,
    );
  }

  const AppTheme._internal({
    required this.colors,
    required this.text,
    required this.shadow,
    required this.brightness,
  });

  final AppColorsTheme colors;
  final AppTextsTheme text;
  final AppShadowTheme shadow;
  final Brightness brightness;

  ThemeData get themeData {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorSchemeSeed: colors.primary,
      scaffoldBackgroundColor: colors.backgroundColor,
      appBarTheme: AppBarTheme(
        backgroundColor: colors.backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: colors.primary,
        ),
        surfaceTintColor: Colors.transparent,
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return colors.primary;
            }
            return colors.primary;
          },
        ),
        trackColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return colors.primary.withOpacity(0.5);
            }
            return Colors.grey.withOpacity(0.1);
          },
        ),
        trackOutlineColor: WidgetStateProperty.resolveWith(
          (states) {
            return Colors.transparent;
          },
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colors.backgroundColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.textFieldRadius),
          borderSide: BorderSide(
            color: colors.textPrimary,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.textFieldRadius),
          borderSide: BorderSide(
            color: colors.primary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.textFieldRadius),
          borderSide: BorderSide(
            color: colors.error,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSize.s24,
          vertical: AppSize.s12,
        ),
      ),
      extensions: [
        colors,
        text,
        shadow,
      ],
    );
  }
}
