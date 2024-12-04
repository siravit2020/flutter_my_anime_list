import 'package:flutter_my_anime_list/shared/data/models/anime_model.dart';
import 'package:flutter_my_anime_list/shared/data/models/pagination_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'season_now_model.freezed.dart';
part 'season_now_model.g.dart';

@freezed
class SeasonNowModel with _$SeasonNowModel {
  const factory SeasonNowModel({
    PaginationModel? pagination,
    List<AnimeModel>? data,
  }) = _SeasonNowModel;

  factory SeasonNowModel.fromJson(Map<String, dynamic> json) =>
      _$SeasonNowModelFromJson(json);
}
