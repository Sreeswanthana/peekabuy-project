import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'sign_viewmodel.dart';

class SignView extends StackedView<SignViewModel> {
  const SignView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      SignViewModel viewModel,
      Widget? child,
      ) {
    final size = MediaQuery.of(context).size;
    final containerHeight = size.height * 0.85; // 70% of the screen height
    final innerContainerHeight = size.height * 0.80;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF39B22),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: Stack(children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Center(
                  child: Image.asset(
                    'assets/images/img.png', // Replace with your image path
                    height: size.height * 0.25,
                    width: size.width * 0.6,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.26,
                left: 0,
                right: 0,
                child: Container(
                  height: containerHeight,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Stack(children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: innerContainerHeight,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: size.height * 0.05),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 1.0),
                                  child: Text(
                                    'Set Up Your Account',
                                    style: TextStyle(
                                      fontSize: 35,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: size.height * 0.02),
                              buildTextField(
                                context,
                                viewModel.nameController,
                                'Name',
                                Icons.person,
                                viewModel.nameError,
                              ),
                              SizedBox(height: size.height * 0.02),
                              buildTextField(
                                context,
                                viewModel.emailController,
                                'Email',
                                Icons.email,
                                viewModel.emailError,
                              ),
                              SizedBox(height: size.height * 0.02),
                              buildTextField(
                                context,
                                viewModel.passwordController,
                                'Password',
                                Icons.lock,
                                viewModel.passwordError,
                                isObscure: true,
                              ),
                              SizedBox(height: size.height * 0.02),
                              buildTextField(
                                context,
                                viewModel.confirmPasswordController,
                                'Confirm Password',
                                Icons.lock,
                                viewModel.confirmPasswordError,
                                isObscure: true,
                              ),
                              SizedBox(height: size.height * 0.02),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    print("Signup button pressed"); // Debugging line
                                    if (viewModel.validateFields()) {
                                      print("Fields validated, navigating to dashboard");
                                      viewModel.dash();
                                    } else {
                                      print("Validation failed");
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: const Color(0xFFF39B22),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    minimumSize: Size(200, 50),
                                  ),
                                  child: Text(
                                    'Signup',
                                    style: TextStyle(fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              Center(child: Text("or continue with")),
                              Center(
                                child: Container(
                                  width: 200,
                                  height: 60,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                padding: const EdgeInsets.symmetric(horizontal: 90.0),
                                child: Row(
                                  children: [
                                    Text("Don’t have an account? "),
                                    TextButton(
                                      onPressed: viewModel.login,
                                      child: Text(
                                        "Login",
                                        style: TextStyle(color: Colors.orange),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
        ),
      ),
    );
  }

  Widget buildTextField(BuildContext context, TextEditingController controller, String hintText, IconData icon, String? errorText, {bool isObscure = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: controller,
            obscureText: isObscure,
            decoration: InputDecoration(
              prefixIcon: Icon(icon, color: Colors.orange),
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          if (errorText != null && errorText.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                errorText,
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),
            ),
        ],
      ),
    );
  }

  @override
  SignViewModel viewModelBuilder(BuildContext context) => SignViewModel();
}
