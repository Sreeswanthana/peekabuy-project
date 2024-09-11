import 'package:flutter/cupertino.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class ShoppingcartViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void placeoder() {
    _navigationService.navigateTo('/checkout-view');
  }
}
