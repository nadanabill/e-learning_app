import 'package:flutter/material.dart';

import 'test3_answer_button_widget.dart';

class Test3AnswersListWidget extends StatelessWidget {
  final List<Map<String, bool>> items;

  const Test3AnswersListWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 15,
      runSpacing: 15,
      children: items.map((item) {
        return Test3AnswerButtonWidget(item: item);
      }).toList(),
    );
  }
}
