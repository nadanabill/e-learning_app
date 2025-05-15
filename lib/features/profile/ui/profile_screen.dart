import 'package:e_learning/features/profile/ui/widgets/analytic_section_widget.dart';
import 'package:e_learning/features/profile/ui/widgets/dashboard_widget.dart';
import 'package:e_learning/features/profile/ui/widgets/my_account_widget.dart';
import 'package:e_learning/features/profile/ui/widgets/profile_header_widget.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeaderWidget(),
            AnalyticSectionWidget(),
            DashboardWidget(),
            MyAccountWidget(),
          ],
        ),
      ),
    );
  }
}
