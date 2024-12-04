import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/app/app_dimens.dart';
import 'package:flutter_my_anime_list/shared/data/models/anime_model.dart';
import 'package:flutter_my_anime_list/shared/extensions/build_context_extensions.dart';
import 'package:flutter_my_anime_list/shared/utils/enums/anime_image_type.dart';
import 'package:flutter_my_anime_list/shared/widgets/app_image.dart';
import 'package:flutter_my_anime_list/shared/widgets/app_text.dart';

class SeasonNowAnimeItem extends StatelessWidget {
  const SeasonNowAnimeItem({
    required this.anime,
    super.key,
  });

  final AnimeModel anime;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (anime.images?[AnimeImageType.jpg]?.imageUrl != null)
          AppImage.network(
            anime.images![AnimeImageType.jpg]!.imageUrl!,
            fit: BoxFit.cover,
            borderRadius: BorderRadius.circular(
              AppRadius.r12,
            ),
          )
        else
          const SizedBox.shrink(),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppRadius.r08,
              ),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black,
                ],
              ),
            ),
            padding: const EdgeInsets.all(
              AppSize.s08,
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.bodyMedium(
                    anime.title ?? '',
                    context: context,
                    color: context.theme.appColors.white,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: AppText.bodySmall(
                          '${anime.type}  scored ${anime.score}',
                          context: context,
                          color: context.theme.appColors.white.withOpacity(0.7),
                          textOverflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
