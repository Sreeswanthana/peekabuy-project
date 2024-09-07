import 'package:peeka/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';

class SignViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  // Fields for validation
  String? _email;
  String? _password;
  String? _confirmPassword;

  String? get email => _email;
  String? get password => _password;
  String? get confirmPassword => _confirmPassword;

  bool get canSignUp =>
      _isValidEmail() && _isValidPassword() && _passwordsMatch();

  // Setters for the fields
  void setEmail(String value) {
    _email = value;
    notifyListeners();
  }

  void setPassword(String value) {
    _password = value;
    notifyListeners();
  }

  void setConfirmPassword(String value) {
    _confirmPassword = value;
    notifyListeners();
  }

  // Validation methods
  bool _isValidEmail() {
    return _email != null && _email!.contains('@');
  }

  bool _isValidPassword() {
    return _password != null && _password!.length >= 6;
  }

  bool _passwordsMatch() {
    return _password == _confirmPassword;
  }

  // Sign-up method
  void sign() {
    _navigationService.navigateTo('/home-page-view');
  }

  // Login method
  void login() {
    _navigationService.navigateTo('/login-sign-view');
  }
  void dash() {
    _navigationService.navigateTo('/dasboard-view');
  }
}
