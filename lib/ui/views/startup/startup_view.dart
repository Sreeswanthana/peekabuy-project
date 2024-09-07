import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';

import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(seconds: 2),
            curve: Curves.easeOut,
            left: 0,
            right: 0, // Add this to center horizontally
            bottom: viewModel.isImageVisible
                ? MediaQuery.of(context).size.height / 2 - 150
                : -300, // Adjust the final position and initial offset
            child: AnimatedOpacity(
              opacity: viewModel.isImageVisible ? 1.0 : 0.0,
              duration: const Duration(seconds: 2),
              child: Center(
                child: Image.asset(
                  'assets/images/img.png',
                  key: const Key('center'),
                  width: 300, // Adjust the width of the image
                  height: 300, // Adjust the height of the image
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(BuildContext context) => StartupViewModel();

  @override
  void onViewModelReady(StartupViewModel viewModel) {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      viewModel.runStartupLogic();
      viewModel.showImage();
    });
  }
}
