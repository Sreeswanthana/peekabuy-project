import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class NottificationViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void contshp() {
    _navigationService.navigateTo('/dasboard-view');
  }


}
