import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/app/app_dimens.dart';
import 'package:flutter_my_anime_list/shared/data/models/anime_model.dart';
import 'package:flutter_my_anime_list/shared/utils/enums/anime_image_type.dart';
import 'package:flutter_my_anime_list/shared/widgets/anime_card.dart';
import 'package:flutter_my_anime_list/shared/widgets/app_text.dart';

class TopAnime extends StatelessWidget {
  const TopAnime({
    required this.animeList,
    super.key,
  });

  final List<AnimeModel> animeList;

  @override
  Widget build(BuildContext context) {
    if (animeList.isEmpty) {
      return const SliverToBoxAdapter(
        child: SizedBox.shrink(),
      );
    }
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSize.s16,
            ),
            child: AppText.titleSmall(
              'Anime Recommendation',
              context: context,
            ),
          ),
          const SizedBox(
            height: AppSize.s12,
          ),
          SizedBox(
            height: AnimeCard.cardHeight(context),
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSize.s16,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: animeList.length,
              itemBuilder: (context, index) {
                final recommendation = animeList[index];
                // return const AnimeCardShimmer();
                return AnimeCard(
                  title: recommendation.title ?? '',
                  pictureUrl: recommendation.images?[AnimeImageType.jpg]?.imageUrl,
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: AppSize.s16,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
