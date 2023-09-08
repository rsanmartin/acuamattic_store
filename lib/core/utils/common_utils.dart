import 'package:flutter/material.dart';

class CommonUtils {
  static const String _emailValidatorRegExp =
      r'^[a-zA-Z0-9+_.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';

  static String? isValidateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Please type your email.';
    }

    if (RegExp(_emailValidatorRegExp).hasMatch(email)) {
      return null;
    } else {
      return 'Please enter a valid email';
    }
  }

  static String? isPasswordValid(String? password, [int minLength = 8]) {
    if (password == null || password.isEmpty) {
      return 'Please type your password.';
    }
    bool hasMinLength = password.length >= minLength;

    if (!hasMinLength) {
      return 'Your password must be at least 8 alphanumeric length.';
    }
    return null;
  }

  static String? isConfirmationPasswordValid(
      String? password, String? confirmationPassword,
      [int minLength = 8]) {
    if (confirmationPassword == null || confirmationPassword.isEmpty) {
      return 'Please type your confirmation password.';
    }
    bool hasMinLength = confirmationPassword.length >= minLength;

    if (!hasMinLength) {
      return 'Your confirmation password must be at least 8 alphanumeric length.';
    }

    if (password != confirmationPassword) {
      return 'Your password and confirmation password must be equals.';
    }

    return null;
  }
}
