import 'package:flutter/material.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../core/utils/logout_dialog.dart';

class MyAccountWidget extends StatelessWidget {
  const MyAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.black40,
          width: 1,
        ),
        color: Colors.transparent,
      ),
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 31, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Account',
            style: AppTextStyles.font12RegularBlack60,
          ),
          verticalSpace(10),
          InkWell(
            onTap: () {},
            child: Text(
              'Switch to Another Account',
              style: AppTextStyles.font14Medium.copyWith(
                color: const Color(0xFF3E5FAF),
              ),
            ),
          ),
          verticalSpace(16),
          InkWell(
            onTap: () {
              showLogoutDialog(context);
            },
            child: Text(
              'Logout Account',
              style: AppTextStyles.font14Medium.copyWith(
                color: const Color(0xFFFB6D64),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
