import 'package:flutter/material.dart';
import 'dependencies/dependency_init.dart';
import 'routes/app_routes.dart';

void main() {
  configureDependencies();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.initialRoute,
      onGenerateRoute: AppRouteGenerator.generateRoute,
    );
  }
}
