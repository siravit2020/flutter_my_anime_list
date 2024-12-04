// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_anime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchAnimeModelImpl _$$SearchAnimeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchAnimeModelImpl(
      pagination: json['pagination'] == null
          ? null
          : PaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AnimeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchAnimeModelImplToJson(
        _$SearchAnimeModelImpl instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };
