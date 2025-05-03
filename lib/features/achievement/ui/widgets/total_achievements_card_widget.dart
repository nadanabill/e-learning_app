import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class TotalAchievementsCardWidget extends StatelessWidget {
  const TotalAchievementsCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.black60,
          width: 1,
        ),
        color: Colors.transparent,
      ),
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          CircularPercentIndicator(
            radius: 36.0,
            lineWidth: 7.0,
            percent: 80 / 100,
            center: Text(
              "${80.toInt()}%",
              style: AppTextStyles.font18MediumBlack100,
            ),
            progressColor: AppColors.green3,
            backgroundColor: AppColors.black20,
            circularStrokeCap: CircularStrokeCap.round,
          ),
          horizontalSpace(10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Achievements : 20',
                  style: AppTextStyles.font18MediumBlack100,
                ),
                Text(
                  'Great job, John! Complete your achievements now',
                  style: AppTextStyles.font12LightBlack,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
