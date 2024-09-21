import 'package:flutter/material.dart';
import 'package:peeka/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'detailpage_viewmodel.dart';

class DetailpageView extends StackedView<DetailpageViewModel> {
  const DetailpageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DetailpageViewModel viewModel,
    Widget? child,
  ) {
    // Get the total height of the screen
    final double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.cyan,
          child: Stack(
            children: [
              // Image with buttons on top
              SizedBox(
                height:
                    screenHeight * 0.5, // Adjust to half of the screen height
                width: MediaQuery.of(context).size.width, // Full screen width
                child: Image.asset(
                  'assets/images/img_51.png', // Replace with your image path
                  fit: BoxFit
                      .cover, // Ensures the image covers the available space
                ),
              ),
              // Positioned buttons on top of the image
              Positioned(
                top: 10,
                left: 10, // Left arrow button
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    // Action for back button
                  },
                ),
              ),
              Positioned(
                top: 10,
                right: 60, // Shopping cart button
                child: IconButton(
                  icon: Icon(Icons.shopping_cart_outlined),
                  color: Colors.white,
                  onPressed: () {
                    // Action for shopping cart button
                  },
                ),
              ),
              Positioned(
                top: 10,
                right: 10, // Favorite button
                child: IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.white,
                  onPressed: () {
                    // Action for favorite button
                  },
                ),
              ),
              // White container overlapping the image
              Positioned(
                top: screenHeight *
                    0.42, // Adjusted to overlap slightly with the image
                left: 0,
                right: 0,
                child: Container(
                  height: screenHeight * 0.6, // Adjust height as needed
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30), // Curved top-left corner
                      topRight: Radius.circular(30), // Curved top-right corner
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 5,
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Row for "Shein" and "32 ratings" with yellow stars
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Shein',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // Row for star rating and 32 ratings
                                Row(
                                  children: [
                                    // Display 4 yellow stars
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 16),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 16),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 16),
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 16),
                                    Icon(Icons.star_border,
                                        color: Colors.grey,
                                        size: 16), // Empty star
                                    horizontalSpaceSmall,                            // Row of size options with containers
// Spacing between stars and text
                                    Text(
                                      '32 ratings',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
verticalSpaceSmall,                            // Second Text: "Solid red ruffle hem lace insert top"
                            Text(
                              'Solid red ruffle hem lace insert top',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[600],
                              ),
                            ),
verticalSpaceSmall,                            // Price details: ₹379 ₹999 62% off
                            Row(
                              children: [
                                Text(
                                  '₹379',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '₹999',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                horizontalSpaceSmall,                            // Row of size options with containers
                                Text(
                                  '62% off',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
verticalSpaceSmall,                            // Color selection title
                            Text(
                              'Color',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            // Row of color options with containers
                            Row(
                              children: [
                                // Selected color container
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.red, // Color of the container
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Colors
                                          .black, // Border color to indicate selection
                                      width: 2,
                                    ),
                                  ),
                                ),
                                horizontalSpaceSmall,                            // Row of size options with containers
                                // Unselected color container
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color:
                                        Colors.blue, // Color of the container
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Colors
                                          .grey, // Lighter border for unselected color
                                      width: 2,
                                    ),
                                  ),
                                ),
                                horizontalSpaceSmall,                            // Row of size options with containers
                                // Another unselected color container
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color:
                                        Colors.orange, // Color of the container
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Colors
                                          .grey, // Lighter border for unselected color
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            horizontalSpaceSmall,                            // Row of size options with containers
                            // Size selection title
                            Text(
                              'Select Size',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
horizontalSpaceSmall,                            // Row of size options with containers
                            Row(
                              children: [
                                // Small size container
                                GestureDetector(
                                  onTap: () {
                                    // Handle size selection
                                    viewModel.selectSize('S');
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: viewModel.selectedSize == 'S'
                                            ? Colors.black
                                            : Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'S',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                // Medium size container
                                GestureDetector(
                                  onTap: () {
                                    // Handle size selection
                                    viewModel.selectSize('M');
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: viewModel.selectedSize == 'M'
                                            ? Colors.black
                                            : Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'M',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                // Large size container
                                GestureDetector(
                                  onTap: () {
                                    // Handle size selection
                                    viewModel.selectSize('L');
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: viewModel.selectedSize == 'L'
                                            ? Colors.black
                                            : Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'L',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                // Extra Large size container
                                GestureDetector(
                                  onTap: () {
                                    // Handle size selection
                                    viewModel.selectSize('XL');
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: viewModel.selectedSize == 'XL'
                                            ? Colors.black
                                            : Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'XL',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            // Delivery Details section
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Delivery Details',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextButton(
                                  onPressed: viewModel.Myoder,
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    ' Check Delivery Details',
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Delivery Details section
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Product Details',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle delivery button press
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    '+more',
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            ListTile(
                              leading: Icon(Icons.fiber_manual_record,
                                  color: Colors.black),
                              title: Text('Machine wash'),
                            ),
                            ListTile(
                              leading: Icon(Icons.fiber_manual_record,
                                  color: Colors.black),
                              title: Text('Polyester'),
                            ),
                            ListTile(
                              leading: Icon(Icons.fiber_manual_record,
                                  color: Colors.black),
                              title: Text('Tailored fit'),
                            ),
                            ListTile(
                              leading: Icon(Icons.fiber_manual_record,
                                  color: Colors.black),
                              title: Text('Dress code: Casual'),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: viewModel.wish,
                icon: Icon(Icons.favorite_border),
                label: Text('Wishlist'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.white,
                  // Text and icon color
                  elevation: 5,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: viewModel.ShoppingCard,
                child: Text('Add to Cart'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.orange, // Text color
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  DetailpageViewModel viewModelBuilder(BuildContext context) =>
      DetailpageViewModel();
}
