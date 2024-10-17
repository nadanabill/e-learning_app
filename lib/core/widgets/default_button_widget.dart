import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';

class DefaultButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Widget? widget;
  final double? width;
  final double? height;
  final Color? color;
  final bool hasSideBorder;
  final Color? borderColor;
  final double? borderRadius;
  final double? borderWidth;
  final double? elevation;

  const DefaultButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.widget,
    this.width,
    this.height,
    this.color,
    this.hasSideBorder = false,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50.h,
      width: width ?? double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          backgroundColor: color ?? AppColors.primary80,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 40.r),
            side: hasSideBorder
                ? BorderSide(
                    width: borderWidth ?? 2,
                    color: borderColor ?? AppColors.white,
                  )
                : BorderSide.none,
          ),
        ),
        onPressed: onPressed,
        child: widget ??
            Text(
              text,
              style: AppTextStyles.font16Regular,
            ),
      ),
    );
  }
}
