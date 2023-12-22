


import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../data/model/cast.dart';
import '../repository/movie_repository.dart';

@injectable
class GetCastByMovieId {
  final MovieRepository movieRepository;

  GetCastByMovieId({required this.movieRepository});

  Future<Either<Exception, List<Cast>>> execute(int movieId) async {
    try {
      final movies = await movieRepository.getCast(movieId);

      return Right(movies);
    } on Exception catch (e) {
      return Left(e);
    }
  }
}