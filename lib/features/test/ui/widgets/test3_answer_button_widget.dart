import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class Test3AnswerButtonWidget extends StatelessWidget {
  final Map<String, bool> item;

  const Test3AnswerButtonWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(2),
        width: 80.w,
        height: 45.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color:
                  item.values.first ? AppColors.black40 : AppColors.primary80,
              spreadRadius: 1,
              blurRadius: 1, // Soft shadow
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: item.values.first ? AppColors.black20 : AppColors.primary60,
        ),
        child: Center(
          child: Text(
            item.keys.first,
            //todo style family
            style: AppTextStyles.font18Regular,
          ),
        ),
      ),
    );
  }
}
