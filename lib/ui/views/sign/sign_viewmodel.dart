import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class SignViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  String? nameError;
  String? emailError;
  String? passwordError;
  String? confirmPasswordError;

  bool validateFields() {
    nameError = null;
    emailError = null;
    passwordError = null;
    confirmPasswordError = null;

    // Validate Name
    if (nameController.text.isEmpty) {
      nameError = "Name cannot be empty";
    }

    // Validate Email
    if (emailController.text.isEmpty) {
      emailError = "Email cannot be empty";
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(emailController.text)) {
      emailError = "Invalid email address";
    }

    // Validate Password
    if (passwordController.text.isEmpty) {
      passwordError = "Password cannot be empty";
    } else if (passwordController.text.length < 6) {
      passwordError = "Password must be at least 6 characters long";
    }

    // Validate Confirm Password
    if (confirmPasswordController.text != passwordController.text) {
      confirmPasswordError = "Passwords do not match";
    }

    // Notify listeners to rebuild UI
    notifyListeners();

    // Return true if all fields are valid
    return nameError == null && emailError == null && passwordError == null && confirmPasswordError == null;
  }

  void dash() {
    _navigationService.navigateTo('/dasboard-view');

    // Navigate to the next screen
  }

  void login() {
    _navigationService.navigateTo('/login-view');

    // Navigate to the login screen
  }
}
