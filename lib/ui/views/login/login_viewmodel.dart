
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  bool _isChecked = false;
  String? _errorMessage;

  bool get isChecked => _isChecked;
  String? get errorMessage => _errorMessage;

  void toggleCheckbox(bool value) {
    _isChecked = value;
    _errorMessage = null; // Reset error message when checkbox is toggled
    notifyListeners();
  }
  void dash() {
    _navigationService.navigateTo('/dasboard-view');
  }
  void sign() {
    _navigationService.navigateTo('/sign-view');
  }

  void login() {
    if (_isChecked) {
      _errorMessage = null;
      _navigationService.navigateTo('/home-page-view');
    } else {
      _errorMessage = 'You must agree to the terms and conditions';
      notifyListeners();
    }
  }
}
