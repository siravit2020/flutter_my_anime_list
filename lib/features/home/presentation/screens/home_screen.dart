import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_anime_list/app/app_dimens.dart';
import 'package:flutter_my_anime_list/app/app_theme.dart';
import 'package:flutter_my_anime_list/di/injector.dart';
import 'package:flutter_my_anime_list/features/home/domain/usecase/fetch_season_now_usecase.dart';
import 'package:flutter_my_anime_list/features/home/domain/usecase/fetch_top_anime_usecase.dart';
import 'package:flutter_my_anime_list/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter_my_anime_list/features/home/presentation/widgets/home_season_now_anime.dart';
import 'package:flutter_my_anime_list/features/home/presentation/widgets/home_season_now_shimmer.dart';
import 'package:flutter_my_anime_list/features/home/presentation/widgets/home_top_anime.dart';
import 'package:flutter_my_anime_list/features/home/presentation/widgets/home_top_anime_shimmer.dart';
import 'package:flutter_my_anime_list/shared/cubit/app_theme_cubit.dart';
import 'package:flutter_my_anime_list/shared/extensions/build_context_extensions.dart';
import 'package:flutter_my_anime_list/shared/widgets/app_text.dart';
import 'package:flutter_my_anime_list/shared/widgets/error_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) {
        return HomeBloc(
          injector.get<FetchTopAnimeUsecase>(),
          injector.get<FetchSeasonNowUsecase>(),
        )..add(const HomeFetch());
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: AppText.titleLarge(
            'My anime list',
            context: context,
          ),
          backgroundColor: context.theme.appBarTheme.backgroundColor,
          actions: [
            BlocBuilder<AppThemeCubit, AppTheme>(
              builder: (context, state) {
                return Switch(
                  value: state.brightness == Brightness.dark,
                  thumbIcon: WidgetStateProperty.resolveWith<Icon?>(
                    (Set<WidgetState> states) {
                      if (states.contains(WidgetState.selected)) {
                        return const Icon(Icons.dark_mode_rounded);
                      }
                      return const Icon(
                        Icons.light_mode_rounded,
                      ); // All other states will use the default thumbIcon.
                    },
                  ),
                  onChanged: (value) {
                    context.read<AppThemeCubit>().changeTheme();
                  },
                );
              },
            ),
          ],
        ),
        body: SafeArea(
          bottom: false,
          child: BlocConsumer<HomeBloc, HomeState>(
            listener: (context, state) {
              // logger.d(state);5
            },
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox.shrink(),
                loading: () => const Center(
                  child: CustomScrollView(
                    slivers: [
                      HomeSeasonNowShimmer(),
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: AppSize.s16,
                        ),
                      ),
                      HomeTopAnimeShimmer(),
                    ],
                  ),
                ),
                succeed: (seasonNow, top) => CustomScrollView(
                  slivers: [
                    if (seasonNow?.data != null)
                      SliverPadding(
                        padding: const EdgeInsets.only(
                          bottom: AppSize.s16,
                        ),
                        sliver: SeasonNowAnime(
                          animeList: seasonNow!.data!,
                        ),
                      ),
                    if (top?.data != null)
                      SliverPadding(
                        padding: const EdgeInsets.only(
                          bottom: AppSize.s16,
                        ),
                        sliver: TopAnime(
                          animeList: top!.data!,
                        ),
                      ),
                  ],
                ),
                failed: (e) => Center(
                  child: ErrorLayout(
                    message: e.message,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
