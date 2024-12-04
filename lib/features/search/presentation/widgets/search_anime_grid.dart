import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/app/app_dimens.dart';
import 'package:flutter_my_anime_list/shared/data/models/anime_model.dart';
import 'package:flutter_my_anime_list/shared/utils/enums/anime_image_type.dart';
import 'package:flutter_my_anime_list/shared/widgets/anime_card_grid.dart';

class SearchAnimeGrid extends StatelessWidget {
  const SearchAnimeGrid({
    required this.animeList,
    super.key,
  });

  final List<AnimeModel> animeList;

  @override
  Widget build(BuildContext context) {
    final cardWidth = (MediaQuery.of(context).size.width / 2) - (AppSize.s16 * 3);
    final mockCard = AnimeCardGrid(
      title: '',
      cardWidth: cardWidth,
    );
    return SliverPadding(
      padding: const EdgeInsets.only(
        left: AppSize.s16,
        right: AppSize.s16,
        bottom: AppSize.s16,
      ),
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: AppSize.s16,
          mainAxisSpacing: AppSize.s08,
          childAspectRatio: cardWidth / mockCard.cardHeight(context),
        ),
        itemCount: animeList.length,
        itemBuilder: (context, index) {
          final anime = animeList[index];
          return AnimeCardGrid(
            title: anime.title ?? '',
            pictureUrl: anime.images?[AnimeImageType.jpg]?.imageUrl,
            cardWidth: cardWidth,
          );
        },
      ),
    );
  }
}
