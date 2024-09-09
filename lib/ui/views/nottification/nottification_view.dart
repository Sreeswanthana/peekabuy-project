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
            Navigator.of(context).pop(); // This pops the current screen.
          },
        ),
      ),
      body: Column(
        children: [

        ],
      ),
        // Add your notification content here
    );
  }

  @override
  NottificationViewModel viewModelBuilder(
      BuildContext context,
      ) => NottificationViewModel();
}
