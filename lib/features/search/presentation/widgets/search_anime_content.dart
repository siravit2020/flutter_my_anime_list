import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_anime_list/features/search/presentation/bloc/search_anime_bloc.dart';
import 'package:flutter_my_anime_list/features/search/presentation/widgets/search_anime_grid.dart';
import 'package:flutter_my_anime_list/features/search/presentation/widgets/search_anime_grid_shimmer.dart';
import 'package:flutter_my_anime_list/features/search/presentation/widgets/search_anime_list.dart';
import 'package:flutter_my_anime_list/features/search/presentation/widgets/search_anime_list_shimmer.dart';
import 'package:flutter_my_anime_list/features/search/presentation/widgets/search_text_field.dart';
import 'package:flutter_my_anime_list/shared/data/models/anime_model.dart';
import 'package:flutter_my_anime_list/shared/utils/enums/search_anime_view_type.dart';
import 'package:flutter_my_anime_list/shared/widgets/error_layout.dart';
import 'package:flutter_my_anime_list/shared/widgets/un_available_layout.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class SearchAnimeContent extends StatefulWidget {
  const SearchAnimeContent({super.key});

  @override
  State<SearchAnimeContent> createState() => _SearchAnimeContentState();
}

class _SearchAnimeContentState extends State<SearchAnimeContent> {
  final PagingController<int, AnimeModel> _pagingController = PagingController(firstPageKey: 1);

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener(
      (pageKey) {
        context.read<SearchAnimeBloc>().add(
              SearchAnimeEvent.loadMore(page: pageKey),
            );
      },
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchAnimeBloc, SearchAnimeState>(
      listener: (context, state) {
        state.maybeMap(
          succeed: (value) {
            if (value.searchedAnime.pagination!.currentPage == 1) {
              _pagingController.itemList = [];
            }
            final isLastPage = !value.searchedAnime.pagination!.hasNextPage!;
            if (isLastPage) {
              _pagingController.appendLastPage(value.searchedAnime.data ?? []);
            } else {
              _pagingController.appendPage(value.searchedAnime.data ?? [], value.params.page + 1);
            }
          },
          failed: (value) {
            _pagingController.error = value.exception.message;
          },
          orElse: () {},
        );
      },
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
                pagingController: _pagingController,
              );
            } else {
              return SearchAnimeGrid(
                pagingController: _pagingController,
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
            SearchHeader(
              onChanged: (value) {
                context.read<SearchAnimeBloc>().add(
                      SearchAnimeEvent.queryChanged(value),
                    );
              },
              onSearch: () {
                context.read<SearchAnimeBloc>().add(
                      const SearchAnimeEvent.search(),
                    );
              },
              onViewTypeChanged: (value) {
                context.read<SearchAnimeBloc>().add(
                      SearchAnimeEvent.viewTypeChanged(value.first),
                    );
              },
            ),
            child,
          ],
        );
      },
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
