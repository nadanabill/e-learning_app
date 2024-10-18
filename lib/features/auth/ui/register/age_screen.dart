import 'package:e_learning/core/constants/app_strings.dart';
import 'package:e_learning/features/auth/ui/register/Widgets/age_form_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/app_text_styles.dart';

class AgeScreen extends StatelessWidget {
  const AgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: AgeFormWidget(),
        ),
        floatingActionButtonLocation:  FloatingActionButtonLocation.miniEndFloat,
        floatingActionButton: Align(
          alignment: Alignment.bottomRight,
          child: TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            onPressed: () {},
            child: Text(AppStrings.skip, style: AppTextStyles.font16Medium),
          ),
        ),
      ),
    );
  }
}
