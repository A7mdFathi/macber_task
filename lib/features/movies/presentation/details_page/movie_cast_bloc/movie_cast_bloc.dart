import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/model/cast.dart';
import '../../../domain/usecase/get_cast_by_movie_id.dart';

part 'movie_cast_bloc.freezed.dart';

@freezed
class MovieCastEvent with _$MovieCastEvent {
  const factory MovieCastEvent.fetch(int movieId) = _Fetch;
}

@freezed
class MovieCastState with _$MovieCastState {
  const factory MovieCastState({
    @Default(false) bool loading,
    @Default([]) List<Cast> cast,
    String? error,
  }) = _MovieCastState;
}

@injectable
class MovieCastBloc extends Bloc<MovieCastEvent, MovieCastState> {
  MovieCastBloc(this.getCastByMovieId) : super(MovieCastState()) {
    on<_Fetch>(_mapFetchCastToState);
  }
  final GetCastByMovieId getCastByMovieId;

  FutureOr<void> _mapFetchCastToState(_Fetch event, Emitter<MovieCastState> emit) async {
    emit(state.copyWith(loading: true));

    final result = await getCastByMovieId.execute(event.movieId);

    result.fold(
      (error) => emit(state.copyWith(loading: false, error: error.toString())),
      (data) => emit(state.copyWith(loading: false, cast: data)),
    );
  }
}
