import 'package:e_learning/features/learn/ui/learn_screen.dart';
import 'package:flutter/material.dart';
import '../../features/home/ui/layout_screen.dart';
import '../../features/onboarding/ui/onboarding_screen.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.layout:
        return MaterialPageRoute(builder: (_) => const LayoutScreen());
      case Routes.learn:
        return MaterialPageRoute(builder: (_) => const LearnScreen());

      case Routes.test:
        return MaterialPageRoute(
          builder: (_) => TestScreen(
          ),
        );
      default:
        return null;
    }
  }
}
