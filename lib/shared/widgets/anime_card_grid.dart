import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/app/app_constants.dart';
import 'package:flutter_my_anime_list/app/app_dimens.dart';
import 'package:flutter_my_anime_list/shared/extensions/build_context_extensions.dart';
import 'package:flutter_my_anime_list/shared/utils/get_text_size.dart';
import 'package:flutter_my_anime_list/shared/widgets/app_image.dart';
import 'package:flutter_my_anime_list/shared/widgets/app_text.dart';

class AnimeCardGrid extends StatelessWidget {
  const AnimeCardGrid({
    required this.title,
    required this.cardWidth,
    super.key,
    this.pictureUrl,
  });

  static const int maxLines = 2;
  static const double spaceBetweenTextAndPicture = AppSize.s04;

  double textHeight(BuildContext context) {
    return getTextHeight(
      text: 'Test \n Test',
      style: context.theme.appTexts.bodyMedium,
      maxLines: maxLines,
      maxWidth: cardWidth,
    );
  }

  double get pictureHeight => cardWidth / AppConstants.cardRatio;

  double cardHeight(BuildContext context) =>
      textHeight(context) + pictureHeight + spaceBetweenTextAndPicture;

  final String? pictureUrl;
  final String title;
  final double cardWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cardWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: AppConstants.cardRatio,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppRadius.r08,
                ),
              ),
              clipBehavior: Clip.antiAlias,
              // height: pictureHeight,
              child: pictureUrl != null
                  ? AppImage.network(
                      pictureUrl!,
                      fit: BoxFit.cover,
                    )
                  : const SizedBox(),
            ),
          ),
          const SizedBox(
            height: spaceBetweenTextAndPicture,
          ),
          AppText.bodyMedium(
            title,
            context: context,
            maxLines: maxLines,
            textOverflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class AnimeCardGridShimmer extends StatelessWidget {
  const AnimeCardGridShimmer({
    required this.cardWidth,
    super.key,
  });

  final double cardWidth;

  @override
  Widget build(BuildContext context) {
    final card = AnimeCardGrid(
      title: '',
      cardWidth: cardWidth,
    );
    return SizedBox(
      width: cardWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: AppConstants.cardRatio,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppRadius.r08),
                color: Colors.white,
              ),
              clipBehavior: Clip.antiAlias,
            ),
          ),
          const SizedBox(
            height: AnimeCardGrid.spaceBetweenTextAndPicture,
          ),
          Container(
            height: card.textHeight(context) / 2 - 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppRadius.r08),
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            width: cardWidth / 1.5,
            height: card.textHeight(context) / 2 - 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppRadius.r08),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
