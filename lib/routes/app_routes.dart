import 'package:flutter/material.dart';

import '../features/movies/presentation/details_page/details_page.dart';
import '../features/movies/presentation/home_page/home_page.dart';

abstract class AppRoute {
  static const String initialRoute = '/';
  static const String details = '/details';
}

abstract class AppRouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoute.initialRoute:
        return MaterialPageRoute(builder: (_) =>  HomePage());

      case AppRoute.details:
        return MaterialPageRoute(builder: (_) =>  DetailsPage(movieId: settings.arguments as int,));

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('Route not found'),
            ),
          );
        });
    }
  }
  // fallback route
}
