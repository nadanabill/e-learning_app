import 'package:e_learning/core/constants/app_assets.dart';
import 'package:e_learning/core/helpers/spaces.dart';
import 'package:e_learning/core/themes/app_colors.dart';
import 'package:e_learning/features/onboarding/ui/widgets/onboarding_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final PageController onboardingController = PageController();

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(AppImages.logo),
            ),
            verticalSpace(30),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.primary60,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 10.w),
                child: const OnboardingListWidget(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
