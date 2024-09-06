import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spaces.dart';
import '../../models/language_learned_model.dart';
import 'language_learned_widget.dart';

class LanguageLearnedListWidget extends StatelessWidget {
  final List<LanguageLearnedModel> languageList;
  const LanguageLearnedListWidget({super.key, required this.languageList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 93.h,
      child: ListView.separated(
        itemBuilder: (context, index) =>
            LanguageLearnedWidget(language: languageList[index]),
        separatorBuilder: (context, index) => horizontalSpace(10),
        itemCount: languageList.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
