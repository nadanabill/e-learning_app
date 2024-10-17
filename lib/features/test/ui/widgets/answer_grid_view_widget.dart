import 'package:e_learning/features/test/cubit/learn_test_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_colors.dart';
import '../../models/test_model.dart';
import 'answer_button_widget.dart';

class AnswerGridViewWidget extends StatelessWidget {
  final TestModel testModel;

  const AnswerGridViewWidget({super.key, required this.testModel});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LearnTestCubit, LearnTestState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                AnswerButtonWidget(
                  onTap: () {
                    context.read<LearnTestCubit>().selectMultipleTestAnswer(
                          testModel.answers[0],
                          testModel,
                        );
                  },
                  text: testModel.answers[0],
                  color: context.read<LearnTestCubit>().selectedAnswerIndex == 0
                      ? state is LearnTestSuccess
                          ? AppColors.success100
                          : state is LearnTestFailure
                              ? AppColors.error100
                              : AppColors.primary80
                      : AppColors.primary80,
                ),
                const Spacer(),
                AnswerButtonWidget(
                  onTap: () {
                    context.read<LearnTestCubit>().selectMultipleTestAnswer(
                          testModel.answers[1],
                          testModel,
                        );
                  },
                  text: testModel.answers[1],
                  color: context.read<LearnTestCubit>().selectedAnswerIndex == 1
                      ? state is LearnTestSuccess
                          ? AppColors.success100
                          : state is LearnTestFailure
                              ? AppColors.error100
                              : AppColors.primary80
                      : AppColors.primary80,
                ),
              ],
            ),
            verticalSpace(30),
            Row(
              children: [
                AnswerButtonWidget(
                  onTap: () {
                    context.read<LearnTestCubit>().selectMultipleTestAnswer(
                          testModel.answers[2],
                          testModel,
                        );
                  },
                  text: testModel.answers[2],
                  color: context.read<LearnTestCubit>().selectedAnswerIndex == 2
                      ? state is LearnTestSuccess
                          ? AppColors.success100
                          : state is LearnTestFailure
                              ? AppColors.error100
                              : AppColors.primary80
                      : AppColors.primary80,
                ),
                const Spacer(),
                AnswerButtonWidget(
                  onTap: () {
                    context.read<LearnTestCubit>().selectMultipleTestAnswer(
                          testModel.answers[3],
                          testModel,
                        );
                  },
                  text: testModel.answers[3],
                  color: context.read<LearnTestCubit>().selectedAnswerIndex == 3
                      ? state is LearnTestSuccess
                          ? AppColors.success100
                          : state is LearnTestFailure
                              ? AppColors.error100
                              : AppColors.primary80
                      : AppColors.primary80,
                ),
              ],
            ),
          ],
        );

        // return GridView.count(
        //   shrinkWrap: true,
        //   crossAxisCount: 2,
        //   crossAxisSpacing: 15.0,
        //   mainAxisSpacing: 20.0,
        //   childAspectRatio: 2,
        //   children: List.generate(
        //     4,
        //     (index) => AnswerButtonWidget(
        //       onTap: () {
        //         context.read<LearnTestCubit>().selectAnswer(
        //               testModel.answers[index],
        //               testModel,
        //             );
        //       },
        //       text: testModel.answers[index],
        //       color: context.read<LearnTestCubit>().selectedAnswerIndex == index
        //           ? state is LearnTestSuccess
        //               ? AppColors.success100
        //               : state is LearnTestFailure
        //                   ? AppColors.error100
        //                   : AppColors.primary80
        //           : AppColors.primary80,
        //     ),
        //   ),
        // );
      },
    );
  }
}
