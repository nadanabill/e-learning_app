import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../core/widgets/app_bar_icon_widget.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImages.profileHeader),
        Positioned(
          bottom: 30.h,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppBarIconWidget(
                      onTap: () {},
                      icon: Icons.arrow_back_ios_rounded,
                    ),
                    Text(
                      'My Profile',
                      style: AppTextStyles.font18Regular,
                    ),
                    AppBarIconWidget(
                      onTap: () {},
                      icon: Icons.menu,
                    ),
                  ],
                ),
                verticalSpace(40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9.0),
                  child: Row(
                    children: [

                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(
                          AppImages.profileImage,
                        ),
                      ),
                      horizontalSpace(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John Doe',
                            style: AppTextStyles.font20RegularBlack100,
                          ),
                          Text(
                            'Newbie',
                            style: AppTextStyles.font12RegularBlack80,
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(AppSvgs.edit),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
