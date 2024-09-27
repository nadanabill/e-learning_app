import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressBarWidget extends StatelessWidget {
  final int completedSegments;
  final int totalSegments;

  const ProgressBarWidget({
    super.key,
    required this.completedSegments,
    required this.totalSegments,
  });

  @override
  Widget build(BuildContext context) {
    double segmentWidth =
        ((MediaQuery.of(context).size.width - 190) - (totalSegments - 1)) /
            totalSegments;
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 190),
      height: 8.0.h,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(totalSegments, (index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 1.0),
            width: segmentWidth,
            height: 8.0.h,
            decoration: BoxDecoration(
              color: index < completedSegments ? Colors.blue : Colors.grey[300],
              borderRadius: BorderRadius.circular(5.0),
            ),
          );
        }),
      ),
    );
  }
}
