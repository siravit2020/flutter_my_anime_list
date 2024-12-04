import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_anime_list/app/app_constants.dart';
import 'package:flutter_my_anime_list/app/app_dimens.dart';
import 'package:flutter_my_anime_list/features/home/presentation/cubit/home_top_anime_indicator_cubit.dart';
import 'package:flutter_my_anime_list/features/home/presentation/widgets/season_now_anime_item.dart';
import 'package:flutter_my_anime_list/shared/data/models/anime_model.dart';
import 'package:flutter_my_anime_list/shared/extensions/build_context_extensions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SeasonNowAnime extends StatelessWidget {
  const SeasonNowAnime({
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
    return BlocProvider(
      create: (context) => HomeTopAnimeIndicatorCubit(),
      child: _Slide(
        animeList: animeList,
      ),
    );
  }
}

class _Slide extends StatefulWidget {
  const _Slide({
    required this.animeList,
  });

  final List<AnimeModel> animeList;

  @override
  State<_Slide> createState() => _SlideState();
}

class _SlideState extends State<_Slide> {
  CarouselSliderController carouselController = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: AppSize.s16,
        ),
        child: Column(
          children: [
            CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: AppConstants.cardRatio * 1.2,
                onPageChanged: (index, reason) {
                  context.read<HomeTopAnimeIndicatorCubit>().changeIndex(index);
                },
              ),
              items: widget.animeList.map(
                (anime) {
                  return SeasonNowAnimeItem(
                    anime: anime,
                  );
                },
              ).toList(),
            ),
            const SizedBox(
              height: AppSize.s16,
            ),
            BlocBuilder<HomeTopAnimeIndicatorCubit, int>(
              builder: (context, state) {
                return AnimatedSmoothIndicator(
                  activeIndex: state,
                  count: widget.animeList.length,
                  effect: ExpandingDotsEffect(
                    activeDotColor: context.theme.appColors.primary,
                    dotColor: context.theme.appColors.shimerBase,
                    dotHeight: AppSize.s08,
                    dotWidth: AppSize.s08,
                  ),
                  onDotClicked: (index) {
                    carouselController.animateToPage(index);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
