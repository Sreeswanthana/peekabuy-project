import 'package:peeka/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class LoginSignViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void login() {
    _navigationService.navigateTo('/login-view');
  }

  void sign() {
    _navigationService.navigateTo('/sign-view');
  }
}
