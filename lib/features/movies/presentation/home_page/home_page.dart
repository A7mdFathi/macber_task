import 'package:flutter/material.dart';
import '../../../../dependencies/dependency_init.dart';
import '../../data/dto/movie_dto.dart';
import 'bloc/movies_search_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'movie_view.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final MoviesSearchBloc moviesSearchBloc = getIt<MoviesSearchBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => moviesSearchBloc,
      child: Scaffold(
        body: _buildBody(context),
      ),
    );
  }

  Padding _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        children: [
          const SizedBox(height: 40),
          TextField(
            enableSuggestions: true,
            maxLines: 1,
            minLines: 1,
            onChanged: (value) {
              if (value.isEmpty) return;
              moviesSearchBloc.add(MoviesSearchEvent.search(dto: MovieDto(query: value, page: 1)));
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              hintText: 'Enter movie name',
              labelText: 'Search for a movie',
            ),
          ),
          Expanded(
            child: BlocBuilder<MoviesSearchBloc, MoviesSearchState>(
              builder: (context, state) {
                if (state.loading == false) {
                  if (state.movies.isNotEmpty) {
                    final movies = state.movies;
                    return MoviesView(movies: movies);
                  } else if (state.error?.isNotEmpty == true) {
                    return _centerText(state.error!);
                  } else if (state.movies.isEmpty && state.searchKeyword == null) {
                    return _centerText("get start searching for a movie");
                  } else {
                    return _centerText(" we could not found a result");
                  }
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Center _centerText(String text) {
    return Center(
      child: Text("${text}", textAlign: TextAlign.center),
    );
  }
}

