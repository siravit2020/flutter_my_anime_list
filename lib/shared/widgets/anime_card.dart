import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/app/app_constants.dart';
import 'package:flutter_my_anime_list/app/app_dimens.dart';
import 'package:flutter_my_anime_list/shared/extensions/build_context_extensions.dart';
import 'package:flutter_my_anime_list/shared/utils/get_text_size.dart';
import 'package:flutter_my_anime_list/shared/widgets/app_image.dart';
import 'package:flutter_my_anime_list/shared/widgets/app_text.dart';

class AnimeCard extends StatelessWidget {
  const AnimeCard({
    required this.title,
    super.key,
    this.pictureUrl,
  });
  static const double pictureHeight = 200;
  static const int maxLines = 2;
  static const double spaceBetweenTextAndPicture = AppSize.s04;

  static double textHeight(BuildContext context) {
    return getTextHeight(
      text: 'Test \n Test',
      style: context.theme.appTexts.bodyMedium,
      maxLines: maxLines,
      maxWidth: cardWidth,
    );
  }

  static double cardWidth = pictureHeight * AppConstants.cardRatio;
  static double cardHeight(BuildContext context) =>
      textHeight(context) + pictureHeight + spaceBetweenTextAndPicture;

  final String? pictureUrl;
  final String title;

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
                borderRadius: BorderRadius.circular(AppRadius.r08),
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

class AnimeCardShimmer extends StatelessWidget {
  const AnimeCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AnimeCard.cardWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppRadius.r08),
              color: Colors.white,
            ),
            clipBehavior: Clip.antiAlias,
            height: AnimeCard.pictureHeight,
          ),
          const SizedBox(
            height: AnimeCard.spaceBetweenTextAndPicture,
          ),
          Container(
            height: AnimeCard.textHeight(context) / 2 - 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppRadius.r08),
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            width: AnimeCard.cardWidth / 1.5,
            height: AnimeCard.textHeight(context) / 2 - 4,
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
