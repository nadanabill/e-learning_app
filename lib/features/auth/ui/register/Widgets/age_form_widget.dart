import 'package:flutter/material.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/helpers/spaces.dart';
import '../../../../../core/helpers/validations.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../core/widgets/app_bar_icon_widget.dart';
import '../../../../../core/widgets/default_button_widget.dart';
import '../../../../../core/widgets/default_text_form_field_widget.dart';

class AgeFormWidget extends StatelessWidget {
  const AgeFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ageController = TextEditingController();
    final ageFormKey = GlobalKey<FormState>();
    return Form(
      key: ageFormKey,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: AppBarIconWidget(
              onTap: () {
                Navigator.pop(context);
              },
              icon: Icons.arrow_back_ios_rounded,
            ),
          ),
          verticalSpace(30),
          Text(
            AppStrings.howOldAreYou,
            style: AppTextStyles.font22Medium,
          ),
          verticalSpace(30),
          DefaultTextFormFieldWidget(
            centerText: true,
            controller: ageController,
            textInputType: TextInputType.number,
            validator: (value) => Validations.validateAge(value),
          ),
          verticalSpace(30),
          DefaultButtonWidget(
            text: AppStrings.next,
            onPressed: () {
              if (ageFormKey.currentState!.validate()) {
                Navigator.pushNamed(context, Routes.nameScreen);
              }
            },
          ),
        ],
      ),
    );
  }
}
