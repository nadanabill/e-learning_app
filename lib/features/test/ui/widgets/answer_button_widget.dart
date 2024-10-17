import 'package:e_learning/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_colors.dart';

class AnswerButtonWidget extends StatelessWidget {
  final String text;
  final Color color;

  final VoidCallback onTap;

  const AnswerButtonWidget({
    super.key,
    required this.text,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70.h,
        width: 140.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.r), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.blueAccent.withOpacity(0.3), // Shadow color
              spreadRadius: 3,
              blurRadius: 10, // Soft shadow
              offset: const Offset(5, 5), // Shadow position
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyles.font20Regular.copyWith(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
