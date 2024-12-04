import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/app/app_dimens.dart';
import 'package:flutter_my_anime_list/shared/extensions/build_context_extensions.dart';
import 'package:flutter_my_anime_list/shared/widgets/anime_card.dart';
import 'package:shimmer/shimmer.dart';

class HomeTopAnimeShimmer extends StatelessWidget {
  const HomeTopAnimeShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Shimmer.fromColors(
        baseColor: context.theme.appColors.shimerBase,
        highlightColor: context.theme.appColors.shimerHighlight,
        child: SizedBox(
          height: AnimeCard.cardHeight(context),
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSize.s16,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const AnimeCardShimmer();
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: AppSize.s16,
              );
            },
          ),
        ),
      ),
    );
  }
}
