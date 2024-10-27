import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class Test2VolumeWidget extends StatelessWidget {
  final String subQuestion;

  const Test2VolumeWidget({super.key, required this.subQuestion});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppImages.volumeButton),
        horizontalSpace(10),
        Expanded(
          child: Text(
            subQuestion,
            style:
                AppTextStyles.font18Regular.copyWith(color: AppColors.black100),
          ),
        ),
      ],
    );
  }
}
