class Test3Model {
  final String question;
  final String subQuestion;
  final List<Map<String, dynamic>> answer;

  Test3Model({
    required this.question,
    required this.subQuestion,
    required this.answer,
  });
}

Test3Model model = Test3Model(
  answer: [
    {"text": "I", "type": "word"},
    {"text": "Am", "type": "word"},
    {"text": "Ujang", "type": "word"},
    {"text": ",", "type": "punctuation"},
    {"text": "What's", "type": "word"},
    {"text": "Your", "type": "word"},
    {"text": "Name", "type": "word"},
    {"text": "?", "type": "punctuation"},
  ],
  question: 'What’s the meaning of this sentence?',
  subQuestion: 'Abdi ujang, nami anjeun saha?',
);
