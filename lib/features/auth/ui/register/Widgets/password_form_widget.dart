import 'package:e_learning/features/auth/logic/register/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/helpers/spaces.dart';
import '../../../../../core/helpers/validations.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../core/widgets/app_bar_icon_widget.dart';
import '../../../../../core/widgets/default_button_widget.dart';
import '../../../../../core/widgets/default_text_form_field_widget.dart';

class PasswordFormWidget extends StatelessWidget {
  const PasswordFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().passwordFormKey,
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
            AppStrings.setUpYourPassword,
            style: AppTextStyles.font22Medium,
          ),
          verticalSpace(30),
          DefaultTextFormFieldWidget(
            controller: context.read<RegisterCubit>().passwordController,
            obscureText: true,
            validator: (value) => Validations.validatePassword(value),
            autoFocus: true,
          ),
          verticalSpace(30),
          DefaultButtonWidget(
            text: AppStrings.start,
            onPressed: () {
              if (context
                  .read<RegisterCubit>()
                  .passwordFormKey
                  .currentState!
                  .validate()) {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  Routes.layout,
                  (route) => false,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
