import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_text_styles.dart';

class SearchLanguageWidget extends StatelessWidget {
  const SearchLanguageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: 90.h,
          width: 90.w,
          decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(16)),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(
            AppImages.language1,
          ),
        ),
        verticalSpace(20),
        Text(
          'Sundanese',
          style: AppTextStyles.font14Medium,
        ),
      ],
    );
  }
}
