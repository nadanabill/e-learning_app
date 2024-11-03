import 'package:e_learning/features/test/cubit/learn_test_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class Test3AnswerButtonWidget extends StatelessWidget {
  final MapEntry item;

  const Test3AnswerButtonWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LearnTestCubit, LearnTestState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            context.read<LearnTestCubit>().selectTest3Answers(item.key);
          },
          child: Container(
            margin: const EdgeInsets.all(2),
            width: 80.w,
            height: 45.h,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: item.value ? AppColors.black40 : AppColors.primary80,
                  spreadRadius: 1,
                  blurRadius: 1, // Soft shadow
                  offset: const Offset(0, 3),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: item.value ? AppColors.black20 : AppColors.primary60,
            ),
            child: Center(
              child: Text(
                item.key,
                //todo style family
                style: AppTextStyles.font18Regular,
              ),
            ),
          ),
        );
      },
    );
  }
}
