import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'newaddress_viewmodel.dart';

class NewaddressView extends StackedView<NewaddressViewModel> {
  const NewaddressView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      NewaddressViewModel viewModel,
      Widget? child,
      ) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text('New Address'),
          centerTitle: true,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20.0),
                    const Text(
                      'Delivery Address',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20.0),
      
                    // Enter Name field
                    const Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
      
                    // Address field
                    const Text(
                      'Address',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Address',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      maxLines: 3,
                    ),
                    const SizedBox(height: 20.0),
      
                    // Pincode field
                    const Text(
                      'Pincode',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Pincode',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 20.0),
      
                    // Building Name field
                    const Text(
                      'Building Name',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Building Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
      
                    // City field
                    const Text(
                      'City',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter City',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
      
                    // State field
                    const Text(
                      'State',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter State',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
      
                    // Add selectable containers (Home and Work)
                    const Text(
                      'Select Address Type',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Home container
                        GestureDetector(
                          onTap: () => viewModel.selectAddressType('Home'),
                          child: Container(
                            height: 40.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: viewModel.selectedAddressType == 'Home'
                                    ? Colors.orange
                                    : Colors.grey,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: const Center(
                              child: Text(
                                'Home',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
      
                        // Work container
                        GestureDetector(
                          onTap: () => viewModel.selectAddressType('Work'),
                          child: Container(
                            height: 40.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: viewModel.selectedAddressType == 'Work'
                                    ? Colors.orange
                                    : Colors.grey,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: const Center(
                              child: Text(
                                'Work',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
      
            // Save Address Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: SizedBox(
                width: 400.0,
                height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange, // Button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                    // Implement save address functionality
                  },
                  child: const Text(
                    'Save Address',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white, // Text color
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0), // Space below the button
          ],
        ),
      ),
    );
  }

  @override
  NewaddressViewModel viewModelBuilder(BuildContext context) =>
      NewaddressViewModel();
}
