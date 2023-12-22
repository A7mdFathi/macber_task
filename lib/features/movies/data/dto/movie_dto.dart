import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_dto.freezed.dart';
part 'movie_dto.g.dart';

@Freezed(
   toJson: true,
  copyWith: false,
  fromJson: false,
)
class MovieDto with _$MovieDto {
 const factory MovieDto({
    required String query,
    required int page,
    @JsonKey(name: "include_adult" ) @Default(false) bool includeAdult,
  }) = _MovieDto;
}


