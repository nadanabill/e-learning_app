import 'package:flutter/material.dart';

import '../helpers/spaces.dart';
import '../routing/routes.dart';
import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';
import '../widgets/default_button_widget.dart';

void showLogoutDialog(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: AppColors.white,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.sizeOf(context).height * 0.40,
        padding:
            const EdgeInsets.only(left: 23.0, right: 23.0, bottom: 19, top: 30),
        child: Column(
          children: [
            Container(
              height: 5,
              width: 48,
              decoration: BoxDecoration(
                color: AppColors.black40,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            verticalSpace(30),
            Text(
              'Logout Account?',
              style: AppTextStyles.font24BoldBlack100,
              textAlign: TextAlign.center,
            ),
            verticalSpace(8),
            Text(
              'Are you sure want to logout this account?',
              style: AppTextStyles.font16RegularBlack100,
              textAlign: TextAlign.center,
            ),
            verticalSpace(35),
            DefaultButtonWidget(
              text: 'Logout',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  Routes.login,
                  (_) => false,
                );
              },
              borderRadius: 48,
              height: 48,
              color: const Color(0xFFFF2442),
            ),
            verticalSpace(8),
            TextButton(
              child: Text(
                'Cancel',
                style: AppTextStyles.font16RegularBlack100,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    },
  );
}
