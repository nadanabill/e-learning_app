import 'package:e_learning/core/constants/app_assets.dart';
import 'package:e_learning/core/helpers/spaces.dart';
import 'package:e_learning/core/themes/app_text_styles.dart';
import 'package:e_learning/features/learn/ui/widgets/learn_header_widget.dart';
import 'package:e_learning/features/learn/ui/widgets/learn_now_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/learn_model.dart';
import 'widgets/learn_item_widget.dart';

class LearnScreen extends StatelessWidget {
  final String subject;

  const LearnScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const LearnHeaderWidget(),
                    Image.asset(AppImages.learnPage),
                    verticalSpace(10),
                    Text(
                      'Learn $subject',
                      style: AppTextStyles.font28Regular,
                    ),
                    verticalSpace(15)
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 18.0.h),
                      child: LearnItemWidget(learn: learnList[index]),
                    );
                  },
                  childCount: learnList.length,
                ),
              ),
              const SliverToBoxAdapter(
                child: LearnNowButtonWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
