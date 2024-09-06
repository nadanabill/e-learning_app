import 'package:e_learning/features/home/models/subject_model.dart';
import 'package:e_learning/features/home/ui/widgets/progress_Indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class SubjectItemWidget extends StatelessWidget {
  final SubjectModel subject;
  const SubjectItemWidget({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.black40, width: 1.5),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: Row(
        children: [
          Image.asset(subject.image),
          horizontalSpace(15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subject.name,
                  style: AppTextStyles.font20Medium
                      .copyWith(color: AppColors.black80),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ProgressIndicatorWidget(
                        progress: subject.progress,
                      ),
                    ),
                    horizontalSpace(15),
                    Text(
                      '${subject.progress}%',
                      style: AppTextStyles.font10Regular
                          .copyWith(color: AppColors.black100),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
