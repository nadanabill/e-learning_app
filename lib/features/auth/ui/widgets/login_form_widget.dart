import 'package:e_learning/core/constants/app_strings.dart';
import 'package:e_learning/features/auth/logic/login/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/helpers/validations.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../core/widgets/default_button_widget.dart';
import '../../../../core/widgets/default_text_form_field_widget.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit,LoginState>(
      builder: (context, state) {
        return Form(
          key: context.read<LoginCubit>().formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.inputYourEmail,
                style: AppTextStyles.font16Medium,
              ),
              DefaultTextFormFieldWidget(
                textInputType: TextInputType.emailAddress,
                controller: context.read<LoginCubit>().emailController,
                validator: (email) => Validations.validateEmail(email),
              ),
              verticalSpace(10),
              Text(
                AppStrings.inputYourPassword,
                style: AppTextStyles.font16Medium,
              ),
              DefaultTextFormFieldWidget(
                obscureText: true,
                controller: context.read<LoginCubit>().passwordController,
                validator: (password) => Validations.validatePassword(password),
                onFieldSubmitted: (value) {},
              ),
              verticalSpace(20),
              DefaultButtonWidget(
                text: AppStrings.login,
                height: 58.h,
                onPressed: () {
                  context.read<LoginCubit>().login();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
