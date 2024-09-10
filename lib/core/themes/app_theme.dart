import 'package:e_learning/core/themes/app_colors.dart';
import 'package:e_learning/core/themes/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData appTheme() => ThemeData(
      primaryColor: AppColors.primary100,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
          statusBarColor: Colors.transparent,
        ),
      ),
      scaffoldBackgroundColor: AppColors.white,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          color: AppColors.primary60,
          fontSize: 12.sp,
          fontWeight: FontWeightHelper.regular,
        ),
        unselectedLabelStyle: TextStyle(
          color: AppColors.black100,
          fontSize: 12.sp,
          fontWeight: FontWeightHelper.regular,
        ),
      ),
    );
