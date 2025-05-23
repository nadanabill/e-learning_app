import 'package:e_learning/features/privacy/ui/widgets/privacy_profile_image_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/spaces.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../core/widgets/app_bar_icon_widget.dart';
import 'widgets/privacy_form_widget.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset('assets/images/privacy.png',
                width: double.infinity, fit: BoxFit.fill),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppBarIconWidget(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          icon: Icons.arrow_back_ios_rounded,
                        ),
                        Text(
                          'Privacy',
                          style: AppTextStyles.font18Regular,
                        ),
                        horizontalSpace(42)
                      ],
                    ),
                    verticalSpace(15),
                    Center(
                      child: Column(
                        children: [
                          const PrivacyProfileImageWidget(),
                          verticalSpace(6),
                          Text(
                            'John Doe',
                            style: AppTextStyles.font18MediumBlack100,
                          ),
                          verticalSpace(5),
                          Text(
                            'Newbie',
                            style: AppTextStyles.font13RegularGray,
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(15),
                    const PrivacyFormWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
