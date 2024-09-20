import 'package:stacked/stacked.dart';

class NewaddressViewModel extends BaseViewModel {
  String _selectedAddressType = 'Home'; // Default selection

  String get selectedAddressType => _selectedAddressType;

  void selectAddressType(String type) {
    _selectedAddressType = type;
    notifyListeners(); // Notify the view to update the UI
  }
}
