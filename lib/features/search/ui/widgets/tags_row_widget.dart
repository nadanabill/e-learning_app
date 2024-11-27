import 'package:e_learning/core/constants/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class TagsRowWidget extends StatelessWidget {
  final List<String> tags;

  const TagsRowWidget({super.key, required this.tags});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppStrings.category,
          style: AppTextStyles.font14Medium,
        ),
        horizontalSpace(10),
        Wrap(
            children: tags
                .map(
                  (e) => Container(
                    decoration: BoxDecoration(
                      color: AppColors.primary80,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(right: 10),
                    child: Text(
                      e,
                      style: AppTextStyles.font14Regular,
                    ),
                  ),
                )
                .toList()),
      ],
    );
  }
}
