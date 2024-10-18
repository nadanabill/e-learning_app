import 'package:e_learning/core/constants/app_assets.dart';
import 'package:e_learning/core/helpers/spaces.dart';
import 'package:e_learning/features/auth/logic/login/login_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/do_not_have_account_widget.dart';
import 'widgets/login_form_widget.dart';
import 'widgets/login_with_google_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
              child: Column(
                children: [
                  Image.asset(AppImages.logo),
                  verticalSpace(50),
                  const LoginFormWidget(),
                  verticalSpace(20),
                  const LoginWithGoogleWidget(),
                  verticalSpace(20),
                  const DoNotHaveAccountWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
