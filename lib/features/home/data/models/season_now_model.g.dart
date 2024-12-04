// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_now_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeasonNowModelImpl _$$SeasonNowModelImplFromJson(Map<String, dynamic> json) =>
    _$SeasonNowModelImpl(
      pagination: json['pagination'] == null
          ? null
          : PaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AnimeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SeasonNowModelImplToJson(
        _$SeasonNowModelImpl instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };
