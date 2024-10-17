import 'package:e_learning/features/test/models/test_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'learn_test_state.dart';

class LearnTestCubit extends Cubit<LearnTestState> {
  LearnTestCubit() : super(LearnTestInitial());

  int selectedAnswerIndex = -1;

  void selectMultipleTestAnswer(String answer, TestModel question) {
    if (selectedAnswerIndex == -1) {
      selectedAnswerIndex = question.answers.indexOf(answer);
      if (answer == question.correctAnswer) {
        emit(LearnTestSuccess());
      } else {
        emit(LearnTestFailure());
      }
    }
  }
}
