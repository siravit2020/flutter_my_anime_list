import 'package:flutter_my_anime_list/features/search/data/models/search_anime_model.dart';
import 'package:flutter_my_anime_list/features/search/data/models/search_anime_params.dart';
import 'package:flutter_my_anime_list/shared/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

abstract class SearchAnimeRepository {
  Future<Either<AppException, SearchAnimeModel>> searchAnime(
    SearchAnimeParams params,
  );
}
