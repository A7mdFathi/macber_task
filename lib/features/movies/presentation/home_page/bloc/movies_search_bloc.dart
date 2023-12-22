import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../data/dto/movie_dto.dart';
import '../../../domain/usecase/get_movies_by_name.dart';
import 'package:rxdart/rxdart.dart';
import '../../../data/model/movie.dart';

part 'movies_search_bloc.freezed.dart';

@freezed
class MoviesSearchEvent with _$MoviesSearchEvent {
  const factory MoviesSearchEvent.started() = _Started;
  const factory MoviesSearchEvent.search({required MovieDto dto}) = _Search;
}

@freezed
class MoviesSearchState with _$MoviesSearchState {
  const factory MoviesSearchState({
    @Default(false) bool loading,
    @Default([]) List<Movie> movies,
    String? error,
    String? searchKeyword,
  }) = _MoviesSearchState;
}

@injectable
class MoviesSearchBloc extends Bloc<MoviesSearchEvent, MoviesSearchState> {
  MoviesSearchBloc(this.getMoviesByName) : super(const MoviesSearchState()) {
    on<_Search>(
      _mapSearchToState,
      transformer: (events, mapper) => events.debounceTime(Duration(milliseconds: 500)).asyncExpand(mapper),
    );
    on<_Started>(
      (event, emit) {},
    );
  }

  final GetMoviesByName getMoviesByName;

  Future<void> _mapSearchToState(_Search event, Emitter<MoviesSearchState> emit) async {
    emit(state.copyWith(loading: true,searchKeyword: event.dto.query));

    final result = await getMoviesByName.execute(event.dto);

    result.fold(
      (l) => emit(state.copyWith(loading: false, error: l.toString())),
      (r) => emit(state.copyWith(loading: false, movies: r)),
    );
  }
}
