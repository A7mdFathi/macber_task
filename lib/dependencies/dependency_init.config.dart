// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../api/api_service.dart' as _i4;
import '../features/movies/data/repository/movie_repository_impl.dart' as _i6;
import '../features/movies/domain/repository/movie_repository.dart' as _i5;
import '../features/movies/domain/usecase/get_cast_by_movie_id.dart' as _i7;
import '../features/movies/domain/usecase/get_movie_details_usecase.dart'
    as _i8;
import '../features/movies/domain/usecase/get_movies_by_name.dart' as _i9;
import '../features/movies/presentation/details_page/movie_cast_bloc/movie_cast_bloc.dart'
    as _i10;
import '../features/movies/presentation/details_page/movie_details_bloc/movie_details_bloc.dart'
    as _i11;
import '../features/movies/presentation/home_page/bloc/movies_search_bloc.dart'
    as _i12;
import 'register_module.dart' as _i13;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio());
  gh.singleton<_i4.ApiService>(_i4.ApiService(gh<_i3.Dio>()));
  gh.factory<_i5.MovieRepository>(
      () => _i6.MovieRepositoryImpl(apiService: gh<_i4.ApiService>()));
  gh.factory<_i7.GetCastByMovieId>(
      () => _i7.GetCastByMovieId(movieRepository: gh<_i5.MovieRepository>()));
  gh.factory<_i8.GetMovieDetailsUseCase>(
      () => _i8.GetMovieDetailsUseCase(repository: gh<_i5.MovieRepository>()));
  gh.factory<_i9.GetMoviesByName>(
      () => _i9.GetMoviesByName(movieRepository: gh<_i5.MovieRepository>()));
  gh.factory<_i10.MovieCastBloc>(
      () => _i10.MovieCastBloc(gh<_i7.GetCastByMovieId>()));
  gh.factory<_i11.MovieDetailsBloc>(
      () => _i11.MovieDetailsBloc(gh<_i8.GetMovieDetailsUseCase>()));
  gh.factory<_i12.MoviesSearchBloc>(
      () => _i12.MoviesSearchBloc(gh<_i9.GetMoviesByName>()));
  return getIt;
}

class _$RegisterModule extends _i13.RegisterModule {}
