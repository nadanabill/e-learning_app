import 'package:e_learning/core/constants/app_assets.dart';

class LanguageModel {
  final String name;
  final String image;

  LanguageModel({
    required this.name,
    required this.image,
  });
}

List<LanguageModel> languages=[
  LanguageModel(name: 'Sundanese', image: AppImages.language1),
  LanguageModel(name: 'Javanese', image: AppImages.language2),
  LanguageModel(name: 'Minangkabau', image: AppImages.language3),
  LanguageModel(name: 'Betawi', image: AppImages.language3),
];

