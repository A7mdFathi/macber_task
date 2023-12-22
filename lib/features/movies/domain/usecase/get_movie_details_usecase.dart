import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../repository/movie_repository.dart';

import '../../data/model/movie.dart';

@injectable
class GetMovieDetailsUseCase {
  final MovieRepository repository;

  GetMovieDetailsUseCase({required this.repository});


  Future<Either<Exception, Movie>> execute(int movieId) async {
    try {
      final movies = await repository.getDetails(movieId);

      return Right(movies);
    } on Exception catch (e) {
      return Left(e);
    }
  }


}
