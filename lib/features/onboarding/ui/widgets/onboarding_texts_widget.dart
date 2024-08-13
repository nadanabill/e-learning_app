import 'package:e_learning/core/helpers/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_text_styles.dart';
import '../../data/models/onboarding_model.dart';
import '../onboarding_screen.dart';

class OnboardingTextsWidget extends StatelessWidget {
  const OnboardingTextsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 160.h,
        child: PageView.builder(
          controller: onboardingController,
          itemCount: onboardingList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Column(
            children: [
              Text(
                onboardingList[index].title,
                style: AppTextStyles.font24Bold,
                textAlign: TextAlign.center,
              ),
              verticalSpace(10),
              Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 20.0.w),
                child: Text(
                  onboardingList[index].subtitle,
                  style: AppTextStyles.font16Regular,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),

    );
  }
}
