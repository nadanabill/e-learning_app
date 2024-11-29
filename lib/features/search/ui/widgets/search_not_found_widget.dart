import 'package:e_learning/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_text_styles.dart';

class SearchNotFoundWidget extends StatelessWidget {
  const SearchNotFoundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppSvgs.notFound,
            height: 190.h,
            width: 284.w,
          ),
          verticalSpace(20),
         // todo style (Poppins)
          Text(
            AppStrings.notFound,
            style: AppTextStyles.font20Bold,
          ),
          Text(
            AppStrings.notFoundBody,
            style: AppTextStyles.font14Light,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
