class Test2Model {
  final String question;
  final String subQuestion;
  final String answer;
  final String sound;

  Test2Model({
    required this.question,
    required this.subQuestion,
    required this.answer,
    required this.sound,
  });
}

List<Test2Model> test2Questions = [
  Test2Model(
    question: 'What’s the meaning of this sentence?',
    subQuestion: 'Punten, Nami abdi Asep',
    answer: 'Permisi, nama saya Asep',
    sound: '',
  ),
];
