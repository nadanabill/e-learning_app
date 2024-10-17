import 'package:e_learning/features/test/cubit/learn_test_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerFactory<LearnTestCubit>(() => LearnTestCubit());
}
