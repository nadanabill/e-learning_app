import 'package:e_learning/features/test/ui/widgets/test3_answers_list_widget.dart';
import 'package:e_learning/features/test/ui/widgets/test3_question_widget.dart';
import 'package:e_learning/features/test/ui/widgets/test3_sentence_widget.dart';
import 'package:e_learning/features/test/ui/widgets/test_app_bar_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_strings.dart';
import '../../../core/helpers/spaces.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../core/widgets/default_button_widget.dart';

class Test3Screen extends StatelessWidget {
  const Test3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, bool>> items = [
      {"Am": true},
      {"Ujang": false},
      {"Your": false},
      {"What's": false},
      {"I": true},
      {"We": false},
      {"Name": false},
    ];
    final List<Map<String, dynamic>> items1 = [
      {"text": "I", "type": "word"},
      {"text": "Am", "type": "word"},
      {"text": "", "type": "word"},
      {"text": ",", "type": "punctuation"},
      {"text": "", "type": "word"},
      {"text": "", "type": "word"},
      {"text": "", "type": "word"},
      {"text": "?", "type": "punctuation"},
    ];
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TestAppBarWidget(
                        completedSegments: 5,
                        totalSegments: 6,
                      ),
                      Text(
                        'What’s the meaning of this sentence?',
                        style: AppTextStyles.font28Regular.copyWith(
                          color: AppColors.black100,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      verticalSpace(20),
                      const Test3QuestionWidget(
                        question: 'Abdi ujang, nami anjeun saha?',
                      ),
                      verticalSpace(20),
                      Test3SentenceWidget(items: items1),
                      verticalSpace(25),
                      Test3AnswersListWidget(items: items),
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
          )),
    );
  }
}
