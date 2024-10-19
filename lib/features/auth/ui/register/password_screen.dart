import 'package:flutter/material.dart';

import 'Widgets/password_form_widget.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: PasswordFormWidget(),
        ),
      ),
    );
  }
}
