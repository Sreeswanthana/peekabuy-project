import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, LoginViewModel viewModel, Widget? child) {
    final size = MediaQuery.of(context).size;

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
                  'assets/images/img.png',
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
                height: size.height * 0.7,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: size.height * 0.65,
                        decoration: const BoxDecoration(
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
                              const Center(
                                child: Text(
                                  'Welcome Back!',
                                  style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(height: size.height * 0.05),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Column(
                                  children: [
                                    // Email Field
                                    TextField(
                                      controller: viewModel.emailController,
                                      decoration: InputDecoration(
                                        prefixIcon: const Icon(Icons.email, color: Colors.orange),
                                        hintText: 'Email',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        errorText: viewModel.emailError, // Display error message
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.03),
                                    // Password Field
                                    TextField(
                                      controller: viewModel.passwordController,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        prefixIcon: const Icon(Icons.lock, color: Colors.orange),
                                        suffixIcon: const Icon(Icons.visibility_off, color: Colors.orange),
                                        hintText: 'Password',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        errorText: viewModel.passwordError, // Display error message
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: viewModel.isChecked,
                                          onChanged: (bool? value) {
                                            viewModel.toggleCheckbox(value!); // Update checkbox state
                                          },
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                        ),
                                        Text(
                                          'Remember Me',
                                          style: TextStyle(
                                            fontSize: size.width * 0.03,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "Forgot Password?",
                                        style: TextStyle(
                                          color: Colors.black,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: size.height * 0.04),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    viewModel.login(); // Trigger login
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: const Color(0xFFF39B22),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    minimumSize: const Size(200, 50),
                                  ),
                                  child: const Text('Login'),
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
  LoginViewModel viewModelBuilder(BuildContext context) => LoginViewModel();
}
