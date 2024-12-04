// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginationModel _$PaginationModelFromJson(Map<String, dynamic> json) {
  return _PaginationModel.fromJson(json);
}

/// @nodoc
mixin _$PaginationModel {
  int? get lastVisiblePage => throw _privateConstructorUsedError;
  bool? get hasNextPage => throw _privateConstructorUsedError;
  int? get currentPage => throw _privateConstructorUsedError;
  PaginationItems? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationModelCopyWith<PaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationModelCopyWith<$Res> {
  factory $PaginationModelCopyWith(
          PaginationModel value, $Res Function(PaginationModel) then) =
      _$PaginationModelCopyWithImpl<$Res, PaginationModel>;
  @useResult
  $Res call(
      {int? lastVisiblePage,
      bool? hasNextPage,
      int? currentPage,
      PaginationItems? items});

  $PaginationItemsCopyWith<$Res>? get items;
}

/// @nodoc
class _$PaginationModelCopyWithImpl<$Res, $Val extends PaginationModel>
    implements $PaginationModelCopyWith<$Res> {
  _$PaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastVisiblePage = freezed,
    Object? hasNextPage = freezed,
    Object? currentPage = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      lastVisiblePage: freezed == lastVisiblePage
          ? _value.lastVisiblePage
          : lastVisiblePage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as PaginationItems?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationItemsCopyWith<$Res>? get items {
    if (_value.items == null) {
      return null;
    }

    return $PaginationItemsCopyWith<$Res>(_value.items!, (value) {
      return _then(_value.copyWith(items: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginationModelImplCopyWith<$Res>
    implements $PaginationModelCopyWith<$Res> {
  factory _$$PaginationModelImplCopyWith(_$PaginationModelImpl value,
          $Res Function(_$PaginationModelImpl) then) =
      __$$PaginationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? lastVisiblePage,
      bool? hasNextPage,
      int? currentPage,
      PaginationItems? items});

  @override
  $PaginationItemsCopyWith<$Res>? get items;
}

/// @nodoc
class __$$PaginationModelImplCopyWithImpl<$Res>
    extends _$PaginationModelCopyWithImpl<$Res, _$PaginationModelImpl>
    implements _$$PaginationModelImplCopyWith<$Res> {
  __$$PaginationModelImplCopyWithImpl(
      _$PaginationModelImpl _value, $Res Function(_$PaginationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastVisiblePage = freezed,
    Object? hasNextPage = freezed,
    Object? currentPage = freezed,
    Object? items = freezed,
  }) {
    return _then(_$PaginationModelImpl(
      lastVisiblePage: freezed == lastVisiblePage
          ? _value.lastVisiblePage
          : lastVisiblePage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as PaginationItems?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationModelImpl implements _PaginationModel {
  const _$PaginationModelImpl(
      {this.lastVisiblePage, this.hasNextPage, this.currentPage, this.items});

  factory _$PaginationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationModelImplFromJson(json);

  @override
  final int? lastVisiblePage;
  @override
  final bool? hasNextPage;
  @override
  final int? currentPage;
  @override
  final PaginationItems? items;

  @override
  String toString() {
    return 'PaginationModel(lastVisiblePage: $lastVisiblePage, hasNextPage: $hasNextPage, currentPage: $currentPage, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationModelImpl &&
            (identical(other.lastVisiblePage, lastVisiblePage) ||
                other.lastVisiblePage == lastVisiblePage) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.items, items) || other.items == items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, lastVisiblePage, hasNextPage, currentPage, items);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationModelImplCopyWith<_$PaginationModelImpl> get copyWith =>
      __$$PaginationModelImplCopyWithImpl<_$PaginationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationModelImplToJson(
      this,
    );
  }
}

abstract class _PaginationModel implements PaginationModel {
  const factory _PaginationModel(
      {final int? lastVisiblePage,
      final bool? hasNextPage,
      final int? currentPage,
      final PaginationItems? items}) = _$PaginationModelImpl;

  factory _PaginationModel.fromJson(Map<String, dynamic> json) =
      _$PaginationModelImpl.fromJson;

  @override
  int? get lastVisiblePage;
  @override
  bool? get hasNextPage;
  @override
  int? get currentPage;
  @override
  PaginationItems? get items;
  @override
  @JsonKey(ignore: true)
  _$$PaginationModelImplCopyWith<_$PaginationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationItems _$PaginationItemsFromJson(Map<String, dynamic> json) {
  return _PaginationItems.fromJson(json);
}

/// @nodoc
mixin _$PaginationItems {
  int? get count => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationItemsCopyWith<PaginationItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationItemsCopyWith<$Res> {
  factory $PaginationItemsCopyWith(
          PaginationItems value, $Res Function(PaginationItems) then) =
      _$PaginationItemsCopyWithImpl<$Res, PaginationItems>;
  @useResult
  $Res call({int? count, int? total, int? perPage});
}

/// @nodoc
class _$PaginationItemsCopyWithImpl<$Res, $Val extends PaginationItems>
    implements $PaginationItemsCopyWith<$Res> {
  _$PaginationItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? total = freezed,
    Object? perPage = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationItemsImplCopyWith<$Res>
    implements $PaginationItemsCopyWith<$Res> {
  factory _$$PaginationItemsImplCopyWith(_$PaginationItemsImpl value,
          $Res Function(_$PaginationItemsImpl) then) =
      __$$PaginationItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, int? total, int? perPage});
}

/// @nodoc
class __$$PaginationItemsImplCopyWithImpl<$Res>
    extends _$PaginationItemsCopyWithImpl<$Res, _$PaginationItemsImpl>
    implements _$$PaginationItemsImplCopyWith<$Res> {
  __$$PaginationItemsImplCopyWithImpl(
      _$PaginationItemsImpl _value, $Res Function(_$PaginationItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? total = freezed,
    Object? perPage = freezed,
  }) {
    return _then(_$PaginationItemsImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationItemsImpl implements _PaginationItems {
  const _$PaginationItemsImpl({this.count, this.total, this.perPage});

  factory _$PaginationItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationItemsImplFromJson(json);

  @override
  final int? count;
  @override
  final int? total;
  @override
  final int? perPage;

  @override
  String toString() {
    return 'PaginationItems(count: $count, total: $total, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationItemsImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, total, perPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationItemsImplCopyWith<_$PaginationItemsImpl> get copyWith =>
      __$$PaginationItemsImplCopyWithImpl<_$PaginationItemsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationItemsImplToJson(
      this,
    );
  }
}

abstract class _PaginationItems implements PaginationItems {
  const factory _PaginationItems(
      {final int? count,
      final int? total,
      final int? perPage}) = _$PaginationItemsImpl;

  factory _PaginationItems.fromJson(Map<String, dynamic> json) =
      _$PaginationItemsImpl.fromJson;

  @override
  int? get count;
  @override
  int? get total;
  @override
  int? get perPage;
  @override
  @JsonKey(ignore: true)
  _$$PaginationItemsImplCopyWith<_$PaginationItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
