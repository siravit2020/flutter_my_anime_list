import 'package:flutter_my_anime_list/features/home/data/data_sources/remote/home_api_service.dart';
import 'package:flutter_my_anime_list/features/home/data/repositories/home_repository_impl.dart';
import 'package:flutter_my_anime_list/features/home/domain/repositories/home_repository.dart';
import 'package:flutter_my_anime_list/features/home/domain/usecase/fetch_season_now_usecase.dart';
import 'package:flutter_my_anime_list/features/home/domain/usecase/fetch_top_anime_usecase.dart';
import 'package:flutter_my_anime_list/features/search/data/data_sources/remote/search_api_service.dart';
import 'package:flutter_my_anime_list/features/search/data/repositories/search_anime_repository_impl.dart';
import 'package:flutter_my_anime_list/features/search/domain/repositories/search_anime_repository.dart';
import 'package:flutter_my_anime_list/features/search/domain/usecase/search_anime_usecase.dart';
import 'package:flutter_my_anime_list/shared/local/cache/local_db.dart';
import 'package:flutter_my_anime_list/shared/local/cache/local_db_impl.dart';
import 'package:flutter_my_anime_list/shared/local/shared_prefs/shared_pref.dart';
import 'package:flutter_my_anime_list/shared/local/shared_prefs/shared_pref_impl.dart';
import 'package:flutter_my_anime_list/shared/network/dio_service.dart';
import 'package:flutter_my_anime_list/shared/network/dio_service_impl.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  await initSingletons();
  provideDataSources();
  provideRepositories();
  provideUseCases();
}

Future<void> initSingletons() async {
  //Services
  injector
    ..registerLazySingleton<LocalDb>(LocalDbImpl.new)
    ..registerLazySingleton<DioService>(DioServiceImpl.new)
    ..registerLazySingleton<SharedPref>(SharedPrefImpl.new);

  await injector<DioService>().initDio();
}

void provideDataSources() {
  injector
    ..registerFactory<SearchApiService>(
      () => SearchApiService(
        injector.get<DioService>().getDio(),
      ),
    )
    ..registerFactory<HomeApiService>(
      () => HomeApiService(
        injector.get<DioService>().getDio(),
      ),
    );
}

void provideRepositories() {
  injector
    ..registerFactory<HomeRepository>(
      () => HomeRepositoryImpl(injector.get<HomeApiService>()),
    )
    ..registerFactory<SearchAnimeRepository>(
      () => SearchAnimeRepositoryImpl(injector.get<SearchApiService>()),
    );
}

void provideUseCases() {
  injector
    ..registerFactory<FetchSeasonNowUsecase>(
      () => FetchSeasonNowUsecase(injector.get<HomeRepository>()),
    )
    ..registerFactory<FetchTopAnimeUsecase>(
      () => FetchTopAnimeUsecase(injector.get<HomeRepository>()),
    )
    ..registerFactory<SearchAnimeUsecase>(
      () => SearchAnimeUsecase(injector.get<SearchAnimeRepository>()),
    );
}
