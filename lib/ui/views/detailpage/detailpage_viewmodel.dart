import 'package:peeka/ui/views/shoppingcart/shopingcart.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class DetailpageViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  String _selectedSize = '';

  String get selectedSize => _selectedSize;

  void selectSize(String size) {
    _selectedSize = size;
    notifyListeners();
  }

  void ShoppingCard() {
    _navigationService.navigateTo('/shoppingcart-view');
  }

  void Myoder() {
    _navigationService.navigateTo('/myoder-view');
  }
}
