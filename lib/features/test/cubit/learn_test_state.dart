part of 'learn_test_cubit.dart';

sealed class LearnTestState {}

final class LearnTestInitial extends LearnTestState {}

final class LearnTestSuccess extends LearnTestState {}

final class LearnTestFailure extends LearnTestState {}

final class Test2Loading extends LearnTestState {}

final class Test2Success extends LearnTestState {}

final class Test2Failure extends LearnTestState {}

final class Test3Loading extends LearnTestState {}

final class Test3Success extends LearnTestState {}

final class Test3Failure extends LearnTestState {}

final class SelectTest3Answers extends LearnTestState {}
