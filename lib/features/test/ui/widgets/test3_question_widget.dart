import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class Test3QuestionWidget extends StatelessWidget {
  final String question;
  const Test3QuestionWidget({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Image.asset(AppImages.person),
        horizontalSpace(20),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 30,
              left: 8,
              right: 8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.black40),
            ),
            child: Text(
            question,
              style: AppTextStyles.font14Regular
                  .copyWith(color: AppColors.black100),
            ),
          ),
        ),
      ],
    );
  }
}
