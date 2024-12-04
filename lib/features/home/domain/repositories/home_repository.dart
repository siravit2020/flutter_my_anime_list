import 'package:flutter_my_anime_list/features/home/data/models/season_now_model.dart';
import 'package:flutter_my_anime_list/features/home/data/models/season_now_params.dart';
import 'package:flutter_my_anime_list/features/home/data/models/top_anime_model.dart';
import 'package:flutter_my_anime_list/features/home/data/models/top_anime_params.dart';
import 'package:flutter_my_anime_list/shared/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

abstract class HomeRepository {
  Future<Either<AppException, SeasonNowModel>> fetchSeasonNow(
    SeasonNowParams params,
  );

  Future<Either<AppException, TopAnimeModel>> fetchTopAnime(
    TopAnimeParams params,
  );
}
