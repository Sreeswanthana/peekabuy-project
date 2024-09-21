import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class AccountViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void logout() {
    _navigationService.navigateTo('/login-sign-view');
  }

}
