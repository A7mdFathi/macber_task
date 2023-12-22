// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieDto {
  String get query => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "include_adult")
  bool get includeAdult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$MovieDtoImpl implements _MovieDto {
  const _$MovieDtoImpl(
      {required this.query,
      required this.page,
      @JsonKey(name: "include_adult") this.includeAdult = false});

  @override
  final String query;
  @override
  final int page;
  @override
  @JsonKey(name: "include_adult")
  final bool includeAdult;

  @override
  String toString() {
    return 'MovieDto(query: $query, page: $page, includeAdult: $includeAdult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDtoImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.includeAdult, includeAdult) ||
                other.includeAdult == includeAdult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, query, page, includeAdult);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDtoImplToJson(
      this,
    );
  }
}

abstract class _MovieDto implements MovieDto {
  const factory _MovieDto(
          {required final String query,
          required final int page,
          @JsonKey(name: "include_adult") final bool includeAdult}) =
      _$MovieDtoImpl;

  @override
  String get query;
  @override
  int get page;
  @override
  @JsonKey(name: "include_adult")
  bool get includeAdult;
}
