import 'package:e_learning/features/profile/data/models/dashboard_model.dart';
import 'package:e_learning/features/profile/ui/widgets/dashboard_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.black40,
          width: 1,
        ),
        color: Colors.transparent,
      ),
      padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 24),
      margin: const EdgeInsets.symmetric(horizontal: 31, vertical: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dashboard',
            style: AppTextStyles.font12RegularBlack60,
          ),
          verticalSpace(14),
          Column(
            children: dashboardList
                .map((e) => DashboardItemWidget(
                      item: e,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
