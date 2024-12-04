import 'package:flutter_my_anime_list/features/search/data/models/search_anime_model.dart';
import 'package:flutter_my_anime_list/features/search/data/models/search_anime_params.dart';
import 'package:flutter_my_anime_list/features/search/domain/repositories/search_anime_repository.dart';
import 'package:flutter_my_anime_list/shared/exceptions/app_exception.dart';
import 'package:flutter_my_anime_list/shared/use_cases/use_case.dart';
import 'package:fpdart/fpdart.dart';

class SearchAnimeUsecase extends UseCase<SearchAnimeModel, SearchAnimeParams> {
  SearchAnimeUsecase(this.repository);
  final SearchAnimeRepository repository;

  @override
  Future<Either<AppException, SearchAnimeModel>> call({
    SearchAnimeParams? params,
  }) async {
    return repository.searchAnime(params!);
  }
}
