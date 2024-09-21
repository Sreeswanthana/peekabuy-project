import 'package:flutter/material.dart';
import 'package:peeka/ui/views/trackoder/traccart.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import '../home_page/popularpage.dart';
import 'trackoder_viewmodel.dart';

class TrackoderView extends StackedView<TrackoderViewModel> {
  const TrackoderView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      TrackoderViewModel viewModel,
      Widget? child,
      ) {
    // Fetch screen height and width for dynamic sizing
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

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
          title: const Text('Track Order'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: screenHeight * 0.03),
            Container(
              height: screenHeight * 0.18, // Dynamic height for the container
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(screenWidth * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Order ID - 7JLK56ER97PM4',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Delivery expected by Thursday',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Yellow Top with V Neck Sleeve Ruffle Hem Cro...',
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.25,
                    height: screenHeight * 0.18,
                    child: Image.asset(
                      'assets/images/img_53.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            Text(
              'Tracking',
              style: TextStyle(
                fontSize: screenHeight * 0.025, // Dynamic font size
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.015),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TrackOrderStep(
                    step: 'Placed Order',
                    isCompleted: true,
                    isLastStep: false, // Not the last step
                  ),
                  TrackOrderStep(
                    step: 'Shipped',
                    isCompleted: true,
                    isLastStep: false, // Not the last step
                  ),
                  TrackOrderStep(
                    step: 'Out for Delivery',
                    isCompleted: false,
                    isLastStep: false, // Not the last step
                  ),
                  TrackOrderStep(
                    step: 'Delivered Successfully',
                    isCompleted: false,
                    isLastStep: true, // This is the last step
                  ),
                ],
              ),
            ),
      
            SizedBox(height: screenHeight * 0.03), // Add space before buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: screenHeight * 0.06,
                  width: screenWidth * 0.4,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      side: const BorderSide(color: Colors.black), // Black border
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onPressed: () {
                      // Cancel order action
                    },
                    child: const Text('Cancel Order'),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.06,
                  width: screenWidth * 0.4,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.orange, // Orange button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onPressed: viewModel.buyagain,
                    child: const Text('Buy Again'),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            SizedBox(
              height: screenHeight * 0.06,
              width: double.infinity, // Use full width
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  side: const BorderSide(color: Colors.black), // Black border
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  // Action for the elevated button
                },
                child: const Text('Help Center'),
              ),
            ),
            SizedBox(height: screenHeight * 0.04), // Add space before address
            Text(
              'Shipping Address',
              style: TextStyle(
                fontSize: screenHeight * 0.025,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            const Text(
              'Maria Sajna\n'
                  'Kaithavalappil (H)\n'
                  'EK Nayanar Road, Varapuzha\n'
                  'Ernakulam, Kerala, 683517',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: screenHeight * 0.04), // Add space before products
            Text(
              'Keep Shopping',
              style: TextStyle(
                fontSize: screenHeight * 0.025,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            verticalSpaceMedium,
            Container(
              height: screenHeight * 0.32,
              width: screenWidth,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: viewModel.detail,
                      child: PopularPage(
                        image: 'assets/images/img_57.png',
                        name: 'Shein',
                        description: 'Solid ruffle hem lace',
                        price: '345',
                        discountPrice: '765',
                        offerPercentage: '40% off',
                        rating: '4.5*',
                      ),
                    ),
                  ),
                  horizontalSpaceMedium,
                  Expanded(
                    child: PopularPage(
                      image: 'assets/images/img_58.png',
                      name: 'Western Laddy',
                      description: 'Flounce Sleeveless',
                      price: '545',
                      discountPrice: '115',
                      offerPercentage: '60% off',
                      rating: '5.5*',
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget _buildTrackingStep(String title, bool isCompleted) {
    return Row(
      children: [
        Icon(
          isCompleted ? Icons.check_circle : Icons.circle,
          color: isCompleted ? Colors.orange : Colors.grey,
        ),
        const SizedBox(width: 30),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              color: isCompleted ? Colors.black : Colors.grey,
            ),
          ),
        ),
      ],
    );
  }

  @override
  TrackoderViewModel viewModelBuilder(BuildContext context) =>
      TrackoderViewModel();
}
