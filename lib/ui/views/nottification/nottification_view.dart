import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'nottification_viewmodel.dart';

class NottificationView extends StackedView<NottificationViewModel> {
  const NottificationView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      NottificationViewModel viewModel,
      Widget? child,
      ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          // Row with three containers at the top
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // First container - Orange
              Container(
                width: 120,
                height: 35,
                color: Colors.orange,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 16.0),
                child: const Text(
                  'All',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              // Second container - Black border
              Container(
                width: 120,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 16.0),
                child: const Text(
                  'Order Info',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              // Third container - Black border
              Container(
                width: 120,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 16.0),
                child: const Text(
                  'Offers',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20), // Spacing between the row and the white container

          // Centered container, texts, and button
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 3),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.orange,
                          size: 80,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20), // Spacing

                  // Text below the notification container
                  const Text(
                    'You have no notifications',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 8), // Spacing
                  const Text(
                    'We will notify you once we have something for you',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20), // Spacing

                  ElevatedButton(
                    onPressed: () {
                      // Action for continuing to shopping
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.orange, // Button background color
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                    ),
                    child: const Text('Continue to Shopping'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  NottificationViewModel viewModelBuilder(BuildContext context) =>
      NottificationViewModel();
}
