import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_colors.dart';

class OnboardingDividerWidget extends StatelessWidget {
  const OnboardingDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 4.h,
        width: 70.w,
        decoration: BoxDecoration(
          color: AppColors.secondary10,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
