import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/shared/extensions/build_context_extensions.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.controller,
    required this.hintText,
    super.key,
    this.onChanged,
    this.onSubmitted,
    this.suffix,
    this.contentPadding,
    this.focusNode,
    this.onEditingComplete,
    this.onSaved,
  });

  final TextEditingController controller;
  final String hintText;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final Widget? suffix;
  final EdgeInsetsGeometry? contentPadding;
  final FocusNode? focusNode;
  final void Function()? onEditingComplete;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSaved: onSaved,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: contentPadding,
        hintStyle: TextStyle(
          color: context.theme.appColors.hint,
        ),
        suffix: suffix,
      ),
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}
