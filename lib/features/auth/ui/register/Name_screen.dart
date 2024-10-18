import 'package:flutter/material.dart';

import 'Widgets/name_form_widget.dart';

class NameScreen extends StatelessWidget {
  const NameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: NameFormWidget(),
        ),
      ),
    );
  }
}
