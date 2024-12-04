import 'package:flutter_my_anime_list/shared/data/models/anime_model.dart';
import 'package:flutter_my_anime_list/shared/data/models/pagination_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_anime_model.freezed.dart';
part 'top_anime_model.g.dart';

@freezed
class TopAnimeModel with _$TopAnimeModel {
  const factory TopAnimeModel({
    PaginationModel? pagination,
    List<AnimeModel>? data,
  }) = _TopAnimeModel;

  factory TopAnimeModel.fromJson(Map<String, dynamic> json) =>
      _$TopAnimeModelFromJson(json);
}
