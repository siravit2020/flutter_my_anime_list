// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_anime_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopAnimeModel _$TopAnimeModelFromJson(Map<String, dynamic> json) {
  return _TopAnimeModel.fromJson(json);
}

/// @nodoc
mixin _$TopAnimeModel {
  PaginationModel? get pagination => throw _privateConstructorUsedError;
  List<AnimeModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopAnimeModelCopyWith<TopAnimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopAnimeModelCopyWith<$Res> {
  factory $TopAnimeModelCopyWith(
          TopAnimeModel value, $Res Function(TopAnimeModel) then) =
      _$TopAnimeModelCopyWithImpl<$Res, TopAnimeModel>;
  @useResult
  $Res call({PaginationModel? pagination, List<AnimeModel>? data});

  $PaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$TopAnimeModelCopyWithImpl<$Res, $Val extends TopAnimeModel>
    implements $TopAnimeModelCopyWith<$Res> {
  _$TopAnimeModelCopyWithImpl(this._value, this._then);

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
abstract class _$$TopAnimeModelImplCopyWith<$Res>
    implements $TopAnimeModelCopyWith<$Res> {
  factory _$$TopAnimeModelImplCopyWith(
          _$TopAnimeModelImpl value, $Res Function(_$TopAnimeModelImpl) then) =
      __$$TopAnimeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaginationModel? pagination, List<AnimeModel>? data});

  @override
  $PaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$TopAnimeModelImplCopyWithImpl<$Res>
    extends _$TopAnimeModelCopyWithImpl<$Res, _$TopAnimeModelImpl>
    implements _$$TopAnimeModelImplCopyWith<$Res> {
  __$$TopAnimeModelImplCopyWithImpl(
      _$TopAnimeModelImpl _value, $Res Function(_$TopAnimeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TopAnimeModelImpl(
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
class _$TopAnimeModelImpl implements _TopAnimeModel {
  const _$TopAnimeModelImpl({this.pagination, final List<AnimeModel>? data})
      : _data = data;

  factory _$TopAnimeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopAnimeModelImplFromJson(json);

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
    return 'TopAnimeModel(pagination: $pagination, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopAnimeModelImpl &&
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
  _$$TopAnimeModelImplCopyWith<_$TopAnimeModelImpl> get copyWith =>
      __$$TopAnimeModelImplCopyWithImpl<_$TopAnimeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopAnimeModelImplToJson(
      this,
    );
  }
}

abstract class _TopAnimeModel implements TopAnimeModel {
  const factory _TopAnimeModel(
      {final PaginationModel? pagination,
      final List<AnimeModel>? data}) = _$TopAnimeModelImpl;

  factory _TopAnimeModel.fromJson(Map<String, dynamic> json) =
      _$TopAnimeModelImpl.fromJson;

  @override
  PaginationModel? get pagination;
  @override
  List<AnimeModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$TopAnimeModelImplCopyWith<_$TopAnimeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
