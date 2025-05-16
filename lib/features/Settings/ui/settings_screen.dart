import 'package:e_learning/features/Settings/ui/widgets/other_settings_widget.dart';
import 'package:e_learning/features/Settings/ui/widgets/settings_header_widget.dart';
import 'package:e_learning/features/Settings/ui/widgets/settings_language_widget.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            SettingsHeaderWidget(),
            SettingsLanguageWidget(),
            OtherSettingsWidget(),
          ],
        ),
      ),
    );
  }
}
