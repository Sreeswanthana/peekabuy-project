import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class SearchViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final TextEditingController searchController = TextEditingController();
  List<String> items = [
    'Jackets',
    'wommens',
    'baby',
    'pant',
    'beauty',
    'kids',
    'Jackets men',
    'wommens tops',
    'jackets kids',
    'jacket wommens',
    'jacket babys',
    'jackets and coats'
        'Jackets for saree',
  ]; // Example list of items
  List<String> filteredItems = [
    'Jackets',
    'wommens',
    'baby',
    'pant',
    'beauty',
    'kids'
  ];

  SearchViewModel() {
    // Initialize with all items
    filteredItems = items;
  }

  // Update the search query and filter the items
  void updateSearchQuery(String query) {
    filteredItems = items
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();
    notifyListeners();
  }

  // Clear the search text and reset the search results
  void clearSearch() {
    searchController.clear(); // Clear the TextField
    filteredItems = items; // Reset to all items
    notifyListeners();
  }

  void Jacketss() {
    _navigationService.navigateTo('/jackets-view');
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
