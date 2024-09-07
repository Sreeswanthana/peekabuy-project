import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_sign_viewmodel.dart';

class LoginSignView extends StackedView<LoginSignViewModel> {
  const LoginSignView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginSignViewModel viewModel,
    Widget? child,
  ) {
    // Get the screen height
    final size = MediaQuery.of(context).size;
    final containerHeight = size.height * 0.7; // 70% of the screen height
    final innerContainerHeight =
        size.height * 0.65; // 65% of the screen height for the white container

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF39B22),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  'assets/images/img.png', // Replace with your image path
                  height: size.height * 0.25, // Adjust the height as needed
                  width: size.width * 0.6, // Adjust the width as needed
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.26, // Position the container correctly
              left: 0,
              right: 0,
              child: Container(
                height: containerHeight,
                width: double.infinity, // Make the container full width
                decoration: BoxDecoration(
                  color: Colors
                      .white30, // White background color with some transparency
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30), // Curved top left corner
                    topRight: Radius.circular(30), // Curved top right corner
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0, // Position the orange container at the bottom
                      left: 0,
                      right: 0,
                      child: Container(
                        height: innerContainerHeight,
                        decoration: BoxDecoration(
                          color: Colors
                              .white, // White background color for the inner container
                          borderRadius: BorderRadius.only(
                            topLeft:
                                Radius.circular(30), // Curved top left corner
                            topRight:
                                Radius.circular(30), // Curved top right corner
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: size.height *
                                      0.05), // Spacing based on screen height
                              Center(
                                child: Text(
                                  'Start Your Shopping',
                                  style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(
                                  height: size.height *
                                      0.01), // Spacing between texts
                              Center(
                                child: Text(
                                  'Journey Now!',
                                  style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(
                                  height: size.height *
                                      0.08), // Spacing before buttons
                              Center(
                                child: ElevatedButton(
                                  onPressed: viewModel.login,

                                  // Add login button action here
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: const Color(
                                        0xFFF39B22), // White text color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    minimumSize: Size(200,
                                        50), // Full width button with fixed height
                                  ),
                                  child: Text(
                                    'Login',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                              SizedBox(
                                  height: size.height *
                                      0.04), // Spacing between buttons
                              Center(
                                child: OutlinedButton(
                                  onPressed: viewModel.sign,
                                  // Add signup button action here

                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: const Color(0xFFF39B22),
                                    side: BorderSide(
                                        color: const Color(
                                            0xFFF39B22)), // Orange border color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    minimumSize: Size(200,
                                        50), // Full width button with fixed height
                                  ),
                                  child: Text('Sign Up'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  LoginSignViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginSignViewModel();
}
