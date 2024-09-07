import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomePageViewModel extends BaseViewModel {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  PageController get pageController => _pageController;

  int get currentPage => _currentPage;

  void setCurrentPage(int page) {
    _currentPage = page;
    notifyListeners();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
