import 'package:flutter_my_anime_list/features/home/data/models/top_anime_model.dart';
import 'package:flutter_my_anime_list/features/home/data/models/top_anime_params.dart';
import 'package:flutter_my_anime_list/features/home/domain/repositories/home_repository.dart';
import 'package:flutter_my_anime_list/shared/exceptions/app_exception.dart';
import 'package:flutter_my_anime_list/shared/use_cases/use_case.dart';
import 'package:fpdart/fpdart.dart';

class FetchTopAnimeUsecase implements UseCase<TopAnimeModel, TopAnimeParams> {
  FetchTopAnimeUsecase(this._homeRepository);
  final HomeRepository _homeRepository;

  @override
  Future<Either<AppException, TopAnimeModel>> call({
    TopAnimeParams? params,
  }) {
    return _homeRepository.fetchTopAnime(params!);
  }
}
