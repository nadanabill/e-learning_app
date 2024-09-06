import 'package:flutter/material.dart';

import '../../../../core/helpers/spaces.dart';
import '../../models/subject_model.dart';
import 'subject_item_widget.dart';

class SubjectsListWidget extends StatelessWidget {
  final List<SubjectModel> subjects;
  const SubjectsListWidget({super.key, required this.subjects});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => SubjectItemWidget(subject: subjects[index],),
      separatorBuilder: (context, index) => verticalSpace(15),
      itemCount: subjects.length,
    );
  }
}
