import 'package:device_preview/device_preview.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/app_strings.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/themes/app_theme.dart';

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 667),
        minTextAdapt: true,
        builder: (context, widget) {
          return MaterialApp(
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            title: AppStrings.appName,
            debugShowCheckedModeBanner: false,
            theme: appTheme(),
            initialRoute: Routes.onboardingScreen,
            onGenerateRoute: appRouter.generateRoute,
          );
        });
  }
}