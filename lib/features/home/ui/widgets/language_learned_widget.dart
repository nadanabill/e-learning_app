import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../models/language_learned_model.dart';

class LanguageLearnedWidget extends StatelessWidget {
  final LanguageLearnedModel language;

  const LanguageLearnedWidget({super.key, required this.language});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93.h,
      width: 160.w,
      decoration: BoxDecoration(
        color: AppColors.green2,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                language.name,
                style: AppTextStyles.font12Medium,
              ),
              Text(
                '${language.level} Level',
                style: AppTextStyles.font20Medium,
              ),
              Text(
                '${language.participants} active participants',
                style: AppTextStyles.font10Regular,
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: AppColors.white,
            radius: 20.r,
            child: const Icon(
              Icons.play_arrow,
              color: AppColors.primary60,
            ),
          )
        ],
      ),
    );
  }
}
