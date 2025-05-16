import 'package:e_learning/features/profile/ui/widgets/analytic_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_colors.dart';

class AnalyticSectionWidget extends StatelessWidget {
  const AnalyticSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 31.0),
      child: Column(
        children: [
          Container(
            color: AppColors.black40,
            height: 1,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const AnalyticItemWidget(title: 'Total Learn', number: '2+ hours'),
              Container(
                color: AppColors.black40,
                height: 35.h,
                width: 1,
                margin: const EdgeInsets.symmetric(horizontal: 5),
              ),
              const AnalyticItemWidget(title: 'Achievements', number: '20'),
              Container(
                color: AppColors.black40,
                height: 30.h,
                width: 1,
                margin: const EdgeInsets.symmetric(horizontal: 5),
              ),
              const AnalyticItemWidget(title: 'Language', number: '2'),
            ],
          ),
        ],
      ),
    );
  }
}
