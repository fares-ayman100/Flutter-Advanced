import 'package:flutter/material.dart';
import 'package:system_design/Core/routing/routes.dart';
import 'package:system_design/Feature/login/ui/login_screen.dart';
import 'package:system_design/Feature/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No Route define for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
