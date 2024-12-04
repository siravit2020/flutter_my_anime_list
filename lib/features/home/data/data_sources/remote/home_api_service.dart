import 'package:dio/dio.dart';
import 'package:flutter_my_anime_list/features/home/data/models/season_now_model.dart';
import 'package:flutter_my_anime_list/features/home/data/models/top_anime_model.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api_service.g.dart';

@RestApi()
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET('/seasons/now')
  Future<SeasonNowModel> getSeasonNow({
    @Query('page') required int page,
    @Query('limit') int? limit,
  });

  @GET('/top/anime')
  Future<TopAnimeModel> getTopAnime({
    @Query('page') required int page,
    @Query('limit') int? limit,
  });
}
