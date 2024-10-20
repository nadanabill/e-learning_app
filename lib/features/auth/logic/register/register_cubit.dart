import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var ageController = TextEditingController();
  var nameFormKey = GlobalKey<FormState>();
  var passwordFormKey = GlobalKey<FormState>();
  var emailFormKey = GlobalKey<FormState>();
  var ageFormKey = GlobalKey<FormState>();
}
