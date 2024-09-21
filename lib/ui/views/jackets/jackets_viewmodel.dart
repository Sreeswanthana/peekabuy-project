import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class JacketsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void search() {
    _navigationService.navigateTo('/search-view');
  }
  void fav() {
    _navigationService.navigateTo('/favourite-view');
  }
  void shopping() {
    _navigationService.navigateTo('/shoppingcart-view');
  } void tap() {
    _navigationService.navigateTo('/detailpage-view');
  }


}
