import 'package:flutter_my_anime_list/features/home/data/models/season_now_model.dart';
import 'package:flutter_my_anime_list/features/home/data/models/season_now_params.dart';
import 'package:flutter_my_anime_list/features/home/domain/repositories/home_repository.dart';
import 'package:flutter_my_anime_list/features/home/domain/usecase/fetch_season_now_usecase.dart';
import 'package:flutter_my_anime_list/shared/exceptions/app_exception.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MonckHomeRepository extends Mock implements HomeRepository {}

void main() {
  late FetchSeasonNowUsecase fetchSeasonNowUsecase;
  late MonckHomeRepository monckHomeRepository;

  setUp(
    () {
      monckHomeRepository = MonckHomeRepository();
      fetchSeasonNowUsecase = FetchSeasonNowUsecase(
        monckHomeRepository,
      );
    },
  );

  const testSeasonNowModel = SeasonNowModel();
  final testSeasonNowParams = SeasonNowParams(
    page: 1,
    limit: 10,
  );

  test('should return season now model when call', () async {
    // arrange
    when(() => monckHomeRepository.fetchSeasonNow(testSeasonNowParams)).thenAnswer(
      (_) async => const Right(testSeasonNowModel),
    );
    // act
    final result = await fetchSeasonNowUsecase.call(
      params: testSeasonNowParams,
    );
    // assert
    expect(result, const Right<AppException, SeasonNowModel>(testSeasonNowModel));
    verify(() => monckHomeRepository.fetchSeasonNow(testSeasonNowParams));
  });
}
