import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'checkout_viewmodel.dart';

class CheckoutView extends StackedView<CheckoutViewModel> {
  const CheckoutView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      CheckoutViewModel viewModel,
      Widget? child,
      ) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text('Checkout'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Select Delivery Address',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: viewModel.newaddress,
                    ),
                    const Text(
                      'Add New Address',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    addressTile(
                      viewModel,
                      'home',
                      Icons.home,
                      'Home',
                      'Maria Sajna',
                      'Kaithavalappil (H)',
                      'EK Nayanar Road, N. Varapuzha',
                      'Ernakulam, Kerala',
                    ),
                    const Divider(height: 30.0, color: Colors.black, thickness: 1.0),
                    addressTile(
                      viewModel,
                      'work',
                      Icons.work,
                      'Work',
                      'Maria Sajna',
                      'Infopark-Phase 1, Kakanad',
                      'Ernakulam, Kerala',
                      '', // Adding an empty line for consistency; adjust as needed
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              deliveryInfo(),
              const SizedBox(height: 20.0),
              promoCode(),
              const SizedBox(height: 20.0),
              const Text(
                'Select Payment Method',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10.0),
              paymentMethodList(viewModel),
            ],
          ),
        ),
        bottomNavigationBar: bottomNavigationBar(viewModel),
      ),
    );
  }

  Widget addressTile(CheckoutViewModel viewModel, String addressType, IconData icon, String title, String name, String line1, String line2, String line3) {
    return InkWell(
      onTap: () => viewModel.selectAddress(addressType),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: addressType == 'home' ? Colors.orange : Colors.black, size: 40.0),
          const SizedBox(width: 15.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: addressType == 'home' ? Colors.orange : Colors.black)),
                const SizedBox(height: 5.0),
                Text(name, style: const TextStyle(fontSize: 16.0, color: Colors.black87)),
                const SizedBox(height: 5.0),
                Text(line1, style: const TextStyle(fontSize: 14.0, color: Colors.black54)),
                const SizedBox(height: 5.0),
                Text(line2, style: const TextStyle(fontSize: 14.0, color: Colors.black54)),
                const SizedBox(height: 5.0),
                Text(line3, style: const TextStyle(fontSize: 14.0, color: Colors.black54)),
              ],
            ),
          ),
          Icon(viewModel.selectedAddress == addressType ? Icons.check_circle : Icons.circle_outlined, color: Colors.orange, size: 30.0),
        ],
      ),
    );
  }

  Widget deliveryInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Expected Delivery',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        Text(
          '23rd Oct - 25th Oct',
          style: TextStyle(fontSize: 16.0, color: Colors.black54),
        ),
      ],
    );
  }

  Widget promoCode() {
    return InkWell(
      onTap: () {
        // Action for promo code
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Add Gift Card / Promo Code', style: TextStyle(fontSize: 16.0, color: Colors.black87)),
          Icon(Icons.arrow_forward_ios, color: Colors.black54),
        ],
      ),
    );
  }

  Widget paymentMethodList(CheckoutViewModel viewModel) {
    return Column(
      children: [
        ListTile(
          leading: Radio<String>(
            value: 'credit_debit',
            groupValue: viewModel.selectedPaymentMethod,
            onChanged: (value) => viewModel.selectPaymentMethod(value),
          ),
          title: const Text('Credit/Debit Card'),
        ),
        ListTile(
          leading: Radio<String>(
            value: 'net_banking',
            groupValue: viewModel.selectedPaymentMethod,
            onChanged: (value) => viewModel.selectPaymentMethod(value),
          ),
          title: const Text('Net Banking'),
        ),
        ListTile(
          leading: Radio<String>(
            value: 'upi',
            groupValue: viewModel.selectedPaymentMethod,
            onChanged: (value) => viewModel.selectPaymentMethod(value),
          ),
          title: const Text('UPI'),
        ),
        ListTile(
          leading: Radio<String>(
            value: 'cash_on_delivery',
            groupValue: viewModel.selectedPaymentMethod,
            onChanged: (value) => viewModel.selectPaymentMethod(value),
          ),
          title: const Text('Cash on Delivery'),
        ),
      ],
    );
  }

  Widget bottomNavigationBar(CheckoutViewModel viewModel) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('₹ 812', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                Text('View Details', style: TextStyle(color: Colors.orange, fontSize: 6.0)),
              ],
            ),
            SizedBox(
              height: 50,
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  viewModel.openCheckout(812, 'Order Name', 'Order Description', '1234567890', 'email@example.com');
                },
                child: const Text('Place Order'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  CheckoutViewModel viewModelBuilder(BuildContext context) => CheckoutViewModel();
}
