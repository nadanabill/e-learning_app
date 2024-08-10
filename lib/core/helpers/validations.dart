import 'package:flutter/cupertino.dart';

import 'app_regexp.dart';

abstract class Validations {
  static String? validateName(BuildContext context, String? name) {
    if (name!.isEmpty ) {
      return '🔴Name is required!';
    }
    else if( !AppRegExp.isNameValid(name)){
      return '🔴Please enter Correct name';
    }
    return null;
  }

  static String? validateEmail(BuildContext context, String? email) {
    if (email!.isEmpty ) {
      return '🔴Email is required!';
    } else  if (!AppRegExp.isEmailValid(email)) {
      return '🔴Please enter Correct email';
    }
    else if (!email.contains('@')) {
      return '🔴Invalid Email!';
    }
    return null;
  }

  static String? validatePhoneNumber(BuildContext context, String? phoneNumber) {
    if (phoneNumber!.isEmpty ) {
      return '🔴Phone number is required!';
    }
    else if (!AppRegExp.isPhoneNumberValid(phoneNumber)) {
      return '🔴Please enter Correct phone number';
    }
    return null;
  }

  static String? validatePassword(BuildContext context, String? password) {
    if (password!.isEmpty) {
      return '🔴Password is required!';
    } else if (!AppRegExp.isPasswordValid(password)) {
      return '🔴Password must be at least 8 characters, include an uppercase letter, number and special character';
    }
    return null;
  }

  static String? validateConfirmPassword(BuildContext context, String? password, String? confirmPassword) {
    if (confirmPassword!.isEmpty ) {
      return '🔴Confirm Password is required!';
    }
    else if (password != confirmPassword) {
      return '🔴Password and Confirm Password must be same!';
    }
    return null;
  }

  static String? validateOTP(BuildContext context, String? otp) {
    if (otp!.isEmpty || !AppRegExp.isOTPValid(otp)) {
      return '🔴OTP is required!';
    }
    return null;
  }

  static String? validateNationalID(BuildContext context, String? nationalID) {
    if (nationalID!.isEmpty ) {
      return '🔴National ID is required!';
    }

    if (!AppRegExp.isNationalIDValid(nationalID)) {
      return '🔴Please enter Correct National ID';
    }
    return null;
  }

  static String? validateCardCCV(BuildContext context, String? ccv) {
    if (ccv!.isEmpty ) {
      return '🔴CCV is required!';
    }

    if (!AppRegExp.isCardCVVValid(ccv)) {
      return '🔴Please enter Correct CCV';
    }
    return null;
  }
}
