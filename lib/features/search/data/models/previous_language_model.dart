class PreviousLanguageModel {
  final String name;
  final String subTitle;
  final String image;

  PreviousLanguageModel({
    required this.name,
    required this.subTitle,
    required this.image,
  });
}

List<PreviousLanguageModel> previousLanguageCourses =[
  PreviousLanguageModel(
    name: 'Sundanese',
    image: 'assets/images/sundanese.png',
    subTitle: 'Introduction',
  ),
  PreviousLanguageModel(
    name: 'Balinese',
    image: 'assets/images/balinese.png',
    subTitle: 'Grammar',
  ),
  PreviousLanguageModel(
    name: 'Aceh',
    image: 'assets/images/aceh.png',
    subTitle: 'Pronunciation',
  ),
];