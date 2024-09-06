import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_colors.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final int progress;
  const ProgressIndicatorWidget({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 11.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.secondary40,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Container(
          height: 11.h,
          width: (MediaQuery.of(context).size.width - 30 - 100 ) * (progress / 100),
          decoration: BoxDecoration(
            color: AppColors.green1,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
      ],
    );
  }
}
