import 'package:e_learning/core/constants/app_strings.dart';
import 'package:e_learning/features/achievement/data/models/achievements_item_model.dart';
import 'package:e_learning/features/achievement/ui/widgets/achievements_item_cad_widget.dart';
import 'package:e_learning/features/achievement/ui/widgets/total_achievements_card_widget.dart';
import 'package:flutter/material.dart';
import '../../../core/helpers/spaces.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../core/widgets/app_bar_icon_widget.dart';

class AchievementScreen extends StatelessWidget {
  const AchievementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.achievement,
          style: AppTextStyles.font18RegularBlack100,
        ),
        centerTitle: true,
        actions: [
          AppBarIconWidget(
            onTap: () {
              Navigator.pop(context);
            },
            icon: Icons.menu,
          ),
          horizontalSpace(20)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: TotalAchievementsCardWidget(),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: AchievementsItemCadWidget(
                  item: achievementsList[index],
                ),
              ),
                  childCount: achievementsList.length,
            ),),
          ],
        ),
      ),
    );
  }
}
