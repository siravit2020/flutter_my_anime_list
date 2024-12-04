// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_anime_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchAnimeModel _$SearchAnimeModelFromJson(Map<String, dynamic> json) {
  return _SearchAnimeModel.fromJson(json);
}

/// @nodoc
mixin _$SearchAnimeModel {
  PaginationModel? get pagination => throw _privateConstructorUsedError;
  List<AnimeModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchAnimeModelCopyWith<SearchAnimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAnimeModelCopyWith<$Res> {
  factory $SearchAnimeModelCopyWith(
          SearchAnimeModel value, $Res Function(SearchAnimeModel) then) =
      _$SearchAnimeModelCopyWithImpl<$Res, SearchAnimeModel>;
  @useResult
  $Res call({PaginationModel? pagination, List<AnimeModel>? data});

  $PaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$SearchAnimeModelCopyWithImpl<$Res, $Val extends SearchAnimeModel>
    implements $SearchAnimeModelCopyWith<$Res> {
  _$SearchAnimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AnimeModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationModelCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationModelCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchAnimeModelImplCopyWith<$Res>
    implements $SearchAnimeModelCopyWith<$Res> {
  factory _$$SearchAnimeModelImplCopyWith(_$SearchAnimeModelImpl value,
          $Res Function(_$SearchAnimeModelImpl) then) =
      __$$SearchAnimeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaginationModel? pagination, List<AnimeModel>? data});

  @override
  $PaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$SearchAnimeModelImplCopyWithImpl<$Res>
    extends _$SearchAnimeModelCopyWithImpl<$Res, _$SearchAnimeModelImpl>
    implements _$$SearchAnimeModelImplCopyWith<$Res> {
  __$$SearchAnimeModelImplCopyWithImpl(_$SearchAnimeModelImpl _value,
      $Res Function(_$SearchAnimeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SearchAnimeModelImpl(
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AnimeModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchAnimeModelImpl implements _SearchAnimeModel {
  const _$SearchAnimeModelImpl({this.pagination, final List<AnimeModel>? data})
      : _data = data;

  factory _$SearchAnimeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchAnimeModelImplFromJson(json);

  @override
  final PaginationModel? pagination;
  final List<AnimeModel>? _data;
  @override
  List<AnimeModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchAnimeModel(pagination: $pagination, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAnimeModelImpl &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, pagination, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAnimeModelImplCopyWith<_$SearchAnimeModelImpl> get copyWith =>
      __$$SearchAnimeModelImplCopyWithImpl<_$SearchAnimeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchAnimeModelImplToJson(
      this,
    );
  }
}

abstract class _SearchAnimeModel implements SearchAnimeModel {
  const factory _SearchAnimeModel(
      {final PaginationModel? pagination,
      final List<AnimeModel>? data}) = _$SearchAnimeModelImpl;

  factory _SearchAnimeModel.fromJson(Map<String, dynamic> json) =
      _$SearchAnimeModelImpl.fromJson;

  @override
  PaginationModel? get pagination;
  @override
  List<AnimeModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchAnimeModelImplCopyWith<_$SearchAnimeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
