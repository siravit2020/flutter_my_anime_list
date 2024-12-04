class SearchAnimeParams {
  SearchAnimeParams({
    required this.query,
    required this.page,
    this.limit,
    this.score,
    this.genre,
  });
  final String query;
  final int page;
  final int? limit;
  final double? score;
  final List<int>? genre;

  SearchAnimeParams copyWith({
    String? query,
    int? page,
    int? limit,
    double? score,
    List<int>? genre,
  }) {
    return SearchAnimeParams(
      query: query ?? this.query,
      page: page ?? this.page,
      limit: limit ?? this.limit,
      score: score ?? this.score,
      genre: genre ?? this.genre,
    );
  }
}
