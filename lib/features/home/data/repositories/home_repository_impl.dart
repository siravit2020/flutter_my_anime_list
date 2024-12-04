import 'package:flutter_my_anime_list/features/home/data/data_sources/remote/home_api_service.dart';
import 'package:flutter_my_anime_list/features/home/data/models/season_now_model.dart';
import 'package:flutter_my_anime_list/features/home/data/models/season_now_params.dart';
import 'package:flutter_my_anime_list/features/home/data/models/top_anime_model.dart';
import 'package:flutter_my_anime_list/features/home/data/models/top_anime_params.dart';
import 'package:flutter_my_anime_list/features/home/domain/repositories/home_repository.dart';
import 'package:flutter_my_anime_list/shared/exceptions/app_exception.dart';
import 'package:flutter_my_anime_list/shared/network/exception_handler.dart';
import 'package:fpdart/fpdart.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(
    this._homeApiService,
  );
  final HomeApiService _homeApiService;
  // final HomeApiServiceLocal _homeApiServiceLocal;

  @override
  Future<Either<AppException, SeasonNowModel>> fetchSeasonNow(
    SeasonNowParams params,
  ) async {
    try {
      final response = await _homeApiService.getSeasonNow(
        page: params.page,
        limit: params.limit,
      );
      return Right(response);
    } catch (e) {
      return Left(
        ExceptionHandler.handle(e),
      );
    }
  }

  @override
  Future<Either<AppException, TopAnimeModel>> fetchTopAnime(
    TopAnimeParams params,
  ) async {
    try {
      final response = await _homeApiService.getTopAnime(
        page: params.page,
        limit: params.limit,
      );
      return Right(response);
    } catch (e) {
      return Left(
        ExceptionHandler.handle(e),
      );
    }
  }
}
