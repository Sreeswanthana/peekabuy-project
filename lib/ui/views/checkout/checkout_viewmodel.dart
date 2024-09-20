import 'package:flutter/cupertino.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class CheckoutViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  late Razorpay _razorpay;

  CheckoutViewModel() {
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print('Success Response: $response');
    // Handle success logic here
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print('Error Response: $response');
    // Handle error logic here
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    print('External SDK Response: $response');
    // Handle external wallet response here
  }

  String? _selectedAddress;
  String? _selectedPaymentMethod;

  String? get selectedAddress => _selectedAddress;
  String? get selectedPaymentMethod => _selectedPaymentMethod;

  void selectAddress(String addressType) {
    _selectedAddress = addressType;
    notifyListeners();
  }

  void selectPaymentMethod(String? method) {
    _selectedPaymentMethod = method;
    notifyListeners();
  }

  void newaddress() {
    _navigationService.navigateTo('/newaddress-view');
  }

  void openCheckout(int amt, String shopname, String description, String no,
      String email) async {
    var options = {
      'key': 'rzp_live_ILgsfZCZoFIKMb', // Replace with your Razorpay key
      'amount': amt * 100,
      'name': shopname,
      'description': description,
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'prefill': {'contact': no, 'email': email},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: $e'); // Corrected to display the actual error
    }
  }

  @override
  void dispose() {
    _razorpay.clear();
    super.dispose();
  }
}
