// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationModelImpl _$$PaginationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationModelImpl(
      lastVisiblePage: (json['last_visible_page'] as num?)?.toInt(),
      hasNextPage: json['has_next_page'] as bool?,
      currentPage: (json['current_page'] as num?)?.toInt(),
      items: json['items'] == null
          ? null
          : PaginationItems.fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaginationModelImplToJson(
        _$PaginationModelImpl instance) =>
    <String, dynamic>{
      'last_visible_page': instance.lastVisiblePage,
      'has_next_page': instance.hasNextPage,
      'current_page': instance.currentPage,
      'items': instance.items,
    };

_$PaginationItemsImpl _$$PaginationItemsImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationItemsImpl(
      count: (json['count'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaginationItemsImplToJson(
        _$PaginationItemsImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'total': instance.total,
      'per_page': instance.perPage,
    };
