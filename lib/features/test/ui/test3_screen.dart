import 'package:e_learning/features/test/cubit/learn_test_cubit.dart';
import 'package:e_learning/features/test/models/test3_model.dart';
import 'package:e_learning/features/test/ui/widgets/test3_answers_list_widget.dart';
import 'package:e_learning/features/test/ui/widgets/test3_question_widget.dart';
import 'package:e_learning/features/test/ui/widgets/test3_result_widget.dart';
import 'package:e_learning/features/test/ui/widgets/test3_sentence_widget.dart';
import 'package:e_learning/features/test/ui/widgets/test_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/app_strings.dart';
import '../../../core/helpers/spaces.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../core/widgets/default_button_widget.dart';

class Test3Screen extends StatelessWidget {
  const Test3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LearnTestCubit, LearnTestState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        const TestAppBarWidget(
                          completedSegments: 5,
                          totalSegments: 6,
                        ),
                        Text(
                          model.question,
                          style: AppTextStyles.font28Regular.copyWith(
                            color: AppColors.black100,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        verticalSpace(20),
                        Test3QuestionWidget(
                          question: model.subQuestion,
                        ),
                        verticalSpace(20),
                        Test3SentenceWidget(
                          items: context.read<LearnTestCubit>().items,
                        ),
                        verticalSpace(25),
                        if (!context.read<LearnTestCubit>().test3Answer)
                          const Test3AnswersListWidget(),
                        verticalSpace(20),
                        if (context.read<LearnTestCubit>().test3Answer)
                          Test3ResultWidget(
                            items: model.answer,
                            correct: state is Test3Success,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: !context.read<LearnTestCubit>().test3Answer
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: DefaultButtonWidget(
                        widget: state is Test3Loading
                            ? const CircularProgressIndicator(
                                color: AppColors.white,
                              )
                            : null,
                        text: AppStrings.checkAnswer,
                        onPressed: () {
                          context.read<LearnTestCubit>().answerTest3(model);
                        }),
                  )
                : const SizedBox(),
          ),
        );
      },
    );
  }
}
