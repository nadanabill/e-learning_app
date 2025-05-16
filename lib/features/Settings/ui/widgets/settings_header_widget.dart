import 'package:flutter/material.dart';

import '../../../../core/themes/app_text_styles.dart';
import '../../../../core/widgets/app_bar_icon_widget.dart';

class SettingsHeaderWidget extends StatelessWidget {
  const SettingsHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppBarIconWidget(
            onTap: () {
              Navigator.pop(context);
            },
            icon: Icons.arrow_back_ios_rounded,
          ),
          Text(
            'Settings',
            style: AppTextStyles.font18RegularBlack100,
          ),
          AppBarIconWidget(
            onTap: () {},
            icon: Icons.menu,
          ),
        ],
      ),
    );
  }
}
