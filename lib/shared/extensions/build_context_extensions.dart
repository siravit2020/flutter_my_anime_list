import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/app/app_colors_theme.dart';
import 'package:flutter_my_anime_list/app/app_shadow_theme.dart';
import 'package:flutter_my_anime_list/app/app_text_theme.dart';

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  double get sizeWidth => MediaQuery.of(this).size.width;
  double get sizeHeight => MediaQuery.of(this).size.height;
  Orientation get orientation => MediaQuery.of(this).orientation;
}

extension ThemeDataExtended on ThemeData {
  AppColorsTheme get appColors => extension<AppColorsTheme>()!;
  AppTextsTheme get appTexts => extension<AppTextsTheme>()!;
  AppShadowTheme get appShadow => extension<AppShadowTheme>()!;
}
