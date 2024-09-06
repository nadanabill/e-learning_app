import 'package:e_learning/core/constants/app_strings.dart';
import 'package:e_learning/core/helpers/spaces.dart';
import 'package:e_learning/core/themes/app_text_styles.dart';
import 'package:e_learning/features/home/models/language_learned_model.dart';
import 'package:e_learning/features/home/models/subject_model.dart';
import 'package:e_learning/features/home/ui/widgets/language_learned_list_widget.dart';
import 'package:e_learning/features/home/ui/widgets/subjects_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_colors.dart';


class LearnBodyWidget extends StatelessWidget {
  const LearnBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.r),
          topRight: Radius.circular(50.r),
        ),
      ),
      padding:
      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 4.h,
              width: 70.w,
              decoration: BoxDecoration(
                color: AppColors.black60,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            verticalSpace(10),
            Text(
              AppStrings.languageBeingLearned,
              style: AppTextStyles.font20Medium
                  .copyWith(color: AppColors.black10),
            ),
            verticalSpace(15),
            LanguageLearnedListWidget(
              languageList: languageList,
            ),
            verticalSpace(20),
            SubjectsListWidget(subjects: subjects),
          ],
        ),
      ),
    );
  }
}
