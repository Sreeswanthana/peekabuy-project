import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String? emailError;
  String? passwordError;
  bool isChecked = false;

  // Toggle checkbox
  void toggleCheckbox(bool value) {
    isChecked = value;
    notifyListeners();
  }

  // Login function
  void login() {
    // Validate email and password
    emailError = validateEmail(emailController.text);
    passwordError = validatePassword(passwordController.text);
    notifyListeners(); // Update the UI

    // If both email and password are valid, navigate to home page
    if (emailError == null && passwordError == null) {
      // Proceed with login logic and navigate
      _navigationService.navigateTo('/dasboard-view');
    }
  }

  // Email validation function
  String? validateEmail(String email) {
    if (email.isEmpty) return 'Email cannot be empty';
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email)) {
      return 'Enter a valid email';
    }
    return null;
  }

  // Password validation function
  String? validatePassword(String password) {
    if (password.isEmpty) return 'Password cannot be empty';
    if (password.length < 6) return 'Password must be at least 6 characters';
    return null;
  }
}
