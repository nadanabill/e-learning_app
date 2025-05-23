import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/themes/app_colors.dart';

class PrivacyProfileImageWidget extends StatelessWidget {
  const PrivacyProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          height: 90.h,
          width: 92.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                AppImages.profileImage,
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          top: 62,
          left: 65,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: AppColors.white,
            child: CircleAvatar(
              radius: 18,
              backgroundColor: AppColors.primary60,
              child: Image.asset(
                AppImages.editIcon,
                scale: 2.5,
              ),
            ),
          ),
        )
      ],
    );
  }
}
