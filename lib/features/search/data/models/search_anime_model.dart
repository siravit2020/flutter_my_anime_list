import 'package:flutter_my_anime_list/shared/data/models/anime_model.dart';
import 'package:flutter_my_anime_list/shared/data/models/pagination_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_anime_model.freezed.dart';
part 'search_anime_model.g.dart';

@freezed
class SearchAnimeModel with _$SearchAnimeModel {
  const factory SearchAnimeModel({
    PaginationModel? pagination,
    List<AnimeModel>? data,
  }) = _SearchAnimeModel;

  factory SearchAnimeModel.fromJson(Map<String, dynamic> json) => _$SearchAnimeModelFromJson(json);
}
