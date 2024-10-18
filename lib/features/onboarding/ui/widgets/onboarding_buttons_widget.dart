import 'package:e_learning/core/constants/app_strings.dart';
import 'package:e_learning/core/widgets/default_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class OnboardingButtonsWidget extends StatelessWidget {
  const OnboardingButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        const Spacer(),
        Row(
          children: [
            DefaultButtonWidget(
              text: '',
              onPressed: () {
                Navigator.pushNamed(context, Routes.register);
              },
              width: 140.w,
              color: AppColors.primary60,
              hasSideBorder: true,
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.register,
                    style: AppTextStyles.font16Regular,
                  ),
                  Image.asset(AppImages.arrow),
                ],
              ),
            ),
            const Spacer(),
            DefaultButtonWidget(
              text: '',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  Routes.login,
                  (route) => false,
                );
              },
              color: AppColors.white,
              width: 140.w,
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: AppTextStyles.font16Regular
                        .copyWith(color: AppColors.primary60),
                  ),
                  Image.asset(
                    AppImages.arrow,
                    color: AppColors.primary60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
