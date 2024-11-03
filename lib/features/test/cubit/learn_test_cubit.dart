import 'package:e_learning/features/test/models/test_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/test2_model.dart';
import '../models/test3_model.dart';

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

  bool test3Answer = false;
  Map<String, bool> test3Answers = {
    "Am": false,
    "Ujang": false,
    "Your": false,
    "What's": false,
    "I": false,
    "We": false,
    "Name": false
  };

  List<Map<String, dynamic>> items = [];

  void addItemsList() {
    items.addAll(
        model.answer.map((item) => Map<String, dynamic>.from(item)).toList());

    for (int i = 0; i < items.length; i++) {
      if (items[i]['type'] == 'word') {
        items[i]['text'] = '';
      }
    }
  }

  int index = 0;

  void selectTest3Answers(String answer) {
    if (index != items.length) {
      if (!test3Answers[answer]!) {
        if (items[index]['type'] == 'word') {
          items[index]['text'] = answer;
          test3Answers.update(answer, (v) => true);
        } else {
          if (index + 1 != model.answer.length) {
            items[index + 1]['text'] = answer;
            index++;
            test3Answers.update(answer, (v) => true);
          }
        }
        index++;
        emit(SelectTest3Answers());
      }
    }
  }

  void answerTest3(Test3Model question) {
    for (var i = items.length - 1; i >= 0; i--) {
      if (items[i]["type"] == "word") {
        if (items[i]["text"].isNotEmpty) {
          emit(Test3Loading());
          test3Answer = true;
          int correct = 0;
          for (int i = 0; i < question.answer.length; i++) {
            if (question.answer[i].values.first == items[i].values.first) {
              correct++;
            } else {
              emit(Test3Failure());
              break;
            }
          }
          if (correct == question.answer.length) {
            emit(Test3Success());
          }
        }
        break;
      }
    }
  }
}
