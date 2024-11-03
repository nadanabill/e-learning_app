import 'package:e_learning/features/test/ui/widgets/test3_answer_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/learn_test_cubit.dart';

class Test3AnswersListWidget extends StatelessWidget {
  const Test3AnswersListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LearnTestCubit, LearnTestState>(
      builder: (context, state) {
        return Wrap(
          alignment: WrapAlignment.center,
          spacing: 15,
          runSpacing: 15,
          children:
              context.read<LearnTestCubit>().test3Answers.entries.map((item) {
            return Test3AnswerButtonWidget(item: item);
          }).toList(),
        );
      },
    );
  }
}
