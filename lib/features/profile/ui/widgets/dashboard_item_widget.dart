import 'package:flutter/material.dart';
import 'package:e_learning/features/profile/data/models/dashboard_model.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class DashboardItemWidget extends StatelessWidget {
  final DashboardModel item;

  const DashboardItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        children: [
          SvgPicture.asset(item.image),
          horizontalSpace(10),
          Text(
            item.title,
            style: AppTextStyles.font14Medium,
          ),
          const Spacer(),
          item.type != DashboardType.Non
              ? InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, item.routeName);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: item.type == DashboardType.New
                          ? const Color(0xFF3870FF)
                          : const Color(0xFFFF683A),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 3,
                    ),
                    child: Row(
                      children: [
                        Text(
                          item.type == DashboardType.New
                              ? '${item.number} New'
                              : 'Action Needed',
                          style: AppTextStyles.font10Medium,
                        ),
                        Image.asset(AppImages.arrow)
                      ],
                    ),
                  ),
                )
              : InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, item.routeName);
                  },
                  child: Image.asset(
                    AppImages.arrow,
                    color: AppColors.black100,
                  ),
                ),
        ],
      ),
    );
  }
}
