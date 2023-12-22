// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_cast_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieCastEvent {
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
  $MovieCastEventCopyWith<MovieCastEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCastEventCopyWith<$Res> {
  factory $MovieCastEventCopyWith(
          MovieCastEvent value, $Res Function(MovieCastEvent) then) =
      _$MovieCastEventCopyWithImpl<$Res, MovieCastEvent>;
  @useResult
  $Res call({int movieId});
}

/// @nodoc
class _$MovieCastEventCopyWithImpl<$Res, $Val extends MovieCastEvent>
    implements $MovieCastEventCopyWith<$Res> {
  _$MovieCastEventCopyWithImpl(this._value, this._then);

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
    implements $MovieCastEventCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int movieId});
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$MovieCastEventCopyWithImpl<$Res, _$FetchImpl>
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
    return 'MovieCastEvent.fetch(movieId: $movieId)';
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

abstract class _Fetch implements MovieCastEvent {
  const factory _Fetch(final int movieId) = _$FetchImpl;

  @override
  int get movieId;
  @override
  @JsonKey(ignore: true)
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieCastState {
  bool get loading => throw _privateConstructorUsedError;
  List<Cast> get cast => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieCastStateCopyWith<MovieCastState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCastStateCopyWith<$Res> {
  factory $MovieCastStateCopyWith(
          MovieCastState value, $Res Function(MovieCastState) then) =
      _$MovieCastStateCopyWithImpl<$Res, MovieCastState>;
  @useResult
  $Res call({bool loading, List<Cast> cast, String? error});
}

/// @nodoc
class _$MovieCastStateCopyWithImpl<$Res, $Val extends MovieCastState>
    implements $MovieCastStateCopyWith<$Res> {
  _$MovieCastStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? cast = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      cast: null == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieCastStateImplCopyWith<$Res>
    implements $MovieCastStateCopyWith<$Res> {
  factory _$$MovieCastStateImplCopyWith(_$MovieCastStateImpl value,
          $Res Function(_$MovieCastStateImpl) then) =
      __$$MovieCastStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, List<Cast> cast, String? error});
}

/// @nodoc
class __$$MovieCastStateImplCopyWithImpl<$Res>
    extends _$MovieCastStateCopyWithImpl<$Res, _$MovieCastStateImpl>
    implements _$$MovieCastStateImplCopyWith<$Res> {
  __$$MovieCastStateImplCopyWithImpl(
      _$MovieCastStateImpl _value, $Res Function(_$MovieCastStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? cast = null,
    Object? error = freezed,
  }) {
    return _then(_$MovieCastStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      cast: null == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MovieCastStateImpl implements _MovieCastState {
  const _$MovieCastStateImpl(
      {this.loading = false, final List<Cast> cast = const [], this.error})
      : _cast = cast;

  @override
  @JsonKey()
  final bool loading;
  final List<Cast> _cast;
  @override
  @JsonKey()
  List<Cast> get cast {
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cast);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'MovieCastState(loading: $loading, cast: $cast, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieCastStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loading, const DeepCollectionEquality().hash(_cast), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieCastStateImplCopyWith<_$MovieCastStateImpl> get copyWith =>
      __$$MovieCastStateImplCopyWithImpl<_$MovieCastStateImpl>(
          this, _$identity);
}

abstract class _MovieCastState implements MovieCastState {
  const factory _MovieCastState(
      {final bool loading,
      final List<Cast> cast,
      final String? error}) = _$MovieCastStateImpl;

  @override
  bool get loading;
  @override
  List<Cast> get cast;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$MovieCastStateImplCopyWith<_$MovieCastStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
