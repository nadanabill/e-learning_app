import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/helpers/validations.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../core/widgets/default_button_widget.dart';
import '../../../../core/widgets/default_text_form_field_widget.dart';

class PrivacyFormWidget extends StatelessWidget {
  const PrivacyFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    nameController.text = 'John Doe';
    final usernameController = TextEditingController();
    usernameController.text = 'JOHNDoe';
    final emailController = TextEditingController();
    emailController.text = 'john.doe@example.com';
    final passwordController = TextEditingController();
    passwordController.text = '12345678';
    final ageController = TextEditingController();
    ageController.text = '20';

    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name',
            style: AppTextStyles.font16MediumBlack100,
          ),
          verticalSpace(8),
          DefaultTextFormFieldWidget(
            controller: nameController,
            validator: (name) => Validations.validateName(name),
            textColor: AppColors.gray,
          ),
          verticalSpace(5),
          Text(
            'Username',
            style: AppTextStyles.font16MediumBlack100,
          ),
          verticalSpace(8),
          DefaultTextFormFieldWidget(
            obscureText: true,
            controller: usernameController,
            validator: (username) => Validations.validateName(username),
            textColor: AppColors.gray,
            isValid: true,
          ),
          verticalSpace(5),
          Text(
            'Email',
            style: AppTextStyles.font16MediumBlack100,
          ),
          verticalSpace(8),
          DefaultTextFormFieldWidget(
            controller: emailController,
            validator: (email) => Validations.validateEmail(email),
            textColor: AppColors.gray,
            textInputType: TextInputType.emailAddress,
          ),
          verticalSpace(5),
          Text(
            'Password',
            style: AppTextStyles.font16MediumBlack100,
          ),
          verticalSpace(8),
          DefaultTextFormFieldWidget(
            controller: passwordController,
            validator: (password) {
              if (passwordController.text != '123') {
                return 'Wrong password';
              } else {
                Validations.validatePassword(password);
              }
              return null;
            },
            textColor: Colors.red,
            obscureText: true,
            onChange: (value) =>
                Validations.validatePassword(nameController.text),
            isValid: false,
            onFieldSubmitted: (value) {
              if (formKey.currentState!.validate()) {}
            },
          ),
          verticalSpace(15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Age',
                      style: AppTextStyles.font11RegularGray,
                    ),
                    SizedBox(
                      width: 50.w,
                      child: TextFormField(
                        controller: ageController,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.black40,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.black40,
                            ),
                          ),
                          disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.black40,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.black40,
                            ),
                          ),
                        ),
                        style: AppTextStyles.font13MediumBlack100,
                        keyboardType: TextInputType.number,
                        validator: (age) => Validations.validateAge(age),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Text('Joined From', style: AppTextStyles.font10RegularGray),
              horizontalSpace(9),
              Text('5 Jan 2022', style: AppTextStyles.font13MediumBlack100),
            ],
          ),
          verticalSpace(30),
          DefaultButtonWidget(onPressed: () {
            if(formKey.currentState!.validate()){}
          }, text: 'Save'),
        ],

      ),

    );
  }
}
