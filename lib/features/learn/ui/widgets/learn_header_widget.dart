import 'package:e_learning/core/widgets/app_bar_icon_widget.dart';
import 'package:flutter/material.dart';


class LearnHeaderWidget extends StatelessWidget {
  const LearnHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppBarIconWidget(
          onTap: () {
            Navigator.pop(context);
          },
          icon: Icons.arrow_back_ios_rounded,
        ),
        AppBarIconWidget(
          onTap: () {
            Navigator.pop(context);
          },
          icon: Icons.menu,
        ),
      ],
    );
  }
}
