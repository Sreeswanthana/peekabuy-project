import 'package:flutter/material.dart';
import 'package:peeka/ui/common/ui_helpers.dart';
import 'package:peeka/ui/views/shoppingcart/shopingcart.dart';
import 'package:stacked/stacked.dart';

import 'shoppingcart_viewmodel.dart';

class ShoppingcartView extends StackedView<ShoppingcartViewModel> {
  const ShoppingcartView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      ShoppingcartViewModel viewModel,
      Widget? child,
      ) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_outlined),
        ),
        title: Text(
          "Mycart",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            children: [
              ShoppingCart(
                image: 'assets/images/img_23.png',
                name: 'sheimn',
                description: 'asdadexdcsdc fgttgtgv',
                price: '₹315 ',
                discountPrice: '735',
                offerPercentage: '68%',
                isSelected: true,
                onTap: () {},
              ),
              verticalSpaceSmall,
              ShoppingCart(
                image: 'assets/images/img_24.png',
                name: 'sheimn',
                description: 'asdadexdcsdc fgttgtgv',
                price: '₹315 ',
                discountPrice: '735',
                offerPercentage: '68%',
                isSelected: false,
                onTap: () {},
              ),
              verticalSpaceSmall,
              ShoppingCart(
                image: 'assets/images/img_25.png',
                name: 'sheimn',
                description: 'asdadexdcsdc fgttgtgv',
                price: '₹315 ',
                discountPrice: '735',
                offerPercentage: '68%',
                isSelected: true,
                onTap: () {},
              ),
              verticalSpaceMedium,
              Text(
                "Assured Quality | 100% Handpicked | Easy Exchange",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),
              verticalSpaceMedium,

              // First Section: The Apply Coupon and Select Button
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Text(
                        "The Apply Coupon",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Select",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpaceMedium,

              // Second Section: Order Payment Details and Amounts
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order Payment Details",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Order Amount",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "₹ 2,678.00",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Order Savings",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "₹ 1960.00",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceTiny,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Convenience Fee",
                          style: TextStyle(fontSize: 16),
                        ),
                        TextButton(
                          onPressed: () {
                            // Handle the "What is this?" button press
                          },
                          child: Text(
                            "What is this?",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    verticalSpaceTiny,
                    // Delivery Fee Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Full filent fee",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "₹ 19.00",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceSmall,
                    // Sub Total Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sub Total (2 items)",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "₹ 812.00",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
                    verticalSpaceMedium,
    // Proceed to Payment Button
    Center(
    child: ElevatedButton(
      onPressed: () {
        // Replace these values with actual data
        viewModel.openCheckout(
          1,
          'ShopName',
          'Test Description',
          '9999999999',
          'test@example.com',
        );
      },
    style: ElevatedButton.styleFrom(
    foregroundColor: Colors.white, backgroundColor: Colors.orange, // Text color
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10), // Rounded corners
    ),
    ),
    child: Text(
    "Proceed to Payment",
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),

    ),),
    ]
          ),
        ),
      ),
    );
  }


  @override
  ShoppingcartViewModel viewModelBuilder(BuildContext context) =>
      ShoppingcartViewModel();

  @override
  void onViewModelReady(ShoppingcartViewModel viewModel) {
    super.onViewModelReady(viewModel);
    viewModel.initialize(); // Ensure Razorpay is initialized here
  }
}