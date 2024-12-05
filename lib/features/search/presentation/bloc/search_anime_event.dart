part of 'search_anime_bloc.dart';

@freezed
sealed class SearchAnimeEvent with _$SearchAnimeEvent {
  const factory SearchAnimeEvent.search() = SearchAnimeSearch;
  const factory SearchAnimeEvent.loadMore({
    int? page,
  }) = SearchAnimeLoadMore;
  const factory SearchAnimeEvent.queryChanged(String query) = SearchAnimeQueryChanged;
  const factory SearchAnimeEvent.scoreChanged(double score) = SearchAnimeScoreChanged;
  const factory SearchAnimeEvent.genreChanged(List<int> genre) = SearchAnimeGenreChanged;
  const factory SearchAnimeEvent.viewTypeChanged(SearchAnimeViewType viewType) = SearchAnimeViewTypeChanged;
}
