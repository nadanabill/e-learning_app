import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class PreviousLanguageCardWidget extends StatelessWidget {
  const PreviousLanguageCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //  height: 70.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.black40,
          width: 2,
        ),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(children: [
        Container(
          height: 60.h,
          width: 58.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(37),
          ),
          clipBehavior: Clip.antiAlias,
          child: Image.asset('assets/images/sundanese.png'),
        ),
        horizontalSpace(10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sundanese',
                style: AppTextStyles.font20Medium
                    .copyWith(color: AppColors.black100),
              ),
              Text(
                'Introduction',
                style: AppTextStyles.font14Regular
                    .copyWith(color: AppColors.black80),
              ),
            ],
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.black60,
            ))
      ]),
    );
  }
}
