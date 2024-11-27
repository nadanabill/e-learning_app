import 'package:e_learning/core/helpers/spaces.dart';
import 'package:e_learning/core/themes/app_colors.dart';
import 'package:e_learning/core/themes/app_text_styles.dart';
import 'package:e_learning/features/search/ui/widgets/previous_language_card_widget.dart';
import 'package:e_learning/features/search/ui/widgets/search_header_widget.dart';
import 'package:e_learning/features/search/ui/widgets/search_language_list_widget.dart';
import 'package:e_learning/features/search/ui/widgets/tags_row_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_strings.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SearchHeaderWidget(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  verticalSpace(20),
                  TagsRowWidget(tags: tags),
                  verticalSpace(20),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SearchLanguageListWidget(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(10),
                  Text(
                    AppStrings.previousLanguageCourses,
                    style: AppTextStyles.font20Medium
                        .copyWith(color: AppColors.black100),
                  ),
                  //verticalSpace(15),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
                  child: PreviousLanguageCardWidget(),
                );
              },
              childCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}

List<String> tags = ['#Sunda', '#Javanese', '#Bali'];
