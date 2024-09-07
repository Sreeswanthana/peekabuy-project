import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'dasboard_viewmodel.dart';

class DasboardView extends StackedView<DasboardViewModel> {
  const DasboardView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DasboardViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:  IndexedStack(
        index: viewModel.currentIndex,
        children:viewModel.Pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: viewModel.currentIndex,
        backgroundColor: Colors.orange,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        onTap: viewModel.setIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),

        ],
      ),
    );
  }

  @override
  DasboardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DasboardViewModel();
}
