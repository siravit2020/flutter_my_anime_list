part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.succeed({
    SeasonNowModel? seasonNow,
    TopAnimeModel? topAnime,
  }) = HomeSucceed;
  const factory HomeState.failed(AppException exception) = HomeFailed;
}
