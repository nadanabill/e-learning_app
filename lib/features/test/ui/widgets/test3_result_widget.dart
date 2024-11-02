import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../core/widgets/default_button_widget.dart';

class Test3ResultWidget extends StatelessWidget {
  final List<Map<String, dynamic>> items;
  final bool correct;

  const Test3ResultWidget({
    super.key,
    required this.items,
    required this.correct,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: correct ? const Color(0xffF5FFD8) : const Color(0xffFFDDD8),
        borderRadius: BorderRadius.circular(10.r),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 20.h,
        horizontal: 15.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            correct ? 'That’s Right!' : 'Ups.. That’s not quite right',
            style: AppTextStyles.font20Medium.copyWith(
              color: correct ? AppColors.success100 : AppColors.error100,
            ),
          ),
          verticalSpace(2),
          Text(
            'Answer :',
            style: AppTextStyles.font17Medium.copyWith(
              color: correct ? AppColors.success100 : AppColors.error100,
            ),
          ),
          verticalSpace(10),
          Center(
            child: Wrap(
              spacing: 15.w,
              runSpacing: 15.h,
              children: items.map((item) {
                if (item["type"] == "word") {
                  return Column(
                    children: [
                      Text(
                        item["text"],
                        style: AppTextStyles.font18Regular.copyWith(
                          color: correct
                              ? AppColors.success100
                              : AppColors.error100,
                        ),
                      ),
                      Container(
                        width: 75.w,
                        height: 2.h,
                        color: AppColors.black60,
                        margin: const EdgeInsets.only(top: 4),
                      ),
                    ],
                  );
                } else if (item["type"] == "punctuation") {
                  return Text(
                    item["text"],
                    style: AppTextStyles.font18Regular.copyWith(
                      color: AppColors.black60,
                    ),
                  );
                }
                return const SizedBox();
              }).toList(),
            ),
          ),
          const Spacer(),
          DefaultButtonWidget(
            text: 'Next Question',
            onPressed: () {},
            color: correct ? AppColors.success100 : AppColors.error100,
          ),
        ],
      ),
    );
  }
}
