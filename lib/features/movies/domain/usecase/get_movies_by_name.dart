import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../data/dto/movie_dto.dart';
import '../../data/model/movie.dart';
import '../repository/movie_repository.dart';

@injectable
class GetMoviesByName {
  final MovieRepository movieRepository;

  GetMoviesByName({required this.movieRepository});

  Future<Either<Exception, List<Movie>>> execute(MovieDto dto) async {
    try {
      final movies = await movieRepository.getMovies(dto);

      return Right(movies);
    } on Exception catch (e) {
      return Left(e);
    }
  }
}

abstract class AppUseCase<T, Params> {
  Either<Exception, T> execute(Params params);
}

abstract class AppAsyncUseCase<T, Params> {

  Future<Either<Exception, T>> execute(Params params);
}
