import 'package:e_learning/features/Settings/data/models/settings_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class SettingsItemWidget extends StatelessWidget {
  final SettingsModel settingsModel;

  const SettingsItemWidget({super.key, required this.settingsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, left: 7),
      child: InkWell(
        onTap: settingsModel.onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              settingsModel.title,
              style: AppTextStyles.font14Medium,
            ),
            settingsModel.isSwitch
                ? Image.asset(
                    AppImages.toggle,
                    height: 20,
                    width: 32,
                  )
                : Image.asset(
                    AppImages.arrow,
                    color: AppColors.black100,
                  ),
          ],
        ),
      ),
    );
  }
}
