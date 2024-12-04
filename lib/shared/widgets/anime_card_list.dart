import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/app/app_constants.dart';
import 'package:flutter_my_anime_list/app/app_dimens.dart';
import 'package:flutter_my_anime_list/shared/extensions/build_context_extensions.dart';
import 'package:flutter_my_anime_list/shared/utils/get_text_size.dart';
import 'package:flutter_my_anime_list/shared/widgets/app_image.dart';
import 'package:flutter_my_anime_list/shared/widgets/app_text.dart';

class AnimeCardList extends StatelessWidget {
  const AnimeCardList({
    required this.title,
    required this.description,
    super.key,
    this.pictureUrl,
  });
  static const double pictureHeight = 160;
  static const int maxLines = 3;

  static double titleHeight(BuildContext context) {
    return getTextHeight(
      text: 'Test',
      style: context.theme.appTexts.titleSmall,
      maxLines: maxLines,
    );
  }

  static double descriptionHeight(BuildContext context) {
    return getTextHeight(
      text: 'Test',
      style: context.theme.appTexts.bodyMedium,
      maxLines: maxLines,
    );
  }

  final String? pictureUrl;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: pictureHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: AppConstants.cardRatio,
            child: Container(
              height: pictureHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppRadius.r08),
              ),
              clipBehavior: Clip.antiAlias,
              child: pictureUrl != null
                  ? AppImage.network(
                      pictureUrl!,
                      fit: BoxFit.cover,
                    )
                  : const SizedBox(),
            ),
          ),
          const SizedBox(
            width: AppSize.s08,
          ),
          Expanded(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.titleSmall(
                      title,
                      context: context,
                      maxLines: 3,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: AppSize.s08,
                    ),
                    Expanded(
                      child: AppText.bodyMedium(
                        description,
                        context: context,
                        maxLines: 3,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AnimeCardListShimmer extends StatelessWidget {
  const AnimeCardListShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AnimeCardList.pictureHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: AppConstants.cardRatio,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppRadius.r08),
                color: Colors.white,
              ),
              clipBehavior: Clip.antiAlias,
              height: AnimeCardList.pictureHeight,
            ),
          ),
          const SizedBox(
            width: AppSize.s08,
          ),
          Expanded(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: AnimeCardList.titleHeight(context),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppRadius.r08),
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.s08,
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: AppSize.s24),
                      height: AnimeCardList.descriptionHeight(context),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppRadius.r08),
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.s08,
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: AppSize.s34),
                      height: AnimeCardList.descriptionHeight(context),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppRadius.r08),
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.s08,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
