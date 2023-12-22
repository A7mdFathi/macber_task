import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../routes/app_routes.dart';
import '../../data/model/movie.dart';

class MovieItemWidget extends StatelessWidget {
  const MovieItemWidget({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoute.details, arguments: movie.id);
      },
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        child: CachedNetworkImage(
          imageUrl: movie.fullPath ?? '',
          errorWidget: (context, url, error) => DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.redAccent.shade100,
              ),
              child: const Icon(Icons.error)),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
