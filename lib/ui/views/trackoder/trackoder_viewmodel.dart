import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class TrackoderViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void buyagain() {
    _navigationService.navigateTo('/dasboard-view');
  }
  void detail() {
    _navigationService.navigateTo('/dasboard-view');
  }

}
