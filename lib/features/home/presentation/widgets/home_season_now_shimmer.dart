import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/app/app_constants.dart';
import 'package:flutter_my_anime_list/app/app_dimens.dart';
import 'package:flutter_my_anime_list/shared/extensions/build_context_extensions.dart';
import 'package:shimmer/shimmer.dart';

class HomeSeasonNowShimmer extends StatelessWidget {
  const HomeSeasonNowShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: AppSize.s16,
        ),
        child: Shimmer.fromColors(
          baseColor: context.theme.appColors.shimerBase,
          highlightColor: context.theme.appColors.shimerHighlight,
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: AppConstants.cardRatio * 1.2,
            ),
            items: [1, 2, 3].map(
              (anime) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSize.s08,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: context.theme.appColors.shimerBase,
                          borderRadius: BorderRadius.circular(AppRadius.r08),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
