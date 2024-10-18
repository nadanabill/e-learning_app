import 'package:e_learning/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/themes/app_text_styles.dart';

class HomeHeaderWidget extends StatelessWidget {
  final String name;

  const HomeHeaderWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 30.w, bottom: 10.h),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hi, $name!",
                  style: AppTextStyles.font22Medium.copyWith(
                    color: AppColors.black100,
                  ),
                ),
                Text(
                  AppStrings.whatLocalLanguage,
                  style: AppTextStyles.font14Regular,
                ),
              ],
            ),
          ),
          Image.asset(AppImages.home),
        ],
      ),
    );
  }
}
