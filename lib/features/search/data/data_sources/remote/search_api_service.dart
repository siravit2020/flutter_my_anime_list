import 'package:dio/dio.dart';
import 'package:flutter_my_anime_list/features/search/data/models/search_anime_model.dart';
import 'package:retrofit/retrofit.dart';

part 'search_api_service.g.dart';

@RestApi()
abstract class SearchApiService {
  factory SearchApiService(Dio dio) = _SearchApiService;

  @GET('/anime')
  Future<SearchAnimeModel> search({
    @Query('q') required String query,
    @Query('page') required int page,
    @Query('limit') int? limit,
    @Query('genre') String? genre,
    @Query('score') double? score,
  });
}
