import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_project/core/routing/routes.dart';
import 'package:web_project/features/home/ui/screens/home_web_screen.dart';
import 'package:web_project/features/not_found/not_found_screen.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // case Routes.splashScreen:
      //   return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeWebScreen());
      default:
        return MaterialPageRoute(
            builder: (context) =>
                NotFoundScreen(routeSettingsName: routeSettings.name));
    }
  }
}
