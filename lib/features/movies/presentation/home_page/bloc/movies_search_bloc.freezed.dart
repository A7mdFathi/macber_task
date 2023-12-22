// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoviesSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MovieDto dto) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MovieDto dto)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MovieDto dto)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesSearchEventCopyWith<$Res> {
  factory $MoviesSearchEventCopyWith(
          MoviesSearchEvent value, $Res Function(MoviesSearchEvent) then) =
      _$MoviesSearchEventCopyWithImpl<$Res, MoviesSearchEvent>;
}

/// @nodoc
class _$MoviesSearchEventCopyWithImpl<$Res, $Val extends MoviesSearchEvent>
    implements $MoviesSearchEventCopyWith<$Res> {
  _$MoviesSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$MoviesSearchEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'MoviesSearchEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MovieDto dto) search,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MovieDto dto)? search,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MovieDto dto)? search,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MoviesSearchEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MovieDto dto});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$MoviesSearchEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$SearchImpl(
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as MovieDto,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl({required this.dto});

  @override
  final MovieDto dto;

  @override
  String toString() {
    return 'MoviesSearchEvent.search(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MovieDto dto) search,
  }) {
    return search(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MovieDto dto)? search,
  }) {
    return search?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MovieDto dto)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements MoviesSearchEvent {
  const factory _Search({required final MovieDto dto}) = _$SearchImpl;

  MovieDto get dto;
  @JsonKey(ignore: true)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MoviesSearchState {
  bool get loading => throw _privateConstructorUsedError;
  List<Movie> get movies => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get searchKeyword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoviesSearchStateCopyWith<MoviesSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesSearchStateCopyWith<$Res> {
  factory $MoviesSearchStateCopyWith(
          MoviesSearchState value, $Res Function(MoviesSearchState) then) =
      _$MoviesSearchStateCopyWithImpl<$Res, MoviesSearchState>;
  @useResult
  $Res call(
      {bool loading, List<Movie> movies, String? error, String? searchKeyword});
}

/// @nodoc
class _$MoviesSearchStateCopyWithImpl<$Res, $Val extends MoviesSearchState>
    implements $MoviesSearchStateCopyWith<$Res> {
  _$MoviesSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? movies = null,
    Object? error = freezed,
    Object? searchKeyword = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      searchKeyword: freezed == searchKeyword
          ? _value.searchKeyword
          : searchKeyword // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesSearchStateImplCopyWith<$Res>
    implements $MoviesSearchStateCopyWith<$Res> {
  factory _$$MoviesSearchStateImplCopyWith(_$MoviesSearchStateImpl value,
          $Res Function(_$MoviesSearchStateImpl) then) =
      __$$MoviesSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading, List<Movie> movies, String? error, String? searchKeyword});
}

/// @nodoc
class __$$MoviesSearchStateImplCopyWithImpl<$Res>
    extends _$MoviesSearchStateCopyWithImpl<$Res, _$MoviesSearchStateImpl>
    implements _$$MoviesSearchStateImplCopyWith<$Res> {
  __$$MoviesSearchStateImplCopyWithImpl(_$MoviesSearchStateImpl _value,
      $Res Function(_$MoviesSearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? movies = null,
    Object? error = freezed,
    Object? searchKeyword = freezed,
  }) {
    return _then(_$MoviesSearchStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      searchKeyword: freezed == searchKeyword
          ? _value.searchKeyword
          : searchKeyword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MoviesSearchStateImpl implements _MoviesSearchState {
  const _$MoviesSearchStateImpl(
      {this.loading = false,
      final List<Movie> movies = const [],
      this.error,
      this.searchKeyword})
      : _movies = movies;

  @override
  @JsonKey()
  final bool loading;
  final List<Movie> _movies;
  @override
  @JsonKey()
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  final String? error;
  @override
  final String? searchKeyword;

  @override
  String toString() {
    return 'MoviesSearchState(loading: $loading, movies: $movies, error: $error, searchKeyword: $searchKeyword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesSearchStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.searchKeyword, searchKeyword) ||
                other.searchKeyword == searchKeyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading,
      const DeepCollectionEquality().hash(_movies), error, searchKeyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesSearchStateImplCopyWith<_$MoviesSearchStateImpl> get copyWith =>
      __$$MoviesSearchStateImplCopyWithImpl<_$MoviesSearchStateImpl>(
          this, _$identity);
}

abstract class _MoviesSearchState implements MoviesSearchState {
  const factory _MoviesSearchState(
      {final bool loading,
      final List<Movie> movies,
      final String? error,
      final String? searchKeyword}) = _$MoviesSearchStateImpl;

  @override
  bool get loading;
  @override
  List<Movie> get movies;
  @override
  String? get error;
  @override
  String? get searchKeyword;
  @override
  @JsonKey(ignore: true)
  _$$MoviesSearchStateImplCopyWith<_$MoviesSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
