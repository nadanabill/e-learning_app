import 'package:e_learning/features/achievement/data/models/achievements_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class AchievementsItemCadWidget extends StatelessWidget {
  final AchievementsItemModel item;

  const AchievementsItemCadWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.black40,
          width: 1,
        ),
        color: item.color,
      ),
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            height: 68,
            width: 68,
            decoration: BoxDecoration(
              color: AppColors.orange,
              border: Border.all(color: AppColors.orange, width: 3),
              borderRadius: BorderRadius.circular(100),
            ),
            child: CircleAvatar(
              radius: 60,
              backgroundColor: AppColors.white,
              child: Image.asset(item.image),
            ),
          ),
          horizontalSpace(10),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.title,
                      style: AppTextStyles.font18MediumWhite,
                    ),
                    RatingBar.builder(
                      initialRating: item.rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      ignoreGestures: true,
                      itemCount: 5,
                      unratedColor: AppColors.white.withOpacity(0.7),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star_rounded,
                        color: AppColors.orange,
                      ),
                      itemSize: 23,
                      onRatingUpdate: (rating) {
                        //print(rating);
                      },
                    )
                  ],
                ),
                horizontalSpace(15),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(
                    item.description,
                    style: AppTextStyles.font12RegularWhite,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
