import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/gen/assets.gen.dart';
import 'package:flutter_my_anime_list/shared/widgets/app_text.dart';

class ErrorLayout extends StatelessWidget {
  const ErrorLayout({
    super.key,
    this.message = 'Something went wrong',
    this.onRetry,
  });
  final String? message;
  final Function? onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Assets.svg.error.svg(
            width: 80,
            height: 80,
          ),
          const SizedBox(
            height: 16,
          ),
          AppText.bodyMedium(
            message!,
            context: context,
          ),
          // RaisedButton(
          //   onPressed: onRetry,
          //   child: const Text('Retry'),
          // ),
        ],
      ),
    );
  }
}
