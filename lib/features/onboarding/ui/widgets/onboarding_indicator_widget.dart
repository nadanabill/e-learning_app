import 'package:e_learning/features/onboarding/data/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/themes/app_colors.dart';
import '../onboarding_screen.dart';

class OnboardingIndicatorWidget extends StatelessWidget {
  const OnboardingIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: SmoothPageIndicator(
        controller: onboardingController,
        count: onboardingList.length,
        effect: ExpandingDotsEffect(
          dotHeight: 10.h,
          dotWidth: 10.w,
          dotColor: AppColors.secondary10.withOpacity(0.7),
          activeDotColor: AppColors.secondary10,
        ),
      ),
    );
  }
}
