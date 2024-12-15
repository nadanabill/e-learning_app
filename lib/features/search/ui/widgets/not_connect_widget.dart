import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_text_styles.dart';

class NotConnectWidget extends StatelessWidget {
  const NotConnectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppSvgs.notConnected),
          verticalSpace(20),
          // todo style (Poppins)
          Text(
            AppStrings.notConnected,
            style: AppTextStyles.font20Bold,
          ),
          Text(
            AppStrings.connectedBody,
            style: AppTextStyles.font14Light,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
