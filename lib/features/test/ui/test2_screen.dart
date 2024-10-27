import 'package:e_learning/core/constants/app_strings.dart';
import 'package:e_learning/core/widgets/default_button_widget.dart';
import 'package:e_learning/features/test/ui/widgets/test2_form_widget.dart';
import 'package:e_learning/features/test/ui/widgets/test2_volume_widget.dart';
import 'package:e_learning/features/test/ui/widgets/test_app_bar_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/spaces.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';

class Test2Screen extends StatelessWidget {
  const Test2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TestAppBarWidget(
                        completedSegments: 4, totalSegments: 6),
                    Text(
                      'What’s the meaning of this sentence?',
                      style: AppTextStyles.font28Regular.copyWith(
                        color: AppColors.black100,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    verticalSpace(20),
                    const Test2VolumeWidget(
                        subQuestion: 'Punten, Nami abdi Asep'),
                    verticalSpace(20),
                    const Test2FormWidget(answer: false, correct: true),
                    verticalSpace(50),
                    //Test2ResultWidget(correct: true, answer: 'Permisi, nama saya Asep')
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: DefaultButtonWidget(
              text: AppStrings.checkAnswer, onPressed: () {}),
        ),
      ),
    );
  }
}
