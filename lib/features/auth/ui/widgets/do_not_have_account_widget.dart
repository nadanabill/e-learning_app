import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class DoNotHaveAccountWidget extends StatelessWidget {
  const DoNotHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.doesNotHaveAccount,
          style: AppTextStyles.font14Regular.copyWith(
            color: AppColors.grey,
          ),
        ),
        horizontalSpace(3),
        TextButton(
          onPressed: () {},
          child: Text(
            AppStrings.register,
            style: AppTextStyles.font14Regular.copyWith(
              color: AppColors.primary60,
            ),
          ),
        ),
      ],
    );
  }
}
