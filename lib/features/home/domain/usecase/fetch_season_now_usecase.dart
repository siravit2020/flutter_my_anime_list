import 'package:flutter_my_anime_list/features/home/data/models/season_now_model.dart';
import 'package:flutter_my_anime_list/features/home/data/models/season_now_params.dart';
import 'package:flutter_my_anime_list/features/home/domain/repositories/home_repository.dart';
import 'package:flutter_my_anime_list/shared/exceptions/app_exception.dart';
import 'package:flutter_my_anime_list/shared/use_cases/use_case.dart';
import 'package:fpdart/fpdart.dart';

class FetchSeasonNowUsecase implements UseCase<SeasonNowModel, SeasonNowParams> {
  FetchSeasonNowUsecase(this._homeRepository);
  final HomeRepository _homeRepository;

  @override
  Future<Either<AppException, SeasonNowModel>> call({
    SeasonNowParams? params,
  }) async {
    return _homeRepository.fetchSeasonNow(params!);
  }
}
