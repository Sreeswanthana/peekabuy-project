import 'package:flutter/material.dart';
import 'package:peeka/ui/views/account/accart.dart';
import 'package:stacked/stacked.dart';

import 'account_viewmodel.dart';

class AccountView extends StackedView<AccountViewModel> {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AccountViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_outlined),
        ),
        title: const Text(
          "My Account",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xffFFF7ED),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: MediaQuery.of(context).size.width *
                      0.1, // Responsive radius
                  backgroundImage: const AssetImage(
                      'assets/images/img_5.png'), // Replace with your avatar image asset path
                ),
                title: const Text(
                  'Hello sree swanthana!',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.grey),
                        SizedBox(width: 4.0),
                        Expanded(child: Text('Ernakulam-674543')),
                      ],
                    ),
                    SizedBox(height: 4.0),
                    Text('sreesanthwana@gmail.com'),
                  ],
                ),
                trailing: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Edit",
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Accart(
                  images: 'assets/images/img_56.png',
                  names: 'My Orders',
                ),
                Accart(
                  images: 'assets/images/img_27.png',
                  names: 'Help Center',
                ),
                Accart(
                  images: 'assets/images/img_28.png',
                  names: "Membership",
                ),
                Accart(
                  images: 'assets/images/img_29.png',
                  names: "cupon",
                ),
              ],
            ),
            // Separated container with five parts
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left arrow icon
                  const Icon(
                    Icons.payments_outlined,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 160.0),
                    child: const Text(
                      "Payment Information",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Right side icon
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left arrow icon
                  const Icon(
                    Icons.manage_accounts,
                  ),
                  // Center text
                  Padding(
                    padding: const EdgeInsets.only(right: 160.0),
                    child: const Text(
                      "Manage Account",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Right side icon
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left arrow icon
                  const Icon(
                    Icons.settings_suggest,
                  ),
                  // Center text
                  Padding(
                    padding: const EdgeInsets.only(right: 160.0),
                    child: const Text(
                      "Peekabuy Suggests",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Right side icon
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left arrow icon
                  const Icon(
                    Icons.settings_sharp,
                  ),
                  // Center text
                  Padding(
                    padding: const EdgeInsets.only(right: 230.0),
                    child: const Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Right side icon
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left arrow icon
                  const Icon(
                    Icons.help_outline_sharp,
                  ),
                  // Center text
                  Padding(
                    padding: const EdgeInsets.only(right: 100.0),
                    child: const Text(
                      "Help us Improved the app",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Right side icon
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left arrow icon
                  const Icon(
                    Icons.shopping_cart,
                  ),
                  // Center text
                  Padding(
                    padding: const EdgeInsets.only(right: 160.0),
                    child: const Text(
                      "Item Details",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Right side icon
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16), // Spacing above
                  const Text(
                    'FAQs',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10), // Spacing between texts
                  const Text(
                    'ABOUT US',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'TERMS OF USE',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'PRIVACY POLICY',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 30), // Spacing before the button

                  // Elevated Button
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle logout logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // White background
                        side: const BorderSide(
                            color: Colors.orange, width: 2), // Orange border
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 5, // Elevated effect
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 100),
                      ),
                      child: const Text(
                        'Logout',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30), // Spacing after the button
                ],
              ),
            ),
            // Add more widgets here if needed
          ],
        ),
      ),
    );
  }

  @override
  AccountViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AccountViewModel();
}
