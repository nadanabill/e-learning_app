import 'package:flutter/material.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/app_text_styles.dart';

class AnalyticItemWidget extends StatelessWidget {
  final String title, number;

  const AnalyticItemWidget({
    super.key,
    required this.title,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: AppTextStyles.font18RegularBlack100,
        ),
        verticalSpace(5),
        Text(
          title,
          style: AppTextStyles.font10RegularBlack80,
        ),
      ],
    );
  }
}
