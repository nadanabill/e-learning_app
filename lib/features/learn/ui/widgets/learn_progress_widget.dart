import 'package:e_learning/features/learn/models/learn_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_colors.dart';

class LearnProgressWidget extends StatelessWidget {
  final LearnModel learn;

  const LearnProgressWidget({super.key, required this.learn});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 7.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.black40,
            borderRadius: BorderRadius.circular(5.r),
          ),
        ),
        Container(
          height: 7.h,
          width: (MediaQuery.of(context).size.width - 75.w) /
              (learn.total / learn.progress),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                learn.secondaryColor,
                learn.mainColor,
              ],
            ),
            //  color: AppColors.green2,
            borderRadius: BorderRadius.circular(5.r),
          ),
        ),
      ],
    );
  }
}
