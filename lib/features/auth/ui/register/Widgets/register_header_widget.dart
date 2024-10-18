import 'package:flutter/material.dart';

import '../../../../../core/constants/app_assets.dart';

class RegisterHeaderWidget extends StatelessWidget {
  const RegisterHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.5,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            AppImages.registerShape,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Image.asset(AppImages.registerImage),
        ],
      ),
    );
  }
}
