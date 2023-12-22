import '../../data/dto/movie_dto.dart';
import '../../data/model/cast.dart';
import '../../data/model/movie.dart';

abstract class MovieRepository {
  Future<List<Movie>> getMovies(MovieDto dto);

  Future<List<Cast>> getCast(int movieId);

  Future<Movie> getDetails(int movieId);
}
