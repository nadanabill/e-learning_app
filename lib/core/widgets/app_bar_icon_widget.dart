import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/app_colors.dart';

class AppBarIconWidget extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  const AppBarIconWidget({super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: onTap,
      child: Container(
        height: 42.h,
        width: 42.w,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: const [
            BoxShadow(
              color: AppColors.black60,
              spreadRadius: 0.3,
              blurRadius: 2,
            )
          ],
        ),
        child:  Icon(icon),
      ),
    );
  }
}
