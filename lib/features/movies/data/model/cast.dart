import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast.freezed.dart';
part 'cast.g.dart';

@Freezed(fromJson: true)
class Cast with _$Cast {
  const factory Cast({
    bool? adult,
    int? gender,
    int? id,
    @JsonKey(name: "known_for_department") String? knownForDepartment,
    String? name,
    @JsonKey(name: "original_name") String? originalName,
    double? popularity,
    @JsonKey(name: "profile_path") String? profilePath,
    @JsonKey(name: "cast_id") int? castId,
    String? character,
    @JsonKey(name: "credit_id") String? creditId,
    int? order,
  }) = _Cast;

  const Cast._();
  String? get fullPath {
    if (profilePath == null) return null;

    return "https://image.tmdb.org/t/p/w500/${profilePath!}";
  }

  factory Cast.fromJson(Map<String, dynamic> json) => _Cast.fromJson(json);
}
