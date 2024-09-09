import 'package:e_learning/features/learn/models/learn_model.dart';
import 'package:e_learning/features/learn/ui/widgets/learn_progress_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class LearnItemWidget extends StatelessWidget {
  final LearnModel learn;

  const LearnItemWidget({super.key, required this.learn});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.black40, width: 1.5),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        child: Row(
          children: [
            Container(
              height: 65.h,
              width: 51.w,
              decoration: BoxDecoration(
                  color: learn.mainColor,
                  borderRadius: BorderRadius.circular(8.r)),
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Image.asset(
                    learn.image,
                    height: 32.h,
                    width: 32.w,
                  ),
                  Text(
                    'Level ${learn.level}',
                    style: AppTextStyles.font10Medium,
                  ),
                ],
              ),
            ),
            horizontalSpace(15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    learn.name,
                    style: AppTextStyles.font14Regular.copyWith(
                      color: AppColors.black10,
                    ),
                  ),
                  Text(
                    learn.time,
                    style: AppTextStyles.font10Regular.copyWith(
                      color: AppColors.black10,
                    ),
                  ),
                  verticalSpace(5),
                  Row(
                    children: [
                      Expanded(child: LearnProgressWidget(learn: learn)),
                      horizontalSpace(30),
                      Text(
                        '${learn.progress}/${learn.total}',
                        style: AppTextStyles.font10Regular.copyWith(
                          color: AppColors.black10,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
