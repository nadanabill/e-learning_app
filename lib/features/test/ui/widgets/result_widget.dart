import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../core/widgets/default_button_widget.dart';

class ResultWidget extends StatelessWidget {
  final bool correct;
  final String answer;

  const ResultWidget({super.key, required this.correct, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: correct ? const Color(0xffF5FFD8) : const Color(0xffFFDDD8),
        borderRadius: BorderRadius.circular(10.r),
      ),
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            correct ? 'Amazing!!' : 'Ups.. that’s wrong',
            style: AppTextStyles.font20Medium
                .copyWith(color: AppColors.success100),
          ),
          verticalSpace(2),
          Row(
            children: [
              Text(
                'Answer:  ',
                style: AppTextStyles.font17Medium.copyWith(
                  color: correct ? AppColors.success100 : AppColors.error100,
                ),
              ),
              Text(
                answer,
                style: AppTextStyles.font13Regular.copyWith(
                  color: correct ? AppColors.success100 : AppColors.error100,
                ),
              ),
            ],
          ),
          verticalSpace(5),
          DefaultButtonWidget(
            text: 'Next Question',
            onPressed: () {},
            color: AppColors.success100,
          ),
        ],
      ),
    );
  }
}
