// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_anime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopAnimeModelImpl _$$TopAnimeModelImplFromJson(Map<String, dynamic> json) =>
    _$TopAnimeModelImpl(
      pagination: json['pagination'] == null
          ? null
          : PaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AnimeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopAnimeModelImplToJson(_$TopAnimeModelImpl instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };
