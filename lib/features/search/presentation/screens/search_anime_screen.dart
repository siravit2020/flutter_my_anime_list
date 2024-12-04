import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_anime_list/di/injector.dart';
import 'package:flutter_my_anime_list/features/search/domain/usecase/search_anime_usecase.dart';
import 'package:flutter_my_anime_list/features/search/presentation/bloc/search_anime_bloc.dart';
import 'package:flutter_my_anime_list/features/search/presentation/widgets/search_anime_grid.dart';
import 'package:flutter_my_anime_list/features/search/presentation/widgets/search_anime_grid_shimmer.dart';
import 'package:flutter_my_anime_list/features/search/presentation/widgets/search_anime_list.dart';
import 'package:flutter_my_anime_list/features/search/presentation/widgets/search_anime_list_shimmer.dart';
import 'package:flutter_my_anime_list/features/search/presentation/widgets/search_text_field.dart';
import 'package:flutter_my_anime_list/shared/utils/enums/search_anime_view_type.dart';
import 'package:flutter_my_anime_list/shared/widgets/error_layout.dart';
import 'package:flutter_my_anime_list/shared/widgets/un_available_layout.dart';

class SearchAnimeScreen extends StatelessWidget {
  const SearchAnimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchAnimeBloc(
        injector.get<SearchAnimeUsecase>(),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocConsumer<SearchAnimeBloc, SearchAnimeState>(
          builder: (context, state) {
            final child = state.when(
              initial: (p, v) => const SliverFillRemaining(
                hasScrollBody: false,
                child: UnAvailableLayout(
                  message: 'Search for your favorite anime',
                ),
              ),
              loading: (viewType) {
                if (viewType == SearchAnimeViewType.list) {
                  return const SearchAnimeListShimmer();
                } else {
                  return const SearchAnimeGridShimmer();
                }
              },
              succeed: (searchedAnime, params, viewType) {
                if ((searchedAnime.data ?? []).isEmpty) {
                  return const SliverFillRemaining(
                    hasScrollBody: false,
                    child: UnAvailableLayout(),
                  );
                }
                if (viewType == SearchAnimeViewType.list) {
                  return SearchAnimeList(
                    animeList: searchedAnime.data!,
                  );
                } else {
                  return SearchAnimeGrid(
                    animeList: searchedAnime.data!,
                  );
                }
              },
              failed: (e) => SliverFillRemaining(
                hasScrollBody: false,
                child: ErrorLayout(
                  message: e.message,
                ),
              ),
            );
            return CustomScrollView(
              physics: const _NoImplicitScrollPhysics(),
              slivers: [
                const SearchTextField(),
                child,
              ],
            );
          },
          listener: (context, state) {},
        ),
      ),
    );
  }
}

class _NoImplicitScrollPhysics extends AlwaysScrollableScrollPhysics {
  const _NoImplicitScrollPhysics({super.parent});

  @override
  bool get allowImplicitScrolling => false;

  @override
  _NoImplicitScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return _NoImplicitScrollPhysics(parent: buildParent(ancestor));
  }
}
