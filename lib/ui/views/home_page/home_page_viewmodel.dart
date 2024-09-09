import 'dart:async';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart'; // Adjust the path as needed

class HomePageViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  PageController get pageController => _pageController;

  void setCurrentPage(int page) {
    _currentPage = page;
    _pageController.jumpToPage(page);
    notifyListeners();
  }
  void menu() {
    _navigationService.navigateTo('/menu-view');
  }

  void onItemTapped(int index) {
    _selectedIndex = index;
    _currentPage = index;
    _pageController.jumpToPage(index);
    notifyListeners();
  }

  void startAutoScroll() {
    _timer?.cancel(); // Cancel any existing timer to prevent multiple timers
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 3) {
        // Adjust if the number of pages is different
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      _selectedIndex = _currentPage;
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }
}
