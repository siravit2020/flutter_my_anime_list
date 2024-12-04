import 'package:flutter_my_anime_list/features/search/data/data_sources/remote/search_api_service.dart';
import 'package:flutter_my_anime_list/features/search/data/models/search_anime_model.dart';
import 'package:flutter_my_anime_list/features/search/data/models/search_anime_params.dart';
import 'package:flutter_my_anime_list/features/search/domain/repositories/search_anime_repository.dart';
import 'package:flutter_my_anime_list/shared/exceptions/app_exception.dart';
import 'package:flutter_my_anime_list/shared/network/exception_handler.dart';
import 'package:fpdart/fpdart.dart';

class SearchAnimeRepositoryImpl extends SearchAnimeRepository {
  SearchAnimeRepositoryImpl(
    this._searchApiService,
  );
  final SearchApiService _searchApiService;

  @override
  Future<Either<AppException, SearchAnimeModel>> searchAnime(
    SearchAnimeParams params,
  ) async {
    try {
      final response = await _searchApiService.search(
        query: params.query,
        page: params.page,
        limit: params.limit,
        score: params.score,
        genre: params.genre?.join(','),
      );
      return Right(response);
    } catch (e) {
      return Left(
        ExceptionHandler.handle(e),
      );
    }
  }
}
