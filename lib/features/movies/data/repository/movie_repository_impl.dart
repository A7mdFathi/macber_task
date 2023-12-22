import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../api/api_path.dart';
import '../../../../api/api_service.dart';
import '../dto/movie_dto.dart';
import '../model/cast.dart';
import '../model/movie.dart';
import '../../domain/repository/movie_repository.dart';

@Injectable(as: MovieRepository)
class MovieRepositoryImpl extends MovieRepository {
  final ApiService apiService;

  MovieRepositoryImpl({required this.apiService});
  Map<String, String> queryParam = {"language": "en-US"};

  @override
  Future<List<Cast>> getCast(int movieId) async {
    final response = await apiService.getApi(
      ApiPath.cast.replaceFirst("{movie_id}", "$movieId"),
      queryParam: queryParam,
    )
      ..validate();

    return (response.data["cast"] as List?)?.map((e) => Cast.fromJson(e as Map<String, dynamic>)).toList() ?? [];
  }

  @override
  Future<Movie> getDetails(int movieId) async {
    final response = await apiService.getApi(
      "${ApiPath.movieDetails}/$movieId",
      queryParam: queryParam,
    )
      ..validate();

    return Movie.fromJson(response.data as Map<String, dynamic>);
  }

  @override
  Future<List<Movie>> getMovies(MovieDto dto) async {
    final response = await apiService.getApi(ApiPath.movies, queryParam: dto.toJson())
      ..validate();

    return (response.data["results"] as List?)?.map((e) => Movie.fromJson(e as Map<String, dynamic>)).toList() ?? [];
  }
}

extension AppResponseHelper on Response {
  void validate() {
    if (statusCode != 200 || data["success"] == false) throw Exception(data["status_message"]);
  }
}
