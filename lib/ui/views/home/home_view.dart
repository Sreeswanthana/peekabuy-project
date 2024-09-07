import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                "assets/images/img_1.png",
                key: const Key('bottom_right_image'),
              ),
            ),
            Center(
              child: Image.asset(
                'assets/images/img.png',
                key: const Key('startup_image'),
                width: 300, // Adjust the width of the image
                height: 300, // Adjust the height of the image
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 58.0),
                child: Container(
                  height: 55,
                  width: 180,
                  child: ElevatedButton(
                    onPressed: viewModel.navigo,
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color(0xFFF39B22), // Orange background color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(15), // Curved border
                      ),
                    ),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold,
                        color: Colors.white, // White text color
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
