import 'package:peeka/app/app.locator.dart';
import 'package:peeka/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import '../home/home_view.dart';

class StartupViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  bool _isImageVisible = false;
  bool get isImageVisible => _isImageVisible;

  void showImage() {
    _isImageVisible = true;
    notifyListeners();
  }

  Future runStartupLogic() async {
    await Future.delayed(Duration(seconds: 8));
    navigationService.replaceWithHomeView();
    // Add your startup logic here if necessary
  }

  // Method to navigate to the home screen after a delay
}
