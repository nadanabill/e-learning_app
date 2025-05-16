import 'package:flutter/material.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../data/models/settings_model.dart';
import 'settings_item_widget.dart';

class OtherSettingsWidget extends StatelessWidget {
  const OtherSettingsWidget({super.key});

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
      padding: const EdgeInsets.only(left: 24.0, right: 13.0, top: 24),
      margin: const EdgeInsets.only(left: 33, right: 33, top: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Other Settings',
            style: AppTextStyles.font12RegularBlack60,
          ),
          verticalSpace(18),
          Column(
            children: otherSettingsList
                .map((e) => SettingsItemWidget(settingsModel: e))
                .toList(),
          ),
        ],
      ),
    );
  }
}
