class SubjectModel {
  final String name;
  final String image;
  final int progress;

  SubjectModel({
    required this.name,
    required this.image,
    required this.progress,
  });
}

List<SubjectModel> subjects = [
  SubjectModel(
    name: 'Sundanese',
    image: 'assets/images/sundanese.png',
    progress: 80,
  ),
  SubjectModel(
    name: 'Balinese',
    image: 'assets/images/balinese.png',
    progress: 50,
  ),
  SubjectModel(
    name: 'Aceh',
    image: 'assets/images/aceh.png',
    progress: 30,
  ),
];
