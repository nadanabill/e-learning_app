import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/helpers/spaces.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../core/widgets/default_button_widget.dart';

class RegisterBodyWidget extends StatelessWidget {
  const RegisterBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.createYourProfile,
            style: AppTextStyles.font32Regular,
          ),
          Text(
            AppStrings.now,
            style: AppTextStyles.font32SemiBold,
          ),
          Text(
            AppStrings.createProfile,
            style: AppTextStyles.font16Regular.copyWith(
              color: AppColors.black60,
            ),
          ),
          verticalSpace(20),
          Row(
            children: [
              horizontalSpace(5),
              SizedBox(
                width: 127.w,
                child: TextButton(
                  child: Text(
                    AppStrings.back,
                    style: AppTextStyles.font16Regular.copyWith(
                      color: AppColors.primary80,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const Spacer(),
              DefaultButtonWidget(
                text: AppStrings.next,
                onPressed: () {
                  Navigator.pushNamed(context, Routes.ageScreen);
                },
                width: 127.w,
              ),
              horizontalSpace(5)
            ],
          ),
        ],
      ),
    );
  }
}
