import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    final size = MediaQuery.of(context).size;
    final containerHeight = size.height * 0.7; // 70% of the screen height
    final innerContainerHeight =
        size.height * 0.65; // 65% of the screen height for the white container

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF39B22),
        body: Stack(children: [
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
              child: Stack(children: [
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
                        topLeft: Radius.circular(30), // Curved top left corner
                        topRight:
                            Radius.circular(30), // Curved top right corner
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: size.height *
                                  0.05), // Spacing based on screen height
                          Center(
                            child: Text(
                              'Welcome Back!',
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                              height: size.height *
                                  0.05), // Space between text and text fields
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.email, color: Colors.orange),
                                hintText: 'Email',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.03),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.lock, color: Colors.orange),
                                suffixIcon: Icon(Icons.visibility_off,
                                    color: Colors.orange),
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.01),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Checkbox(
                                      value: viewModel.isChecked,
                                      onChanged: (bool? value) {
                                        viewModel
                                            .toggleCheckbox(value ?? false);
                                      },
                                      checkColor: Colors.white,
                                      activeColor: Colors.black,
                                    ),
                                    Text(
                                      'Remember Me',
                                      style: TextStyle(
                                        fontSize: size.width *
                                            0.03, // Responsive font size
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "ForgotePassword?",
                                    style: TextStyle(
                                        color: Colors.black,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              height:
                                  size.height * 0.04), // Spacing before buttons
                          Center(
                            child: ElevatedButton(
                              onPressed: viewModel.dash,
                              // Add login button action here
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor:
                                    const Color(0xFFF39B22), // White text color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                minimumSize: Size(200,
                                    50), // Full width button with fixed height
                              ),
                              child: Text(
                                'Login',
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.01),
                          Center(child: Text(("or continue with"))),
                          Center(
                            child: Container(
                              width: 200,
                              height: 60,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "assets/images/img_2.png",
                                    height: 30,
                                    width: 40,
                                  ),
                                  Image.asset(
                                    "assets/images/img_3.png",
                                    height: 30,
                                    width: 40,
                                  ),
                                  Image.asset(
                                    "assets/images/img_4.png",
                                    height: 30,
                                    width: 40,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 90.0),
                            child: Row(
                              children: [
                                Text("Don’t have an account ? "),
                                TextButton(
                                  onPressed: viewModel.sign,
                                  child: Text(
                                    "Signup",
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
