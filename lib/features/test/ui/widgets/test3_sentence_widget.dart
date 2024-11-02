import 'package:e_learning/features/test/cubit/learn_test_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class Test3SentenceWidget extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  const Test3SentenceWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30.w,
      runSpacing: 30.h,
      children: items.map((item) {
        if (item["type"] == "word") {
          return Column(
            children: [
              Text(
                item["text"],
                style: AppTextStyles.font20Medium.copyWith(
                    color: BlocProvider.of<LearnTestCubit>(context).state
                            is Test3Success
                        ? AppColors.success100
                        : BlocProvider.of<LearnTestCubit>(context).state
                                is Test3Failure
                            ? AppColors.error100
                            : AppColors.primary100),
              ),
              Container(
                width: 80.w,
                height: 2,
                color: AppColors.black60,
                margin: const EdgeInsets.only(top: 4),
              ),
            ],
          );
        } else if (item["type"] == "punctuation") {
          return Text(
            item["text"],
            style: AppTextStyles.font22Medium.copyWith(
              color: AppColors.black60,
            ),
          );
        }
        return const SizedBox();
      }).toList(),
    );
  }
}
