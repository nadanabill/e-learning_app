import 'package:e_learning/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'font_weight_helper.dart';

class AppTextStyles{
  static const String fontFamily = 'lexend';

  static TextStyle font24Bold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.white,
    //fontFamily: fontFamily,
  );  static TextStyle font16Regular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.white,
    //fontFamily: fontFamily,
  );
  static TextStyle font18Regular = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.white,
    //fontFamily: fontFamily,
  );
}