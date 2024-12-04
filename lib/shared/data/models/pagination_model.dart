import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_model.freezed.dart';
part 'pagination_model.g.dart';

@freezed
class PaginationModel with _$PaginationModel {
  const factory PaginationModel({
    int? lastVisiblePage,
    bool? hasNextPage,
    int? currentPage,
    PaginationItems? items,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}

@freezed
class PaginationItems with _$PaginationItems {
  const factory PaginationItems({
    int? count,
    int? total,
    int? perPage,
  }) = _PaginationItems;

  factory PaginationItems.fromJson(Map<String, dynamic> json) =>
      _$PaginationItemsFromJson(json);
}
