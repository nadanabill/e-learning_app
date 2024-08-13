import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'onboarding_buttons_widget.dart';
import 'onboarding_divider_widget.dart';
import 'onboarding_indicator_widget.dart';
import 'onboarding_texts_widget.dart';
class OnboardingListWidget extends StatelessWidget {
  const OnboardingListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: OnboardingDividerWidget(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20.h,
          ),
        ),
        const SliverToBoxAdapter(
          child: OnboardingTextsWidget(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 30.h,
          ),
        ),
        const SliverToBoxAdapter(
          child: OnboardingIndicatorWidget(),
        ),
        const SliverFillRemaining(
          hasScrollBody: false,
          child: OnboardingButtonsWidget(),
        ),
      ],
    );
  }
}