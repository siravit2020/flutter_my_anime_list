import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_my_anime_list/features/home/data/models/season_now_model.dart';
import 'package:flutter_my_anime_list/features/home/data/models/top_anime_model.dart';
import 'package:flutter_my_anime_list/features/home/domain/usecase/fetch_season_now_usecase.dart';
import 'package:flutter_my_anime_list/features/home/domain/usecase/fetch_top_anime_usecase.dart';
import 'package:flutter_my_anime_list/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter_my_anime_list/shared/exceptions/app_exception.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

const testTopAnimeModel = TopAnimeModel();
const testSeasonNowModel = SeasonNowModel();

class MockFetchTopAnimeUsecase extends Mock implements FetchTopAnimeUsecase {}

class MockFetchSeasonNowUsecase extends Mock implements FetchSeasonNowUsecase {}

void main() {
  group(HomeBloc, () {
    late HomeBloc homeBloc;
    late MockFetchTopAnimeUsecase mockFetchTopAnimeUsecase;
    late MockFetchSeasonNowUsecase mockFetchSeasonNowUsecase;

    setUp(() {
      mockFetchTopAnimeUsecase = MockFetchTopAnimeUsecase();
      mockFetchSeasonNowUsecase = MockFetchSeasonNowUsecase();

      homeBloc = HomeBloc(
        mockFetchTopAnimeUsecase,
        mockFetchSeasonNowUsecase,
      );
    });

    test('initial state is initial', () {
      expect(homeBloc.state, equals(const HomeState.initial()));
    });

    blocTest<HomeBloc, HomeState>(
      'emits [loading, succeed] when fetch is called',
      build: () {
        when(
          () => mockFetchSeasonNowUsecase.call(params: any(named: 'params')),
        ).thenAnswer(
          (_) async => const Right(testSeasonNowModel),
        );
        when(
          () => mockFetchTopAnimeUsecase.call(params: any(named: 'params')),
        ).thenAnswer(
          (_) async => const Right(testTopAnimeModel),
        );
        return homeBloc;
      },
      act: (bloc) => bloc.add(const HomeEvent.fetch()),
      expect: () => [
        const HomeState.loading(),
        const HomeState.succeed(
          seasonNow: testSeasonNowModel,
          topAnime: testTopAnimeModel,
        ),
      ],
    );

    const exception = AppException(message: 'Failed to fetch data');

    blocTest<HomeBloc, HomeState>(
      'emits [loading, failed] when fetch is called',
      build: () {
        when(
          () => mockFetchSeasonNowUsecase.call(params: any(named: 'params')),
        ).thenAnswer(
          (_) async => const Left(exception),
        );
        when(
          () => mockFetchTopAnimeUsecase.call(params: any(named: 'params')),
        ).thenAnswer(
          (_) async => const Left(exception),
        );
        return homeBloc;
      },
      act: (bloc) => bloc.add(const HomeEvent.fetch()),
      expect: () => [
        const HomeState.loading(),
        const HomeState.failed(
          AppException(
            message: 'Failed to fetch data',
          ),
        ),
      ],
    );
  });
}
