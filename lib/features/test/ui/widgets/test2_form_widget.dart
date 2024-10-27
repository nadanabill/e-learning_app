import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/widgets/default_text_form_field_widget.dart';

class Test2FormWidget extends StatelessWidget {
  final bool answer;
  final bool correct;

  const Test2FormWidget({
    super.key,
    required this.answer,
    required this.correct,
  });

  @override
  Widget build(BuildContext context) {
    final testController = TextEditingController();

    return Form(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          DefaultTextFormFieldWidget(
            controller: testController,
            maxLines: 5,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '🔴 Please enter Answer!';
              }
              return null;
            },
          ),
          if (answer)
            Padding(
              padding: const EdgeInsets.only(right: 23.0, bottom: 10),
              child: Image.asset(
                  correct ? AppImages.checkCircle : AppImages.xCircle),
            ),
        ],
      ),
    );
  }
}
