import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spaces.dart';
import 'search_language_widget.dart';

class SearchLanguageListWidget extends StatelessWidget {
  const SearchLanguageListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      padding: const EdgeInsets.only(left: 20),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const SearchLanguageWidget(),
        separatorBuilder: (context, index) => horizontalSpace(10),
        itemCount: 4,
      ),
    );
  }
}
