import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../models/test_model.dart';
import 'answer_button_widget.dart';

class AnswerGridViewWidget extends StatelessWidget {
  final TestModel testModel;

  const AnswerGridViewWidget({super.key, required this.testModel});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 53.0,
      mainAxisSpacing: 30.0,
      childAspectRatio: 2,
      children: List.generate(
        4,
        (index) => AnswerButtonWidget(
          text: testModel.answers[index],
          color: AppColors.primary80,
        ),
      ),
    );
  }
}
