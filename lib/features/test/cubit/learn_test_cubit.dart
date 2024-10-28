import 'package:e_learning/features/test/models/test_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/test2_model.dart';

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

  bool test2Answer = false;
  final test2Controller = TextEditingController();
  final test2FormKey = GlobalKey<FormState>();

  void answerTest2(Test2Model question) {
    if (test2FormKey.currentState!.validate()) {
      emit(Test2Loading());
      test2Answer = true;
      if (test2Controller.text == question.answer) {
        emit(Test2Success());
      } else {
        emit(Test2Failure());
      }
    }
  }
}
