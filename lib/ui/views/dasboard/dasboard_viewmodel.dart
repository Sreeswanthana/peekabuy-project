import 'package:flutter/cupertino.dart';
import 'package:peeka/ui/views/account/account_view.dart';
import 'package:peeka/ui/views/favourite/favourite_view.dart';
import 'package:peeka/ui/views/home_page/home_page_view.dart';
import 'package:peeka/ui/views/shoppingcart/shoppingcart_view.dart';
import 'package:stacked/stacked.dart';

class DasboardViewModel extends BaseViewModel {
  int _currentIndex = 0;
  List<Widget> Pages = [
    HomePageView(),
    FavouriteView(),
    ShoppingcartView(),
    AccountView(),
  ];

  int get currentIndex => _currentIndex;

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
