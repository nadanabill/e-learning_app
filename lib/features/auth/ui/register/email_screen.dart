import 'package:flutter/material.dart';

import 'Widgets/email_form_widget.dart';


class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: EmailFormWidget(),
        ),
      ),
    );
  }
}
