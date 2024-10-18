import 'app_regexp.dart';

abstract class Validations {
  static String? validateName(String? name) {
    if (name!.isEmpty) {
      return '🔴Name is required!';
    } else if (!AppRegExp.isNameValid(name)) {
      return '🔴Please enter Correct name';
    }
    return null;
  }
static String? validateAge(String? age) {
  if (age == null || age.isEmpty) {
  return 'Please enter your age';
  } else if (!AppRegExp.hasNumber(age)) {
  return '🔴Please enter Correct Age';
  }
  return null;
}
  static String? validateEmail(String? email) {
    if (email!.isEmpty) {
      return '🔴Email is required!';
    } else if (!AppRegExp.isEmailValid(email)) {
      return '🔴Please enter Correct email';
    } else if (!email.contains('@')) {
      return '🔴Invalid Email!';
    }
    return null;
  }

  static String? validatePhoneNumber(String? phoneNumber) {
    if (phoneNumber!.isEmpty) {
      return '🔴Phone number is required!';
    } else if (!AppRegExp.isPhoneNumberValid(phoneNumber)) {
      return '🔴Please enter Correct phone number';
    }
    return null;
  }

  static String? validatePassword(String? password) {
    if (password!.isEmpty) {
      return '🔴Password is required!';
    } else if (!AppRegExp.isPasswordValid(password)) {
      return '🔴Password must be at least 8 characters, include an uppercase letter, number and special character';
    }
    return null;
  }

  static String? validateConfirmPassword(
      String? password, String? confirmPassword) {
    if (confirmPassword!.isEmpty) {
      return '🔴Confirm Password is required!';
    } else if (password != confirmPassword) {
      return '🔴Password and Confirm Password must be same!';
    }
    return null;
  }

  static String? validateOTP(String? otp) {
    if (otp!.isEmpty || !AppRegExp.isOTPValid(otp)) {
      return '🔴OTP is required!';
    }
    return null;
  }

  static String? validateNationalID(String? nationalID) {
    if (nationalID!.isEmpty) {
      return '🔴National ID is required!';
    }

    if (!AppRegExp.isNationalIDValid(nationalID)) {
      return '🔴Please enter Correct National ID';
    }
    return null;
  }

  static String? validateCardCCV(String? ccv) {
    if (ccv!.isEmpty) {
      return '🔴CCV is required!';
    }

    if (!AppRegExp.isCardCVVValid(ccv)) {
      return '🔴Please enter Correct CCV';
    }
    return null;
  }
}
