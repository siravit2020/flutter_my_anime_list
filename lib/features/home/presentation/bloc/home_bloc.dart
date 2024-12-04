import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_anime_list/features/home/data/models/season_now_model.dart';
import 'package:flutter_my_anime_list/features/home/data/models/season_now_params.dart';
import 'package:flutter_my_anime_list/features/home/data/models/top_anime_model.dart';
import 'package:flutter_my_anime_list/features/home/data/models/top_anime_params.dart';
import 'package:flutter_my_anime_list/features/home/domain/usecase/fetch_season_now_usecase.dart';
import 'package:flutter_my_anime_list/features/home/domain/usecase/fetch_top_anime_usecase.dart';
import 'package:flutter_my_anime_list/shared/exceptions/app_exception.dart';
import 'package:flutter_my_anime_list/shared/log/app_logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this.fetchTopAnimeUsecase,
    this.fetchSeasonNowUsecase,
  ) : super(const HomeInitial()) {
    on<HomeFetch>(_onHomeFetched);
  }
  final FetchTopAnimeUsecase fetchTopAnimeUsecase;
  final FetchSeasonNowUsecase fetchSeasonNowUsecase;

  FutureOr<void> _onHomeFetched(
    HomeEvent event,
    Emitter<HomeState> emitter,
  ) async {
    emitter(const HomeLoading());

    final seasonNow = await _fetchSeasonNow();
    final topAnime = await _fetchTopAnime();

    if (topAnime == null && seasonNow == null) {
      emitter(
        const HomeFailed(
          AppException(
            message: 'Failed to fetch data',
          ),
        ),
      );
    } else {
      emitter(
        HomeSucceed(
          seasonNow: seasonNow,
          topAnime: topAnime,
        ),
      );
    }
  }

  Future<SeasonNowModel?> _fetchSeasonNow() async {
    final seasonNowEither = await fetchSeasonNowUsecase.call(
      params: SeasonNowParams(
        page: 1,
        limit: 10,
      ),
    );

    return seasonNowEither.fold(
      (l) {
        logger.e(l.message);
        return null;
      },
      (r) {
        return r;
      },
    );
  }

  Future<TopAnimeModel?> _fetchTopAnime() async {
    final topAnimeEither = await fetchTopAnimeUsecase.call(
      params: TopAnimeParams(
        page: 1,
        limit: 10,
      ),
    );

    return topAnimeEither.fold(
      (l) {
        logger.e(l.message);
        return null;
      },
      (r) {
        return r;
      },
    );
  }
}
