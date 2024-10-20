import 'package:e_learning/core/di/dependency_injection.dart';
import 'package:e_learning/features/auth/logic/login/login_cubit.dart';
import 'package:e_learning/features/auth/logic/register/register_cubit.dart';
import 'package:e_learning/features/auth/ui/login/login_screen.dart';
import 'package:e_learning/features/auth/ui/register/Name_screen.dart';
import 'package:e_learning/features/auth/ui/register/age_screen.dart';
import 'package:e_learning/features/auth/ui/register/email_screen.dart';
import 'package:e_learning/features/learn/ui/learn_screen.dart';
import 'package:e_learning/features/test/cubit/learn_test_cubit.dart';
import 'package:e_learning/features/test/ui/test_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/auth/ui/register/password_screen.dart';
import '../../features/auth/ui/register/register_screen.dart';
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
        final subject = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => LearnScreen(
            subject: subject,
          ),
        );

      case Routes.test:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LearnTestCubit>(),
            child: const TestScreen(),
          ),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.register:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<RegisterCubit>(),
            child: const RegisterScreen(),
          ),
        );
      case Routes.ageScreen:
        final ctx = settings.arguments as BuildContext;
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: BlocProvider.of<RegisterCubit>(ctx),
            child: const AgeScreen(),
          ),
        );
      case Routes.nameScreen:
        final ctx = settings.arguments as BuildContext;
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: BlocProvider.of<RegisterCubit>(ctx),
            child: const NameScreen(),
          ),
        );
      case Routes.emailScreen:
        final ctx = settings.arguments as BuildContext;
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: BlocProvider.of<RegisterCubit>(ctx),
            child: const EmailScreen(),
          ),
        );
      case Routes.passwordScreen:
        final ctx = settings.arguments as BuildContext;
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: BlocProvider.of<RegisterCubit>(ctx),
            child: const PasswordScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
