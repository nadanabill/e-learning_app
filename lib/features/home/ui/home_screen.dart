import 'package:e_learning/features/home/ui/widgets/home_header_widget.dart';
import 'package:e_learning/features/home/ui/widgets/learn_body_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/themes/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary60,
        body: Column(
          children: [
            HomeHeaderWidget(name: 'John'),
            Expanded(
              child: LearnBodyWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
