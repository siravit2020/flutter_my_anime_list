// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_anime_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchAnimeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() search,
    required TResult Function(int? page) loadMore,
    required TResult Function(String query) queryChanged,
    required TResult Function(double score) scoreChanged,
    required TResult Function(List<int> genre) genreChanged,
    required TResult Function(SearchAnimeViewType viewType) viewTypeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? search,
    TResult? Function(int? page)? loadMore,
    TResult? Function(String query)? queryChanged,
    TResult? Function(double score)? scoreChanged,
    TResult? Function(List<int> genre)? genreChanged,
    TResult? Function(SearchAnimeViewType viewType)? viewTypeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? search,
    TResult Function(int? page)? loadMore,
    TResult Function(String query)? queryChanged,
    TResult Function(double score)? scoreChanged,
    TResult Function(List<int> genre)? genreChanged,
    TResult Function(SearchAnimeViewType viewType)? viewTypeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchAnimeSearch value) search,
    required TResult Function(SearchAnimeLoadMore value) loadMore,
    required TResult Function(SearchAnimeQueryChanged value) queryChanged,
    required TResult Function(SearchAnimeScoreChanged value) scoreChanged,
    required TResult Function(SearchAnimeGenreChanged value) genreChanged,
    required TResult Function(SearchAnimeViewTypeChanged value) viewTypeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchAnimeSearch value)? search,
    TResult? Function(SearchAnimeLoadMore value)? loadMore,
    TResult? Function(SearchAnimeQueryChanged value)? queryChanged,
    TResult? Function(SearchAnimeScoreChanged value)? scoreChanged,
    TResult? Function(SearchAnimeGenreChanged value)? genreChanged,
    TResult? Function(SearchAnimeViewTypeChanged value)? viewTypeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchAnimeSearch value)? search,
    TResult Function(SearchAnimeLoadMore value)? loadMore,
    TResult Function(SearchAnimeQueryChanged value)? queryChanged,
    TResult Function(SearchAnimeScoreChanged value)? scoreChanged,
    TResult Function(SearchAnimeGenreChanged value)? genreChanged,
    TResult Function(SearchAnimeViewTypeChanged value)? viewTypeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAnimeEventCopyWith<$Res> {
  factory $SearchAnimeEventCopyWith(
          SearchAnimeEvent value, $Res Function(SearchAnimeEvent) then) =
      _$SearchAnimeEventCopyWithImpl<$Res, SearchAnimeEvent>;
}

/// @nodoc
class _$SearchAnimeEventCopyWithImpl<$Res, $Val extends SearchAnimeEvent>
    implements $SearchAnimeEventCopyWith<$Res> {
  _$SearchAnimeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchAnimeSearchImplCopyWith<$Res> {
  factory _$$SearchAnimeSearchImplCopyWith(_$SearchAnimeSearchImpl value,
          $Res Function(_$SearchAnimeSearchImpl) then) =
      __$$SearchAnimeSearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchAnimeSearchImplCopyWithImpl<$Res>
    extends _$SearchAnimeEventCopyWithImpl<$Res, _$SearchAnimeSearchImpl>
    implements _$$SearchAnimeSearchImplCopyWith<$Res> {
  __$$SearchAnimeSearchImplCopyWithImpl(_$SearchAnimeSearchImpl _value,
      $Res Function(_$SearchAnimeSearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchAnimeSearchImpl implements SearchAnimeSearch {
  const _$SearchAnimeSearchImpl();

  @override
  String toString() {
    return 'SearchAnimeEvent.search()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchAnimeSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() search,
    required TResult Function(int? page) loadMore,
    required TResult Function(String query) queryChanged,
    required TResult Function(double score) scoreChanged,
    required TResult Function(List<int> genre) genreChanged,
    required TResult Function(SearchAnimeViewType viewType) viewTypeChanged,
  }) {
    return search();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? search,
    TResult? Function(int? page)? loadMore,
    TResult? Function(String query)? queryChanged,
    TResult? Function(double score)? scoreChanged,
    TResult? Function(List<int> genre)? genreChanged,
    TResult? Function(SearchAnimeViewType viewType)? viewTypeChanged,
  }) {
    return search?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? search,
    TResult Function(int? page)? loadMore,
    TResult Function(String query)? queryChanged,
    TResult Function(double score)? scoreChanged,
    TResult Function(List<int> genre)? genreChanged,
    TResult Function(SearchAnimeViewType viewType)? viewTypeChanged,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchAnimeSearch value) search,
    required TResult Function(SearchAnimeLoadMore value) loadMore,
    required TResult Function(SearchAnimeQueryChanged value) queryChanged,
    required TResult Function(SearchAnimeScoreChanged value) scoreChanged,
    required TResult Function(SearchAnimeGenreChanged value) genreChanged,
    required TResult Function(SearchAnimeViewTypeChanged value) viewTypeChanged,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchAnimeSearch value)? search,
    TResult? Function(SearchAnimeLoadMore value)? loadMore,
    TResult? Function(SearchAnimeQueryChanged value)? queryChanged,
    TResult? Function(SearchAnimeScoreChanged value)? scoreChanged,
    TResult? Function(SearchAnimeGenreChanged value)? genreChanged,
    TResult? Function(SearchAnimeViewTypeChanged value)? viewTypeChanged,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchAnimeSearch value)? search,
    TResult Function(SearchAnimeLoadMore value)? loadMore,
    TResult Function(SearchAnimeQueryChanged value)? queryChanged,
    TResult Function(SearchAnimeScoreChanged value)? scoreChanged,
    TResult Function(SearchAnimeGenreChanged value)? genreChanged,
    TResult Function(SearchAnimeViewTypeChanged value)? viewTypeChanged,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchAnimeSearch implements SearchAnimeEvent {
  const factory SearchAnimeSearch() = _$SearchAnimeSearchImpl;
}

/// @nodoc
abstract class _$$SearchAnimeLoadMoreImplCopyWith<$Res> {
  factory _$$SearchAnimeLoadMoreImplCopyWith(_$SearchAnimeLoadMoreImpl value,
          $Res Function(_$SearchAnimeLoadMoreImpl) then) =
      __$$SearchAnimeLoadMoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? page});
}

/// @nodoc
class __$$SearchAnimeLoadMoreImplCopyWithImpl<$Res>
    extends _$SearchAnimeEventCopyWithImpl<$Res, _$SearchAnimeLoadMoreImpl>
    implements _$$SearchAnimeLoadMoreImplCopyWith<$Res> {
  __$$SearchAnimeLoadMoreImplCopyWithImpl(_$SearchAnimeLoadMoreImpl _value,
      $Res Function(_$SearchAnimeLoadMoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_$SearchAnimeLoadMoreImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SearchAnimeLoadMoreImpl implements SearchAnimeLoadMore {
  const _$SearchAnimeLoadMoreImpl({this.page});

  @override
  final int? page;

  @override
  String toString() {
    return 'SearchAnimeEvent.loadMore(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAnimeLoadMoreImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAnimeLoadMoreImplCopyWith<_$SearchAnimeLoadMoreImpl> get copyWith =>
      __$$SearchAnimeLoadMoreImplCopyWithImpl<_$SearchAnimeLoadMoreImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() search,
    required TResult Function(int? page) loadMore,
    required TResult Function(String query) queryChanged,
    required TResult Function(double score) scoreChanged,
    required TResult Function(List<int> genre) genreChanged,
    required TResult Function(SearchAnimeViewType viewType) viewTypeChanged,
  }) {
    return loadMore(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? search,
    TResult? Function(int? page)? loadMore,
    TResult? Function(String query)? queryChanged,
    TResult? Function(double score)? scoreChanged,
    TResult? Function(List<int> genre)? genreChanged,
    TResult? Function(SearchAnimeViewType viewType)? viewTypeChanged,
  }) {
    return loadMore?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? search,
    TResult Function(int? page)? loadMore,
    TResult Function(String query)? queryChanged,
    TResult Function(double score)? scoreChanged,
    TResult Function(List<int> genre)? genreChanged,
    TResult Function(SearchAnimeViewType viewType)? viewTypeChanged,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchAnimeSearch value) search,
    required TResult Function(SearchAnimeLoadMore value) loadMore,
    required TResult Function(SearchAnimeQueryChanged value) queryChanged,
    required TResult Function(SearchAnimeScoreChanged value) scoreChanged,
    required TResult Function(SearchAnimeGenreChanged value) genreChanged,
    required TResult Function(SearchAnimeViewTypeChanged value) viewTypeChanged,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchAnimeSearch value)? search,
    TResult? Function(SearchAnimeLoadMore value)? loadMore,
    TResult? Function(SearchAnimeQueryChanged value)? queryChanged,
    TResult? Function(SearchAnimeScoreChanged value)? scoreChanged,
    TResult? Function(SearchAnimeGenreChanged value)? genreChanged,
    TResult? Function(SearchAnimeViewTypeChanged value)? viewTypeChanged,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchAnimeSearch value)? search,
    TResult Function(SearchAnimeLoadMore value)? loadMore,
    TResult Function(SearchAnimeQueryChanged value)? queryChanged,
    TResult Function(SearchAnimeScoreChanged value)? scoreChanged,
    TResult Function(SearchAnimeGenreChanged value)? genreChanged,
    TResult Function(SearchAnimeViewTypeChanged value)? viewTypeChanged,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class SearchAnimeLoadMore implements SearchAnimeEvent {
  const factory SearchAnimeLoadMore({final int? page}) =
      _$SearchAnimeLoadMoreImpl;

  int? get page;
  @JsonKey(ignore: true)
  _$$SearchAnimeLoadMoreImplCopyWith<_$SearchAnimeLoadMoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchAnimeQueryChangedImplCopyWith<$Res> {
  factory _$$SearchAnimeQueryChangedImplCopyWith(
          _$SearchAnimeQueryChangedImpl value,
          $Res Function(_$SearchAnimeQueryChangedImpl) then) =
      __$$SearchAnimeQueryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchAnimeQueryChangedImplCopyWithImpl<$Res>
    extends _$SearchAnimeEventCopyWithImpl<$Res, _$SearchAnimeQueryChangedImpl>
    implements _$$SearchAnimeQueryChangedImplCopyWith<$Res> {
  __$$SearchAnimeQueryChangedImplCopyWithImpl(
      _$SearchAnimeQueryChangedImpl _value,
      $Res Function(_$SearchAnimeQueryChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchAnimeQueryChangedImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchAnimeQueryChangedImpl implements SearchAnimeQueryChanged {
  const _$SearchAnimeQueryChangedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchAnimeEvent.queryChanged(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAnimeQueryChangedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAnimeQueryChangedImplCopyWith<_$SearchAnimeQueryChangedImpl>
      get copyWith => __$$SearchAnimeQueryChangedImplCopyWithImpl<
          _$SearchAnimeQueryChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() search,
    required TResult Function(int? page) loadMore,
    required TResult Function(String query) queryChanged,
    required TResult Function(double score) scoreChanged,
    required TResult Function(List<int> genre) genreChanged,
    required TResult Function(SearchAnimeViewType viewType) viewTypeChanged,
  }) {
    return queryChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? search,
    TResult? Function(int? page)? loadMore,
    TResult? Function(String query)? queryChanged,
    TResult? Function(double score)? scoreChanged,
    TResult? Function(List<int> genre)? genreChanged,
    TResult? Function(SearchAnimeViewType viewType)? viewTypeChanged,
  }) {
    return queryChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? search,
    TResult Function(int? page)? loadMore,
    TResult Function(String query)? queryChanged,
    TResult Function(double score)? scoreChanged,
    TResult Function(List<int> genre)? genreChanged,
    TResult Function(SearchAnimeViewType viewType)? viewTypeChanged,
    required TResult orElse(),
  }) {
    if (queryChanged != null) {
      return queryChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchAnimeSearch value) search,
    required TResult Function(SearchAnimeLoadMore value) loadMore,
    required TResult Function(SearchAnimeQueryChanged value) queryChanged,
    required TResult Function(SearchAnimeScoreChanged value) scoreChanged,
    required TResult Function(SearchAnimeGenreChanged value) genreChanged,
    required TResult Function(SearchAnimeViewTypeChanged value) viewTypeChanged,
  }) {
    return queryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchAnimeSearch value)? search,
    TResult? Function(SearchAnimeLoadMore value)? loadMore,
    TResult? Function(SearchAnimeQueryChanged value)? queryChanged,
    TResult? Function(SearchAnimeScoreChanged value)? scoreChanged,
    TResult? Function(SearchAnimeGenreChanged value)? genreChanged,
    TResult? Function(SearchAnimeViewTypeChanged value)? viewTypeChanged,
  }) {
    return queryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchAnimeSearch value)? search,
    TResult Function(SearchAnimeLoadMore value)? loadMore,
    TResult Function(SearchAnimeQueryChanged value)? queryChanged,
    TResult Function(SearchAnimeScoreChanged value)? scoreChanged,
    TResult Function(SearchAnimeGenreChanged value)? genreChanged,
    TResult Function(SearchAnimeViewTypeChanged value)? viewTypeChanged,
    required TResult orElse(),
  }) {
    if (queryChanged != null) {
      return queryChanged(this);
    }
    return orElse();
  }
}

abstract class SearchAnimeQueryChanged implements SearchAnimeEvent {
  const factory SearchAnimeQueryChanged(final String query) =
      _$SearchAnimeQueryChangedImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchAnimeQueryChangedImplCopyWith<_$SearchAnimeQueryChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchAnimeScoreChangedImplCopyWith<$Res> {
  factory _$$SearchAnimeScoreChangedImplCopyWith(
          _$SearchAnimeScoreChangedImpl value,
          $Res Function(_$SearchAnimeScoreChangedImpl) then) =
      __$$SearchAnimeScoreChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double score});
}

/// @nodoc
class __$$SearchAnimeScoreChangedImplCopyWithImpl<$Res>
    extends _$SearchAnimeEventCopyWithImpl<$Res, _$SearchAnimeScoreChangedImpl>
    implements _$$SearchAnimeScoreChangedImplCopyWith<$Res> {
  __$$SearchAnimeScoreChangedImplCopyWithImpl(
      _$SearchAnimeScoreChangedImpl _value,
      $Res Function(_$SearchAnimeScoreChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
  }) {
    return _then(_$SearchAnimeScoreChangedImpl(
      null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SearchAnimeScoreChangedImpl implements SearchAnimeScoreChanged {
  const _$SearchAnimeScoreChangedImpl(this.score);

  @override
  final double score;

  @override
  String toString() {
    return 'SearchAnimeEvent.scoreChanged(score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAnimeScoreChangedImpl &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode => Object.hash(runtimeType, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAnimeScoreChangedImplCopyWith<_$SearchAnimeScoreChangedImpl>
      get copyWith => __$$SearchAnimeScoreChangedImplCopyWithImpl<
          _$SearchAnimeScoreChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() search,
    required TResult Function(int? page) loadMore,
    required TResult Function(String query) queryChanged,
    required TResult Function(double score) scoreChanged,
    required TResult Function(List<int> genre) genreChanged,
    required TResult Function(SearchAnimeViewType viewType) viewTypeChanged,
  }) {
    return scoreChanged(score);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? search,
    TResult? Function(int? page)? loadMore,
    TResult? Function(String query)? queryChanged,
    TResult? Function(double score)? scoreChanged,
    TResult? Function(List<int> genre)? genreChanged,
    TResult? Function(SearchAnimeViewType viewType)? viewTypeChanged,
  }) {
    return scoreChanged?.call(score);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? search,
    TResult Function(int? page)? loadMore,
    TResult Function(String query)? queryChanged,
    TResult Function(double score)? scoreChanged,
    TResult Function(List<int> genre)? genreChanged,
    TResult Function(SearchAnimeViewType viewType)? viewTypeChanged,
    required TResult orElse(),
  }) {
    if (scoreChanged != null) {
      return scoreChanged(score);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchAnimeSearch value) search,
    required TResult Function(SearchAnimeLoadMore value) loadMore,
    required TResult Function(SearchAnimeQueryChanged value) queryChanged,
    required TResult Function(SearchAnimeScoreChanged value) scoreChanged,
    required TResult Function(SearchAnimeGenreChanged value) genreChanged,
    required TResult Function(SearchAnimeViewTypeChanged value) viewTypeChanged,
  }) {
    return scoreChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchAnimeSearch value)? search,
    TResult? Function(SearchAnimeLoadMore value)? loadMore,
    TResult? Function(SearchAnimeQueryChanged value)? queryChanged,
    TResult? Function(SearchAnimeScoreChanged value)? scoreChanged,
    TResult? Function(SearchAnimeGenreChanged value)? genreChanged,
    TResult? Function(SearchAnimeViewTypeChanged value)? viewTypeChanged,
  }) {
    return scoreChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchAnimeSearch value)? search,
    TResult Function(SearchAnimeLoadMore value)? loadMore,
    TResult Function(SearchAnimeQueryChanged value)? queryChanged,
    TResult Function(SearchAnimeScoreChanged value)? scoreChanged,
    TResult Function(SearchAnimeGenreChanged value)? genreChanged,
    TResult Function(SearchAnimeViewTypeChanged value)? viewTypeChanged,
    required TResult orElse(),
  }) {
    if (scoreChanged != null) {
      return scoreChanged(this);
    }
    return orElse();
  }
}

abstract class SearchAnimeScoreChanged implements SearchAnimeEvent {
  const factory SearchAnimeScoreChanged(final double score) =
      _$SearchAnimeScoreChangedImpl;

  double get score;
  @JsonKey(ignore: true)
  _$$SearchAnimeScoreChangedImplCopyWith<_$SearchAnimeScoreChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchAnimeGenreChangedImplCopyWith<$Res> {
  factory _$$SearchAnimeGenreChangedImplCopyWith(
          _$SearchAnimeGenreChangedImpl value,
          $Res Function(_$SearchAnimeGenreChangedImpl) then) =
      __$$SearchAnimeGenreChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> genre});
}

/// @nodoc
class __$$SearchAnimeGenreChangedImplCopyWithImpl<$Res>
    extends _$SearchAnimeEventCopyWithImpl<$Res, _$SearchAnimeGenreChangedImpl>
    implements _$$SearchAnimeGenreChangedImplCopyWith<$Res> {
  __$$SearchAnimeGenreChangedImplCopyWithImpl(
      _$SearchAnimeGenreChangedImpl _value,
      $Res Function(_$SearchAnimeGenreChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genre = null,
  }) {
    return _then(_$SearchAnimeGenreChangedImpl(
      null == genre
          ? _value._genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$SearchAnimeGenreChangedImpl implements SearchAnimeGenreChanged {
  const _$SearchAnimeGenreChangedImpl(final List<int> genre) : _genre = genre;

  final List<int> _genre;
  @override
  List<int> get genre {
    if (_genre is EqualUnmodifiableListView) return _genre;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genre);
  }

  @override
  String toString() {
    return 'SearchAnimeEvent.genreChanged(genre: $genre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAnimeGenreChangedImpl &&
            const DeepCollectionEquality().equals(other._genre, _genre));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_genre));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAnimeGenreChangedImplCopyWith<_$SearchAnimeGenreChangedImpl>
      get copyWith => __$$SearchAnimeGenreChangedImplCopyWithImpl<
          _$SearchAnimeGenreChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() search,
    required TResult Function(int? page) loadMore,
    required TResult Function(String query) queryChanged,
    required TResult Function(double score) scoreChanged,
    required TResult Function(List<int> genre) genreChanged,
    required TResult Function(SearchAnimeViewType viewType) viewTypeChanged,
  }) {
    return genreChanged(genre);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? search,
    TResult? Function(int? page)? loadMore,
    TResult? Function(String query)? queryChanged,
    TResult? Function(double score)? scoreChanged,
    TResult? Function(List<int> genre)? genreChanged,
    TResult? Function(SearchAnimeViewType viewType)? viewTypeChanged,
  }) {
    return genreChanged?.call(genre);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? search,
    TResult Function(int? page)? loadMore,
    TResult Function(String query)? queryChanged,
    TResult Function(double score)? scoreChanged,
    TResult Function(List<int> genre)? genreChanged,
    TResult Function(SearchAnimeViewType viewType)? viewTypeChanged,
    required TResult orElse(),
  }) {
    if (genreChanged != null) {
      return genreChanged(genre);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchAnimeSearch value) search,
    required TResult Function(SearchAnimeLoadMore value) loadMore,
    required TResult Function(SearchAnimeQueryChanged value) queryChanged,
    required TResult Function(SearchAnimeScoreChanged value) scoreChanged,
    required TResult Function(SearchAnimeGenreChanged value) genreChanged,
    required TResult Function(SearchAnimeViewTypeChanged value) viewTypeChanged,
  }) {
    return genreChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchAnimeSearch value)? search,
    TResult? Function(SearchAnimeLoadMore value)? loadMore,
    TResult? Function(SearchAnimeQueryChanged value)? queryChanged,
    TResult? Function(SearchAnimeScoreChanged value)? scoreChanged,
    TResult? Function(SearchAnimeGenreChanged value)? genreChanged,
    TResult? Function(SearchAnimeViewTypeChanged value)? viewTypeChanged,
  }) {
    return genreChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchAnimeSearch value)? search,
    TResult Function(SearchAnimeLoadMore value)? loadMore,
    TResult Function(SearchAnimeQueryChanged value)? queryChanged,
    TResult Function(SearchAnimeScoreChanged value)? scoreChanged,
    TResult Function(SearchAnimeGenreChanged value)? genreChanged,
    TResult Function(SearchAnimeViewTypeChanged value)? viewTypeChanged,
    required TResult orElse(),
  }) {
    if (genreChanged != null) {
      return genreChanged(this);
    }
    return orElse();
  }
}

abstract class SearchAnimeGenreChanged implements SearchAnimeEvent {
  const factory SearchAnimeGenreChanged(final List<int> genre) =
      _$SearchAnimeGenreChangedImpl;

  List<int> get genre;
  @JsonKey(ignore: true)
  _$$SearchAnimeGenreChangedImplCopyWith<_$SearchAnimeGenreChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchAnimeViewTypeChangedImplCopyWith<$Res> {
  factory _$$SearchAnimeViewTypeChangedImplCopyWith(
          _$SearchAnimeViewTypeChangedImpl value,
          $Res Function(_$SearchAnimeViewTypeChangedImpl) then) =
      __$$SearchAnimeViewTypeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchAnimeViewType viewType});
}

/// @nodoc
class __$$SearchAnimeViewTypeChangedImplCopyWithImpl<$Res>
    extends _$SearchAnimeEventCopyWithImpl<$Res,
        _$SearchAnimeViewTypeChangedImpl>
    implements _$$SearchAnimeViewTypeChangedImplCopyWith<$Res> {
  __$$SearchAnimeViewTypeChangedImplCopyWithImpl(
      _$SearchAnimeViewTypeChangedImpl _value,
      $Res Function(_$SearchAnimeViewTypeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewType = null,
  }) {
    return _then(_$SearchAnimeViewTypeChangedImpl(
      null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as SearchAnimeViewType,
    ));
  }
}

/// @nodoc

class _$SearchAnimeViewTypeChangedImpl implements SearchAnimeViewTypeChanged {
  const _$SearchAnimeViewTypeChangedImpl(this.viewType);

  @override
  final SearchAnimeViewType viewType;

  @override
  String toString() {
    return 'SearchAnimeEvent.viewTypeChanged(viewType: $viewType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAnimeViewTypeChangedImpl &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAnimeViewTypeChangedImplCopyWith<_$SearchAnimeViewTypeChangedImpl>
      get copyWith => __$$SearchAnimeViewTypeChangedImplCopyWithImpl<
          _$SearchAnimeViewTypeChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() search,
    required TResult Function(int? page) loadMore,
    required TResult Function(String query) queryChanged,
    required TResult Function(double score) scoreChanged,
    required TResult Function(List<int> genre) genreChanged,
    required TResult Function(SearchAnimeViewType viewType) viewTypeChanged,
  }) {
    return viewTypeChanged(viewType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? search,
    TResult? Function(int? page)? loadMore,
    TResult? Function(String query)? queryChanged,
    TResult? Function(double score)? scoreChanged,
    TResult? Function(List<int> genre)? genreChanged,
    TResult? Function(SearchAnimeViewType viewType)? viewTypeChanged,
  }) {
    return viewTypeChanged?.call(viewType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? search,
    TResult Function(int? page)? loadMore,
    TResult Function(String query)? queryChanged,
    TResult Function(double score)? scoreChanged,
    TResult Function(List<int> genre)? genreChanged,
    TResult Function(SearchAnimeViewType viewType)? viewTypeChanged,
    required TResult orElse(),
  }) {
    if (viewTypeChanged != null) {
      return viewTypeChanged(viewType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchAnimeSearch value) search,
    required TResult Function(SearchAnimeLoadMore value) loadMore,
    required TResult Function(SearchAnimeQueryChanged value) queryChanged,
    required TResult Function(SearchAnimeScoreChanged value) scoreChanged,
    required TResult Function(SearchAnimeGenreChanged value) genreChanged,
    required TResult Function(SearchAnimeViewTypeChanged value) viewTypeChanged,
  }) {
    return viewTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchAnimeSearch value)? search,
    TResult? Function(SearchAnimeLoadMore value)? loadMore,
    TResult? Function(SearchAnimeQueryChanged value)? queryChanged,
    TResult? Function(SearchAnimeScoreChanged value)? scoreChanged,
    TResult? Function(SearchAnimeGenreChanged value)? genreChanged,
    TResult? Function(SearchAnimeViewTypeChanged value)? viewTypeChanged,
  }) {
    return viewTypeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchAnimeSearch value)? search,
    TResult Function(SearchAnimeLoadMore value)? loadMore,
    TResult Function(SearchAnimeQueryChanged value)? queryChanged,
    TResult Function(SearchAnimeScoreChanged value)? scoreChanged,
    TResult Function(SearchAnimeGenreChanged value)? genreChanged,
    TResult Function(SearchAnimeViewTypeChanged value)? viewTypeChanged,
    required TResult orElse(),
  }) {
    if (viewTypeChanged != null) {
      return viewTypeChanged(this);
    }
    return orElse();
  }
}

abstract class SearchAnimeViewTypeChanged implements SearchAnimeEvent {
  const factory SearchAnimeViewTypeChanged(final SearchAnimeViewType viewType) =
      _$SearchAnimeViewTypeChangedImpl;

  SearchAnimeViewType get viewType;
  @JsonKey(ignore: true)
  _$$SearchAnimeViewTypeChangedImplCopyWith<_$SearchAnimeViewTypeChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchAnimeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SearchAnimeParams params, SearchAnimeViewType viewType)
        initial,
    required TResult Function(SearchAnimeViewType viewType) loading,
    required TResult Function(SearchAnimeModel searchedAnime,
            SearchAnimeParams params, SearchAnimeViewType viewType)
        succeed,
    required TResult Function(AppException exception) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchAnimeParams params, SearchAnimeViewType viewType)?
        initial,
    TResult? Function(SearchAnimeViewType viewType)? loading,
    TResult? Function(SearchAnimeModel searchedAnime, SearchAnimeParams params,
            SearchAnimeViewType viewType)?
        succeed,
    TResult? Function(AppException exception)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchAnimeParams params, SearchAnimeViewType viewType)?
        initial,
    TResult Function(SearchAnimeViewType viewType)? loading,
    TResult Function(SearchAnimeModel searchedAnime, SearchAnimeParams params,
            SearchAnimeViewType viewType)?
        succeed,
    TResult Function(AppException exception)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchAnimeBlocInitial value) initial,
    required TResult Function(SearchAnimeBlocLoading value) loading,
    required TResult Function(SearchAnimeSucceed value) succeed,
    required TResult Function(SearchAnimeFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchAnimeBlocInitial value)? initial,
    TResult? Function(SearchAnimeBlocLoading value)? loading,
    TResult? Function(SearchAnimeSucceed value)? succeed,
    TResult? Function(SearchAnimeFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchAnimeBlocInitial value)? initial,
    TResult Function(SearchAnimeBlocLoading value)? loading,
    TResult Function(SearchAnimeSucceed value)? succeed,
    TResult Function(SearchAnimeFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAnimeStateCopyWith<$Res> {
  factory $SearchAnimeStateCopyWith(
          SearchAnimeState value, $Res Function(SearchAnimeState) then) =
      _$SearchAnimeStateCopyWithImpl<$Res, SearchAnimeState>;
}

/// @nodoc
class _$SearchAnimeStateCopyWithImpl<$Res, $Val extends SearchAnimeState>
    implements $SearchAnimeStateCopyWith<$Res> {
  _$SearchAnimeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchAnimeBlocInitialImplCopyWith<$Res> {
  factory _$$SearchAnimeBlocInitialImplCopyWith(
          _$SearchAnimeBlocInitialImpl value,
          $Res Function(_$SearchAnimeBlocInitialImpl) then) =
      __$$SearchAnimeBlocInitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchAnimeParams params, SearchAnimeViewType viewType});
}

/// @nodoc
class __$$SearchAnimeBlocInitialImplCopyWithImpl<$Res>
    extends _$SearchAnimeStateCopyWithImpl<$Res, _$SearchAnimeBlocInitialImpl>
    implements _$$SearchAnimeBlocInitialImplCopyWith<$Res> {
  __$$SearchAnimeBlocInitialImplCopyWithImpl(
      _$SearchAnimeBlocInitialImpl _value,
      $Res Function(_$SearchAnimeBlocInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
    Object? viewType = null,
  }) {
    return _then(_$SearchAnimeBlocInitialImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as SearchAnimeParams,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as SearchAnimeViewType,
    ));
  }
}

/// @nodoc

class _$SearchAnimeBlocInitialImpl implements SearchAnimeBlocInitial {
  const _$SearchAnimeBlocInitialImpl(
      {required this.params, required this.viewType});

  @override
  final SearchAnimeParams params;
  @override
  final SearchAnimeViewType viewType;

  @override
  String toString() {
    return 'SearchAnimeState.initial(params: $params, viewType: $viewType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAnimeBlocInitialImpl &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params, viewType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAnimeBlocInitialImplCopyWith<_$SearchAnimeBlocInitialImpl>
      get copyWith => __$$SearchAnimeBlocInitialImplCopyWithImpl<
          _$SearchAnimeBlocInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SearchAnimeParams params, SearchAnimeViewType viewType)
        initial,
    required TResult Function(SearchAnimeViewType viewType) loading,
    required TResult Function(SearchAnimeModel searchedAnime,
            SearchAnimeParams params, SearchAnimeViewType viewType)
        succeed,
    required TResult Function(AppException exception) failed,
  }) {
    return initial(params, viewType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchAnimeParams params, SearchAnimeViewType viewType)?
        initial,
    TResult? Function(SearchAnimeViewType viewType)? loading,
    TResult? Function(SearchAnimeModel searchedAnime, SearchAnimeParams params,
            SearchAnimeViewType viewType)?
        succeed,
    TResult? Function(AppException exception)? failed,
  }) {
    return initial?.call(params, viewType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchAnimeParams params, SearchAnimeViewType viewType)?
        initial,
    TResult Function(SearchAnimeViewType viewType)? loading,
    TResult Function(SearchAnimeModel searchedAnime, SearchAnimeParams params,
            SearchAnimeViewType viewType)?
        succeed,
    TResult Function(AppException exception)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(params, viewType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchAnimeBlocInitial value) initial,
    required TResult Function(SearchAnimeBlocLoading value) loading,
    required TResult Function(SearchAnimeSucceed value) succeed,
    required TResult Function(SearchAnimeFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchAnimeBlocInitial value)? initial,
    TResult? Function(SearchAnimeBlocLoading value)? loading,
    TResult? Function(SearchAnimeSucceed value)? succeed,
    TResult? Function(SearchAnimeFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchAnimeBlocInitial value)? initial,
    TResult Function(SearchAnimeBlocLoading value)? loading,
    TResult Function(SearchAnimeSucceed value)? succeed,
    TResult Function(SearchAnimeFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SearchAnimeBlocInitial implements SearchAnimeState {
  const factory SearchAnimeBlocInitial(
          {required final SearchAnimeParams params,
          required final SearchAnimeViewType viewType}) =
      _$SearchAnimeBlocInitialImpl;

  SearchAnimeParams get params;
  SearchAnimeViewType get viewType;
  @JsonKey(ignore: true)
  _$$SearchAnimeBlocInitialImplCopyWith<_$SearchAnimeBlocInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchAnimeBlocLoadingImplCopyWith<$Res> {
  factory _$$SearchAnimeBlocLoadingImplCopyWith(
          _$SearchAnimeBlocLoadingImpl value,
          $Res Function(_$SearchAnimeBlocLoadingImpl) then) =
      __$$SearchAnimeBlocLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchAnimeViewType viewType});
}

/// @nodoc
class __$$SearchAnimeBlocLoadingImplCopyWithImpl<$Res>
    extends _$SearchAnimeStateCopyWithImpl<$Res, _$SearchAnimeBlocLoadingImpl>
    implements _$$SearchAnimeBlocLoadingImplCopyWith<$Res> {
  __$$SearchAnimeBlocLoadingImplCopyWithImpl(
      _$SearchAnimeBlocLoadingImpl _value,
      $Res Function(_$SearchAnimeBlocLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewType = null,
  }) {
    return _then(_$SearchAnimeBlocLoadingImpl(
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as SearchAnimeViewType,
    ));
  }
}

/// @nodoc

class _$SearchAnimeBlocLoadingImpl implements SearchAnimeBlocLoading {
  const _$SearchAnimeBlocLoadingImpl({required this.viewType});

  @override
  final SearchAnimeViewType viewType;

  @override
  String toString() {
    return 'SearchAnimeState.loading(viewType: $viewType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAnimeBlocLoadingImpl &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAnimeBlocLoadingImplCopyWith<_$SearchAnimeBlocLoadingImpl>
      get copyWith => __$$SearchAnimeBlocLoadingImplCopyWithImpl<
          _$SearchAnimeBlocLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SearchAnimeParams params, SearchAnimeViewType viewType)
        initial,
    required TResult Function(SearchAnimeViewType viewType) loading,
    required TResult Function(SearchAnimeModel searchedAnime,
            SearchAnimeParams params, SearchAnimeViewType viewType)
        succeed,
    required TResult Function(AppException exception) failed,
  }) {
    return loading(viewType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchAnimeParams params, SearchAnimeViewType viewType)?
        initial,
    TResult? Function(SearchAnimeViewType viewType)? loading,
    TResult? Function(SearchAnimeModel searchedAnime, SearchAnimeParams params,
            SearchAnimeViewType viewType)?
        succeed,
    TResult? Function(AppException exception)? failed,
  }) {
    return loading?.call(viewType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchAnimeParams params, SearchAnimeViewType viewType)?
        initial,
    TResult Function(SearchAnimeViewType viewType)? loading,
    TResult Function(SearchAnimeModel searchedAnime, SearchAnimeParams params,
            SearchAnimeViewType viewType)?
        succeed,
    TResult Function(AppException exception)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(viewType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchAnimeBlocInitial value) initial,
    required TResult Function(SearchAnimeBlocLoading value) loading,
    required TResult Function(SearchAnimeSucceed value) succeed,
    required TResult Function(SearchAnimeFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchAnimeBlocInitial value)? initial,
    TResult? Function(SearchAnimeBlocLoading value)? loading,
    TResult? Function(SearchAnimeSucceed value)? succeed,
    TResult? Function(SearchAnimeFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchAnimeBlocInitial value)? initial,
    TResult Function(SearchAnimeBlocLoading value)? loading,
    TResult Function(SearchAnimeSucceed value)? succeed,
    TResult Function(SearchAnimeFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchAnimeBlocLoading implements SearchAnimeState {
  const factory SearchAnimeBlocLoading(
          {required final SearchAnimeViewType viewType}) =
      _$SearchAnimeBlocLoadingImpl;

  SearchAnimeViewType get viewType;
  @JsonKey(ignore: true)
  _$$SearchAnimeBlocLoadingImplCopyWith<_$SearchAnimeBlocLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchAnimeSucceedImplCopyWith<$Res> {
  factory _$$SearchAnimeSucceedImplCopyWith(_$SearchAnimeSucceedImpl value,
          $Res Function(_$SearchAnimeSucceedImpl) then) =
      __$$SearchAnimeSucceedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {SearchAnimeModel searchedAnime,
      SearchAnimeParams params,
      SearchAnimeViewType viewType});

  $SearchAnimeModelCopyWith<$Res> get searchedAnime;
}

/// @nodoc
class __$$SearchAnimeSucceedImplCopyWithImpl<$Res>
    extends _$SearchAnimeStateCopyWithImpl<$Res, _$SearchAnimeSucceedImpl>
    implements _$$SearchAnimeSucceedImplCopyWith<$Res> {
  __$$SearchAnimeSucceedImplCopyWithImpl(_$SearchAnimeSucceedImpl _value,
      $Res Function(_$SearchAnimeSucceedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchedAnime = null,
    Object? params = null,
    Object? viewType = null,
  }) {
    return _then(_$SearchAnimeSucceedImpl(
      searchedAnime: null == searchedAnime
          ? _value.searchedAnime
          : searchedAnime // ignore: cast_nullable_to_non_nullable
              as SearchAnimeModel,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as SearchAnimeParams,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as SearchAnimeViewType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchAnimeModelCopyWith<$Res> get searchedAnime {
    return $SearchAnimeModelCopyWith<$Res>(_value.searchedAnime, (value) {
      return _then(_value.copyWith(searchedAnime: value));
    });
  }
}

/// @nodoc

class _$SearchAnimeSucceedImpl implements SearchAnimeSucceed {
  const _$SearchAnimeSucceedImpl(
      {required this.searchedAnime,
      required this.params,
      required this.viewType});

  @override
  final SearchAnimeModel searchedAnime;
  @override
  final SearchAnimeParams params;
  @override
  final SearchAnimeViewType viewType;

  @override
  String toString() {
    return 'SearchAnimeState.succeed(searchedAnime: $searchedAnime, params: $params, viewType: $viewType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAnimeSucceedImpl &&
            (identical(other.searchedAnime, searchedAnime) ||
                other.searchedAnime == searchedAnime) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchedAnime, params, viewType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAnimeSucceedImplCopyWith<_$SearchAnimeSucceedImpl> get copyWith =>
      __$$SearchAnimeSucceedImplCopyWithImpl<_$SearchAnimeSucceedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SearchAnimeParams params, SearchAnimeViewType viewType)
        initial,
    required TResult Function(SearchAnimeViewType viewType) loading,
    required TResult Function(SearchAnimeModel searchedAnime,
            SearchAnimeParams params, SearchAnimeViewType viewType)
        succeed,
    required TResult Function(AppException exception) failed,
  }) {
    return succeed(searchedAnime, params, viewType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchAnimeParams params, SearchAnimeViewType viewType)?
        initial,
    TResult? Function(SearchAnimeViewType viewType)? loading,
    TResult? Function(SearchAnimeModel searchedAnime, SearchAnimeParams params,
            SearchAnimeViewType viewType)?
        succeed,
    TResult? Function(AppException exception)? failed,
  }) {
    return succeed?.call(searchedAnime, params, viewType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchAnimeParams params, SearchAnimeViewType viewType)?
        initial,
    TResult Function(SearchAnimeViewType viewType)? loading,
    TResult Function(SearchAnimeModel searchedAnime, SearchAnimeParams params,
            SearchAnimeViewType viewType)?
        succeed,
    TResult Function(AppException exception)? failed,
    required TResult orElse(),
  }) {
    if (succeed != null) {
      return succeed(searchedAnime, params, viewType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchAnimeBlocInitial value) initial,
    required TResult Function(SearchAnimeBlocLoading value) loading,
    required TResult Function(SearchAnimeSucceed value) succeed,
    required TResult Function(SearchAnimeFailed value) failed,
  }) {
    return succeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchAnimeBlocInitial value)? initial,
    TResult? Function(SearchAnimeBlocLoading value)? loading,
    TResult? Function(SearchAnimeSucceed value)? succeed,
    TResult? Function(SearchAnimeFailed value)? failed,
  }) {
    return succeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchAnimeBlocInitial value)? initial,
    TResult Function(SearchAnimeBlocLoading value)? loading,
    TResult Function(SearchAnimeSucceed value)? succeed,
    TResult Function(SearchAnimeFailed value)? failed,
    required TResult orElse(),
  }) {
    if (succeed != null) {
      return succeed(this);
    }
    return orElse();
  }
}

abstract class SearchAnimeSucceed implements SearchAnimeState {
  const factory SearchAnimeSucceed(
      {required final SearchAnimeModel searchedAnime,
      required final SearchAnimeParams params,
      required final SearchAnimeViewType viewType}) = _$SearchAnimeSucceedImpl;

  SearchAnimeModel get searchedAnime;
  SearchAnimeParams get params;
  SearchAnimeViewType get viewType;
  @JsonKey(ignore: true)
  _$$SearchAnimeSucceedImplCopyWith<_$SearchAnimeSucceedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchAnimeFailedImplCopyWith<$Res> {
  factory _$$SearchAnimeFailedImplCopyWith(_$SearchAnimeFailedImpl value,
          $Res Function(_$SearchAnimeFailedImpl) then) =
      __$$SearchAnimeFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppException exception});
}

/// @nodoc
class __$$SearchAnimeFailedImplCopyWithImpl<$Res>
    extends _$SearchAnimeStateCopyWithImpl<$Res, _$SearchAnimeFailedImpl>
    implements _$$SearchAnimeFailedImplCopyWith<$Res> {
  __$$SearchAnimeFailedImplCopyWithImpl(_$SearchAnimeFailedImpl _value,
      $Res Function(_$SearchAnimeFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$SearchAnimeFailedImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }
}

/// @nodoc

class _$SearchAnimeFailedImpl implements SearchAnimeFailed {
  const _$SearchAnimeFailedImpl(this.exception);

  @override
  final AppException exception;

  @override
  String toString() {
    return 'SearchAnimeState.failed(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAnimeFailedImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAnimeFailedImplCopyWith<_$SearchAnimeFailedImpl> get copyWith =>
      __$$SearchAnimeFailedImplCopyWithImpl<_$SearchAnimeFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SearchAnimeParams params, SearchAnimeViewType viewType)
        initial,
    required TResult Function(SearchAnimeViewType viewType) loading,
    required TResult Function(SearchAnimeModel searchedAnime,
            SearchAnimeParams params, SearchAnimeViewType viewType)
        succeed,
    required TResult Function(AppException exception) failed,
  }) {
    return failed(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchAnimeParams params, SearchAnimeViewType viewType)?
        initial,
    TResult? Function(SearchAnimeViewType viewType)? loading,
    TResult? Function(SearchAnimeModel searchedAnime, SearchAnimeParams params,
            SearchAnimeViewType viewType)?
        succeed,
    TResult? Function(AppException exception)? failed,
  }) {
    return failed?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchAnimeParams params, SearchAnimeViewType viewType)?
        initial,
    TResult Function(SearchAnimeViewType viewType)? loading,
    TResult Function(SearchAnimeModel searchedAnime, SearchAnimeParams params,
            SearchAnimeViewType viewType)?
        succeed,
    TResult Function(AppException exception)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchAnimeBlocInitial value) initial,
    required TResult Function(SearchAnimeBlocLoading value) loading,
    required TResult Function(SearchAnimeSucceed value) succeed,
    required TResult Function(SearchAnimeFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchAnimeBlocInitial value)? initial,
    TResult? Function(SearchAnimeBlocLoading value)? loading,
    TResult? Function(SearchAnimeSucceed value)? succeed,
    TResult? Function(SearchAnimeFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchAnimeBlocInitial value)? initial,
    TResult Function(SearchAnimeBlocLoading value)? loading,
    TResult Function(SearchAnimeSucceed value)? succeed,
    TResult Function(SearchAnimeFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class SearchAnimeFailed implements SearchAnimeState {
  const factory SearchAnimeFailed(final AppException exception) =
      _$SearchAnimeFailedImpl;

  AppException get exception;
  @JsonKey(ignore: true)
  _$$SearchAnimeFailedImplCopyWith<_$SearchAnimeFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
