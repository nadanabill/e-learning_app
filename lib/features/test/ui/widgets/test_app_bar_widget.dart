import 'package:flutter/material.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/widgets/app_bar_icon_widget.dart';
import 'progress_bar_widget.dart';

class TestAppBarWidget extends StatelessWidget {
  final int completedSegments;
  final int totalSegments;

  const TestAppBarWidget(
      {super.key,
      required this.completedSegments,
      required this.totalSegments});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppBarIconWidget(
          onTap: () {
            Navigator.pop(context);
          },
          icon: Icons.arrow_back_ios_rounded,
        ),
        horizontalSpace(10),
        Expanded(
          child: ProgressBarWidget(
            completedSegments: completedSegments,
            totalSegments: totalSegments,
          ),
        ),
        horizontalSpace(40),
      ],
    );
  }
}
