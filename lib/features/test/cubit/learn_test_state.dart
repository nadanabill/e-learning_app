part of 'learn_test_cubit.dart';

sealed class LearnTestState {}

final class LearnTestInitial extends LearnTestState {}
final class LearnTestSuccess extends LearnTestState {}
final class LearnTestFailure extends LearnTestState {}
