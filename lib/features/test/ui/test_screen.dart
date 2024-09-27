import 'package:e_learning/core/constants/app_assets.dart';
import 'package:e_learning/core/helpers/spaces.dart';
import 'package:e_learning/core/themes/app_colors.dart';
import 'package:e_learning/core/themes/app_text_styles.dart';
import 'package:e_learning/core/widgets/app_bar_icon_widget.dart';
import 'package:e_learning/features/test/models/test_model.dart';
import 'package:e_learning/features/test/ui/widgets/answer_grid_view_widget.dart';
import 'package:e_learning/features/test/ui/widgets/progress_bar_widget.dart';
import 'package:e_learning/features/test/ui/widgets/result_widget.dart';
import 'package:flutter/material.dart';

final TestModel testModel = testList[0];

class TestScreen extends StatelessWidget {
  const TestScreen({
    super.key,
  });

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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppBarIconWidget(
                          onTap: () {},
                          icon: Icons.arrow_back_ios_rounded,
                        ),
                        horizontalSpace(5),
                        const Expanded(
                          child: ProgressBarWidget(
                            completedSegments: 3,
                            totalSegments: 10,
                          ),
                        ),
                        horizontalSpace(40),
                      ],
                    ),
                    Text(
                      testModel.question,
                      style: AppTextStyles.font28Regular
                          .copyWith(color: AppColors.black100),
                      textAlign: TextAlign.center,
                    ),
                    verticalSpace(30),
                    const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 93,
                      backgroundImage: AssetImage(AppImages.testPageSuccess),
                    ),
                    verticalSpace(40),
                    AnswerGridViewWidget(testModel: testModel),
                    verticalSpace(30),
                    ResultWidget(
                      correct: true,
                      answer: testModel.correctAnswer,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
