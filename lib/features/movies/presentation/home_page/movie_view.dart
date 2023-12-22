
import 'package:flutter/material.dart';

import '../../data/model/movie.dart';
import 'movie_item_widget.dart';

class MoviesView extends StatelessWidget {
  const MoviesView({
    super.key,
    required this.movies,
  });

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: width > 500 ? 4 : 2,
        childAspectRatio: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
      ),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return MovieItemWidget(movie: movie);
      },
    );
  }
}

