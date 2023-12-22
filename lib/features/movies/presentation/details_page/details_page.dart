import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../dependencies/dependency_init.dart';
import 'movie_cast_bloc/movie_cast_bloc.dart';

import 'movie_details_bloc/movie_details_bloc.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key, required this.movieId});
  final int movieId;

  final MovieDetailsBloc movieDetailsBloc = getIt<MovieDetailsBloc>();
  final MovieCastBloc movieCastBloc = getIt<MovieCastBloc>();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => movieDetailsBloc..add(MovieDetailsEvent.fetch(movieId))),
        BlocProvider(create: (_) => movieCastBloc..add(MovieCastEvent.fetch(movieId))),
      ],
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
                  builder: (context, state) {
                    if (state.loading == true) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      final movie = state.movie;
                      return Column(
                        children: [
                          const SizedBox(height: 20),
                          CachedNetworkImage(
                            imageUrl: movie?.fullPath ?? '',
                            width: double.infinity,
                            height: 150,
                            fit: BoxFit.cover,
                            errorWidget: (context, url, error) => const Icon(Icons.error),
                          ),
                          const SizedBox(height: 20),
                          Text('${movie?.originalTitle}'),
                          const SizedBox(height: 20),
                          Text('${movie?.overview}'),
                          const SizedBox(height: 20),
                          Text('${movie?.releaseDate}'),
                          const SizedBox(height: 20),
                        ],
                      );
                    }
                  },
                ),
              ),
              SizedBox(
                height: 100,
                child: BlocBuilder<MovieCastBloc, MovieCastState>(
                  builder: (context, state) {
                    if (state.loading == false && state.cast.isNotEmpty) {
                      final cast = state.cast;
                      return ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final item = cast[index];
                            return Column(
                              children: [
                                ClipOval(
                                  child: CachedNetworkImage(
                                    imageUrl: item.fullPath ?? '',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  "${item.name}",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(width: 16),
                          itemCount: cast.length);
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
