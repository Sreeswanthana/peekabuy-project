import 'package:flutter/cupertino.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:stacked/stacked.dart';

class ShoppingcartViewModel extends BaseViewModel {
  late Razorpay _razorpay;

  // Initialize Razorpay
  void initialize() {
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  // Handle payment success
  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print('Success Response: $response');
  }

  // Handle payment error
  void _handlePaymentError(PaymentFailureResponse response) {
    print('Error Response: $response');
  }

  // Handle external wallet option
  void _handleExternalWallet(ExternalWalletResponse response) {
    print('External SDK Response: $response');
  }

  // Dispose Razorpay when ViewModel is disposed
  @override
  void dispose() {
    _razorpay.clear();
    super.dispose();
  }

  // Open Razorpay checkout
  void openCheckout(int amount, String shopName, String description,
      String contactNumber, String email) async {
    var options = {
      'key': 'rzp_live_ILgsfZCZoFIKMb', // Replace with your Razorpay key
      'amount': amount * 100, // Amount in paise
      'name': shopName,
      'description': description,
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'prefill': {'contact': contactNumber, 'email': email},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: $e');
    }
  }
}
