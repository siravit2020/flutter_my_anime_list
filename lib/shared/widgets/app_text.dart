import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/shared/extensions/build_context_extensions.dart';

class AppText extends StatelessWidget {
  const AppText._internal(
    this.text, {
    required this.textStyle,
    required this.color,
    super.key,
    this.textAlign = TextAlign.start,
    this.textOverflow,
    this.maxLines,
  });

  factory AppText.bodyLarge(
    String text, {
    required BuildContext context,
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
  }) =>
      AppText._internal(
        text,
        key: key,
        textStyle: context.theme.appTexts.bodyLarge,
        color: color,
        textAlign: textAlign ?? TextAlign.start,
        textOverflow: textOverflow,
        maxLines: maxLines,
      );

  factory AppText.bodyMedium(
    String text, {
    required BuildContext context,
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
  }) =>
      AppText._internal(
        text,
        key: key,
        textStyle: context.theme.appTexts.bodyMedium,
        color: color,
        textAlign: textAlign ?? TextAlign.start,
        textOverflow: textOverflow,
        maxLines: maxLines,
      );

  factory AppText.bodySmall(
    String text, {
    required BuildContext context,
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
  }) =>
      AppText._internal(
        text,
        key: key,
        textStyle: context.theme.appTexts.bodySmall,
        color: color,
        textAlign: textAlign ?? TextAlign.start,
        textOverflow: textOverflow,
        maxLines: maxLines,
      );

  factory AppText.titleLarge(
    String text, {
    required BuildContext context,
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
  }) =>
      AppText._internal(
        text,
        key: key,
        textStyle: context.theme.appTexts.titleLarge,
        color: color,
        textAlign: textAlign ?? TextAlign.start,
        textOverflow: textOverflow,
        maxLines: maxLines,
      );

  factory AppText.titleMedium(
    String text, {
    required BuildContext context,
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
  }) =>
      AppText._internal(
        text,
        key: key,
        textStyle: context.theme.appTexts.titleMedium,
        color: color,
        textAlign: textAlign ?? TextAlign.start,
        textOverflow: textOverflow,
        maxLines: maxLines,
      );

  factory AppText.titleSmall(
    String text, {
    required BuildContext context,
    Key? key,
    Color? color,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
  }) =>
      AppText._internal(
        text,
        key: key,
        textStyle: context.theme.appTexts.titleSmall,
        color: color,
        textAlign: textAlign ?? TextAlign.start,
        textOverflow: textOverflow,
        maxLines: maxLines,
      );

  final String text;
  final TextStyle? textStyle;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: textStyle?.copyWith(color: color),
      maxLines: maxLines,
    );
  }
}
