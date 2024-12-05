import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/app/app_dimens.dart';
import 'package:flutter_my_anime_list/shared/data/models/anime_model.dart';
import 'package:flutter_my_anime_list/shared/extensions/build_context_extensions.dart';
import 'package:flutter_my_anime_list/shared/utils/enums/anime_image_type.dart';
import 'package:flutter_my_anime_list/shared/widgets/anime_card_grid.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:shimmer/shimmer.dart';

class SearchAnimeGrid extends StatelessWidget {
  const SearchAnimeGrid({
    required this.pagingController,
    super.key,
  });

  final PagingController<int, AnimeModel> pagingController;

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
      sliver: PagedSliverGrid(
        pagingController: pagingController,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: AppSize.s16,
          mainAxisSpacing: AppSize.s08,
          childAspectRatio: cardWidth / mockCard.cardHeight(context),
        ),
        builderDelegate: PagedChildBuilderDelegate<AnimeModel>(
          itemBuilder: (context, item, index) {
            return AnimeCardGrid(
              title: item.title ?? '',
              pictureUrl: item.images?[AnimeImageType.jpg]?.imageUrl,
              cardWidth: cardWidth,
            );
          },
          newPageProgressIndicatorBuilder: (context) {
            return Shimmer.fromColors(
              baseColor: context.theme.appColors.shimerBase,
              highlightColor: context.theme.appColors.shimerHighlight,
              child: AnimeCardGridShimmer(
                cardWidth: cardWidth,
              ),
            );
          },
          animateTransitions: true,
        ),
      ),
    );
  }
}
