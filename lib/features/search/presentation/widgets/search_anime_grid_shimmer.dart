import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/app/app_dimens.dart';
import 'package:flutter_my_anime_list/shared/extensions/build_context_extensions.dart';
import 'package:flutter_my_anime_list/shared/widgets/anime_card_grid.dart';
import 'package:shimmer/shimmer.dart';

class SearchAnimeGridShimmer extends StatelessWidget {
  const SearchAnimeGridShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cardWidth = (MediaQuery.of(context).size.width / 2) - AppSize.s16 * 3;
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
        itemCount: 10,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: context.theme.appColors.shimerBase,
            highlightColor: context.theme.appColors.shimerHighlight,
            child: AnimeCardGridShimmer(
              cardWidth: cardWidth,
            ),
          );
        },
      ),
    );
  }
}
