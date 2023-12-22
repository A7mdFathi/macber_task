// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieDetailsEvent {
  int get movieId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailsEventCopyWith<MovieDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsEventCopyWith<$Res> {
  factory $MovieDetailsEventCopyWith(
          MovieDetailsEvent value, $Res Function(MovieDetailsEvent) then) =
      _$MovieDetailsEventCopyWithImpl<$Res, MovieDetailsEvent>;
  @useResult
  $Res call({int movieId});
}

/// @nodoc
class _$MovieDetailsEventCopyWithImpl<$Res, $Val extends MovieDetailsEvent>
    implements $MovieDetailsEventCopyWith<$Res> {
  _$MovieDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
  }) {
    return _then(_value.copyWith(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res>
    implements $MovieDetailsEventCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int movieId});
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$MovieDetailsEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
  }) {
    return _then(_$FetchImpl(
      null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl(this.movieId);

  @override
  final int movieId;

  @override
  String toString() {
    return 'MovieDetailsEvent.fetch(movieId: $movieId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchImpl &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      __$$FetchImplCopyWithImpl<_$FetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId) fetch,
  }) {
    return fetch(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId)? fetch,
  }) {
    return fetch?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements MovieDetailsEvent {
  const factory _Fetch(final int movieId) = _$FetchImpl;

  @override
  int get movieId;
  @override
  @JsonKey(ignore: true)
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieDetailsState {
  bool get loading => throw _privateConstructorUsedError;
  Movie? get movie => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailsStateCopyWith<MovieDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsStateCopyWith(
          MovieDetailsState value, $Res Function(MovieDetailsState) then) =
      _$MovieDetailsStateCopyWithImpl<$Res, MovieDetailsState>;
  @useResult
  $Res call({bool loading, Movie? movie, String? message});

  $MovieCopyWith<$Res>? get movie;
}

/// @nodoc
class _$MovieDetailsStateCopyWithImpl<$Res, $Val extends MovieDetailsState>
    implements $MovieDetailsStateCopyWith<$Res> {
  _$MovieDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? movie = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res>? get movie {
    if (_value.movie == null) {
      return null;
    }

    return $MovieCopyWith<$Res>(_value.movie!, (value) {
      return _then(_value.copyWith(movie: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieDetailsStateImplCopyWith<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  factory _$$MovieDetailsStateImplCopyWith(_$MovieDetailsStateImpl value,
          $Res Function(_$MovieDetailsStateImpl) then) =
      __$$MovieDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, Movie? movie, String? message});

  @override
  $MovieCopyWith<$Res>? get movie;
}

/// @nodoc
class __$$MovieDetailsStateImplCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res, _$MovieDetailsStateImpl>
    implements _$$MovieDetailsStateImplCopyWith<$Res> {
  __$$MovieDetailsStateImplCopyWithImpl(_$MovieDetailsStateImpl _value,
      $Res Function(_$MovieDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? movie = freezed,
    Object? message = freezed,
  }) {
    return _then(_$MovieDetailsStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MovieDetailsStateImpl implements _MovieDetailsState {
  const _$MovieDetailsStateImpl(
      {this.loading = true, this.movie, this.message});

  @override
  @JsonKey()
  final bool loading;
  @override
  final Movie? movie;
  @override
  final String? message;

  @override
  String toString() {
    return 'MovieDetailsState(loading: $loading, movie: $movie, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailsStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, movie, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailsStateImplCopyWith<_$MovieDetailsStateImpl> get copyWith =>
      __$$MovieDetailsStateImplCopyWithImpl<_$MovieDetailsStateImpl>(
          this, _$identity);
}

abstract class _MovieDetailsState implements MovieDetailsState {
  const factory _MovieDetailsState(
      {final bool loading,
      final Movie? movie,
      final String? message}) = _$MovieDetailsStateImpl;

  @override
  bool get loading;
  @override
  Movie? get movie;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$MovieDetailsStateImplCopyWith<_$MovieDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
