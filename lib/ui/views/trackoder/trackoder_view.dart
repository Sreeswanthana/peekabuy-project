import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'trackoder_viewmodel.dart';

class TrackoderView extends StackedView<TrackoderViewModel> {
  const TrackoderView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TrackoderViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  TrackoderViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TrackoderViewModel();
}
