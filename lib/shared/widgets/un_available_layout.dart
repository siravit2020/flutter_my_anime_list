import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/gen/assets.gen.dart';
import 'package:flutter_my_anime_list/shared/widgets/app_text.dart';

class UnAvailableLayout extends StatelessWidget {
  const UnAvailableLayout({
    super.key,
    this.message = 'No Data Available',
  });

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.lottie.cat.lottie(
            width: 100,
            height: 100,
          ),
          const SizedBox(
            height: 16,
          ),
          AppText.bodyMedium(
            message!,
            context: context,
          ),
        ],
      ),
    );
  }
}
