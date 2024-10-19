import 'package:flutter/material.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/helpers/spaces.dart';
import '../../../../../core/helpers/validations.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../core/widgets/app_bar_icon_widget.dart';
import '../../../../../core/widgets/default_button_widget.dart';
import '../../../../../core/widgets/default_text_form_field_widget.dart';

class EmailFormWidget extends StatelessWidget {
  const EmailFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final emailFormKey = GlobalKey<FormState>();
    return Form(
      key: emailFormKey,
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
            AppStrings.whatIsYourEmail,
            style: AppTextStyles.font22Medium,
          ),
          verticalSpace(30),
          DefaultTextFormFieldWidget(
            centerText: true,
            controller: emailController,
            textInputType: TextInputType.emailAddress,
            validator: (value) => Validations.validateEmail(value),
          ),
          verticalSpace(30),
          DefaultButtonWidget(
            text: AppStrings.next,
            onPressed: () {
              if (emailFormKey.currentState!.validate()) {
                Navigator.pushNamed(context, Routes.passwordScreen);
              }
            },
          ),
        ],
      ),
    );
  }
}
