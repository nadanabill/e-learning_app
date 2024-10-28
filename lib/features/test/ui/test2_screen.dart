import 'package:e_learning/core/constants/app_strings.dart';
import 'package:e_learning/core/widgets/default_button_widget.dart';
import 'package:e_learning/features/test/cubit/learn_test_cubit.dart';
import 'package:e_learning/features/test/ui/widgets/test2_form_widget.dart';
import 'package:e_learning/features/test/ui/widgets/test2_volume_widget.dart';
import 'package:e_learning/features/test/ui/widgets/test_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helpers/spaces.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../models/test2_model.dart';
import 'widgets/test2_result_widget.dart';

class Test2Screen extends StatelessWidget {
  const Test2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LearnTestCubit, LearnTestState>(
      builder: (context, state) {
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
                        const TestAppBarWidget(completedSegments: 4, totalSegments: 6),
                        Text(
                          test2Questions[0].question,
                          style: AppTextStyles.font28Regular.copyWith(
                            color: AppColors.black100,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        verticalSpace(20),
                        Test2VolumeWidget(
                          subQuestion: test2Questions[0].subQuestion,
                        ),
                        verticalSpace(20),
                        Test2FormWidget(
                          answer: context.read<LearnTestCubit>().test2Answer,
                          correct: state is LearnTestSuccess,
                        ),
                        verticalSpace(50),
                        if (context.read<LearnTestCubit>().test2Answer)
                          Test2ResultWidget(
                            correct: state is Test2Success,
                            answer: test2Questions[0].answer,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: !context.read<LearnTestCubit>().test2Answer
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: DefaultButtonWidget(
                        widget: state is Test2Loading
                            ? const CircularProgressIndicator(
                                color: AppColors.white,
                              )
                            : null,
                        text: AppStrings.checkAnswer,
                        onPressed: () {
                          context
                              .read<LearnTestCubit>()
                              .answerTest2(test2Questions[0]);
                        }),
                  )
                : const SizedBox(),
          ),
        );
      },
    );
  }
}
