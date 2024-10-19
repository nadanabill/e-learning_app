import 'package:flutter/material.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/helpers/spaces.dart';
import '../../../../../core/helpers/validations.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../core/widgets/app_bar_icon_widget.dart';
import '../../../../../core/widgets/default_button_widget.dart';
import '../../../../../core/widgets/default_text_form_field_widget.dart';

class NameFormWidget extends StatelessWidget {
  const NameFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final nameFormKey = GlobalKey<FormState>();
    return Form(
      key: nameFormKey,
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
            AppStrings.whatIsYourName,
            style: AppTextStyles.font22Medium,
          ),
          verticalSpace(30),
          DefaultTextFormFieldWidget(
            centerText: true,
            controller: nameController,
            textInputType: TextInputType.number,
            validator: (value) => Validations.validateName(value),
          ),
          verticalSpace(30),
          DefaultButtonWidget(
            text: AppStrings.next,
            onPressed: () {
              if (nameFormKey.currentState!.validate()) {
                Navigator.pushNamed(context, Routes.emailScreen);

              }
            },
          ),
        ],
      ),
    );
  }
}
