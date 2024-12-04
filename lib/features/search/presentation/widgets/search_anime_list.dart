import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/app/app_dimens.dart';
import 'package:flutter_my_anime_list/shared/data/models/anime_model.dart';
import 'package:flutter_my_anime_list/shared/utils/enums/anime_image_type.dart';
import 'package:flutter_my_anime_list/shared/widgets/anime_card_list.dart';

class SearchAnimeList extends StatelessWidget {
  const SearchAnimeList({
    required this.animeList,
    super.key,
  });

  final List<AnimeModel> animeList;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        left: AppSize.s16,
        right: AppSize.s16,
        bottom: AppSize.s16,
      ),
      sliver: SliverList.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: AppSize.s16,
        ),
        itemCount: animeList.length,
        itemBuilder: (context, index) {
          final anime = animeList[index];
          return AnimeCardList(
            title: anime.title ?? '',
            pictureUrl: anime.images?[AnimeImageType.jpg]?.imageUrl,
            description: anime.synopsis ?? '',
          );
        },
      ),
    );
  }
}
