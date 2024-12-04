part of 'search_anime_bloc.dart';

@freezed
sealed class SearchAnimeState with _$SearchAnimeState {
  const factory SearchAnimeState.initial({
    required SearchAnimeParams params,
    required SearchAnimeViewType viewType,
  }) = SearchAnimeBlocInitial;
  const factory SearchAnimeState.loading({
    required SearchAnimeViewType viewType,
  }) = SearchAnimeBlocLoading;
  const factory SearchAnimeState.succeed({
    required SearchAnimeModel searchedAnime,
    required SearchAnimeParams params,
    required SearchAnimeViewType viewType,
  }) = SearchAnimeSucceed;
  const factory SearchAnimeState.failed(AppException exception) = SearchAnimeFailed;
}
