import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/app/app_dimens.dart';
import 'package:flutter_my_anime_list/shared/data/models/anime_model.dart';
import 'package:flutter_my_anime_list/shared/extensions/build_context_extensions.dart';
import 'package:flutter_my_anime_list/shared/utils/enums/anime_image_type.dart';
import 'package:flutter_my_anime_list/shared/widgets/anime_card_list.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:shimmer/shimmer.dart';

class SearchAnimeList extends StatelessWidget {
  const SearchAnimeList({
    required this.pagingController,
    super.key,
  });

  final PagingController<int, AnimeModel> pagingController;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        left: AppSize.s16,
        right: AppSize.s16,
        bottom: AppSize.s16,
      ),
      sliver: PagedSliverList.separated(
        pagingController: pagingController,
        separatorBuilder: (context, index) => const SizedBox(
          height: AppSize.s16,
        ),
        builderDelegate: PagedChildBuilderDelegate<AnimeModel>(
          itemBuilder: (context, item, index) {
            return AnimeCardList(
              title: item.title ?? '',
              pictureUrl: item.images?[AnimeImageType.jpg]?.imageUrl,
              description: item.synopsis ?? '',
            );
          },
          newPageProgressIndicatorBuilder: (context) {
            return Shimmer.fromColors(
              baseColor: context.theme.appColors.shimerBase,
              highlightColor: context.theme.appColors.shimerHighlight,
              child: const AnimeCardListShimmer(),
            );
          },
          animateTransitions: true,
        ),
      ),
    );
  }
}
