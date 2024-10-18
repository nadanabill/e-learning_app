import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../core/widgets/default_button_widget.dart';

class LearnNowButtonWidget extends StatelessWidget {
  const LearnNowButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultButtonWidget(
        height: 60.h,
        width: 240.w,
        text: '',
        onPressed: () {},
        color: AppColors.primary60,
        widget: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.learnNow,
              style: AppTextStyles.font20Regular,
            ),
            horizontalSpace(30),
            CircleAvatar(
              radius: 18.r,
              backgroundColor: AppColors.primary10,
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
