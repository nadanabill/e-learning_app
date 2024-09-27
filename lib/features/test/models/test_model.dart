import '../../../core/constants/app_assets.dart';

class TestModel {
  final String question;
  List<String> answers;
  final String correctAnswer;
  final String image;

  TestModel({
    required this.question,
    required this.answers,
    required this.correctAnswer,
    required this.image,
  });
}

List<TestModel> testList = [
  TestModel(
    question: "What does the picture mean?",
    answers: [
      "Sampean",
      "Saco",
      "Cepil",
      "Pangambung",
    ],
    correctAnswer: "Pangambung",
    image: AppImages.testPageSuccess,
  ),
];
