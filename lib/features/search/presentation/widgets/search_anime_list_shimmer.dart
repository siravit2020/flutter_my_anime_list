import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/app/app_dimens.dart';
import 'package:flutter_my_anime_list/shared/extensions/build_context_extensions.dart';
import 'package:flutter_my_anime_list/shared/widgets/anime_card_list.dart';
import 'package:shimmer/shimmer.dart';

class SearchAnimeListShimmer extends StatelessWidget {
  const SearchAnimeListShimmer({
    super.key,
  });

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
        itemCount: 10,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: context.theme.appColors.shimerBase,
            highlightColor: context.theme.appColors.shimerHighlight,
            child: const AnimeCardListShimmer(),
          );
        },
      ),
    );
  }
}
