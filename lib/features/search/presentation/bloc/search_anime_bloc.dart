import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_anime_list/features/search/data/models/search_anime_model.dart';
import 'package:flutter_my_anime_list/features/search/data/models/search_anime_params.dart';
import 'package:flutter_my_anime_list/features/search/domain/usecase/search_anime_usecase.dart';
import 'package:flutter_my_anime_list/shared/exceptions/app_exception.dart';
import 'package:flutter_my_anime_list/shared/utils/enums/search_anime_view_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_anime_event.dart';
part 'search_anime_state.dart';
part 'search_anime_bloc.freezed.dart';

class SearchAnimeBloc extends Bloc<SearchAnimeEvent, SearchAnimeState> {
  SearchAnimeBloc(this.searchAnimeUsecase)
      : super(
          SearchAnimeState.initial(
            params: SearchAnimeParams(
              query: '',
              page: 1,
            ),
            viewType: SearchAnimeViewType.list,
          ),
        ) {
    on<SearchAnimeSearch>(_searchAnime);
    on<SearchAnimeQueryChanged>(_queryChanged);
    on<SearchAnimeMaximumChanged>(_maximumChanged);
    on<SearchAnimeScoreChanged>(_scoreChanged);
    on<SearchAnimeGenreChanged>(_genreChanged);
    on<SearchAnimeViewTypeChanged>(_viewTypeChanged);
  }

  final SearchAnimeUsecase searchAnimeUsecase;

  FutureOr<void> _searchAnime(
    SearchAnimeEvent event,
    Emitter<SearchAnimeState> emitter,
  ) async {
    await state.maybeMap(
      initial: (value) async {
        emitter(
          SearchAnimeState.loading(
            viewType: value.viewType,
          ),
        );
        await _searchAnimeWithParams(
          parms: value.params,
          emitter: emitter,
        );
      },
      succeed: (value) async {
        emitter(
          SearchAnimeState.loading(
            viewType: value.viewType,
          ),
        );
        await _searchAnimeWithParams(
          parms: value.params,
          emitter: emitter,
        );
      },
      orElse: () {
        emitter(
          const SearchAnimeState.failed(
            AppException(message: 'Failed to search anime'),
          ),
        );
      },
    );
  }

  FutureOr<void> _queryChanged(
    SearchAnimeQueryChanged event,
    Emitter<SearchAnimeState> emitter,
  ) {
    state.maybeMap(
      succeed: (value) {
        emitter(
          value.copyWith(
            params: value.params.copyWith(
              query: event.query,
            ),
          ),
        );
      },
      orElse: () {},
    );
  }

  FutureOr<void> _maximumChanged(
    SearchAnimeMaximumChanged event,
    Emitter<SearchAnimeState> emitter,
  ) {
    state.maybeMap(
      succeed: (value) {
        emitter(
          value.copyWith(
            params: value.params.copyWith(
              limit: event.maximum,
            ),
          ),
        );
      },
      orElse: () {},
    );
  }

  FutureOr<void> _scoreChanged(
    SearchAnimeScoreChanged event,
    Emitter<SearchAnimeState> emitter,
  ) {
    state.maybeMap(
      succeed: (value) {
        emitter(
          value.copyWith(
            params: value.params.copyWith(
              score: event.score,
            ),
          ),
        );
      },
      orElse: () {},
    );
  }

  FutureOr<void> _genreChanged(
    SearchAnimeGenreChanged event,
    Emitter<SearchAnimeState> emitter,
  ) {
    state.maybeMap(
      succeed: (value) {
        emitter(
          value.copyWith(
            params: value.params.copyWith(
              genre: event.genre,
            ),
          ),
        );
      },
      orElse: () {},
    );
  }

  FutureOr<void> _viewTypeChanged(
    SearchAnimeViewTypeChanged event,
    Emitter<SearchAnimeState> emit,
  ) {
    state.maybeMap(
      initial: (value) {
        emit(
          value.copyWith(
            viewType: event.viewType,
          ),
        );
      },
      loading: (value) {
        emit(
          value.copyWith(
            viewType: event.viewType,
          ),
        );
      },
      succeed: (value) {
        emit(
          value.copyWith(
            viewType: event.viewType,
          ),
        );
      },
      orElse: () {},
    );
  }

  Future<void> _searchAnimeWithParams({
    required SearchAnimeParams parms,
    required Emitter<SearchAnimeState> emitter,
  }) async {
    final result = await searchAnimeUsecase.call(
      params: parms,
    );
    result.fold(
      (l) {
        emitter(SearchAnimeState.failed(l));
      },
      (r) {
        emitter(
          SearchAnimeState.succeed(
            searchedAnime: r,
            params: parms,
            viewType: state.maybeMap(
              initial: (value) => value.viewType,
              loading: (value) => value.viewType,
              succeed: (value) => value.viewType,
              orElse: () => SearchAnimeViewType.list,
            ),
          ),
        );
      },
    );
  }
}
