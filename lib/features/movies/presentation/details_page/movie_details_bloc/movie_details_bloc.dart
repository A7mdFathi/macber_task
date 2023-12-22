import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/usecase/get_movie_details_usecase.dart';

import '../../../data/model/movie.dart';

part 'movie_details_bloc.freezed.dart';

@freezed
class MovieDetailsEvent with _$MovieDetailsEvent {
  const factory MovieDetailsEvent.fetch(int movieId) = _Fetch;
}

@freezed
class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState({
    @Default(true) bool loading,
    Movie? movie,
    String? message,
  }) = _MovieDetailsState;
}

@injectable
class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(this.getMovieDetailsUseCase) : super(MovieDetailsState()) {
    on<_Fetch>(_mapMovieDetailToState);
  }

  final GetMovieDetailsUseCase getMovieDetailsUseCase;

  FutureOr<void> _mapMovieDetailToState(_Fetch event, Emitter<MovieDetailsState> emit) async {
    emit(state.copyWith(loading: true));

    final result = await getMovieDetailsUseCase.execute(event.movieId);

    result.fold(
      (error) => emit(state.copyWith(loading: false, message: error.toString())),
      (data) => emit(state.copyWith(loading: false, movie: data)),
    );
  }
}
