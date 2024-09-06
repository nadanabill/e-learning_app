class LanguageLearnedModel {
  final String name;
  final String participants;
  final int level;

  LanguageLearnedModel({
    required this.name,
    required this.participants,
    required this.level,
  });
}

List<LanguageLearnedModel> languageList = [
  LanguageLearnedModel(
    name: 'Minangkabau',
    participants: '7K',
    level: 7,
  ),
  LanguageLearnedModel(
    name: 'Papua',
    participants: '5K',
    level: 5,
  ),
];
