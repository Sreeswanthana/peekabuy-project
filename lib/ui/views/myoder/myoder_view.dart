import 'package:flutter/material.dart';
import 'package:peeka/ui/common/ui_helpers.dart';
import 'package:peeka/ui/views/myoder/odercar.dart';
import 'package:stacked/stacked.dart';

import 'myoder_viewmodel.dart';

class MyoderView extends StackedView<MyoderViewModel> {
  const MyoderView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MyoderViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Action for the arrow button
          },
        ),
        title: Center(
          child: Text(
            'My Order',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 0, // Remove shadow
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '2 Orders',
              style: TextStyle(
                fontSize: 15,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            color: Colors.white,
            child: Column(
              children: [
                Odercar(
                    images: 'assets/images/img_52.png',
                    textone: 'Delivery today',
                    textTWO:
                        'Light Peach Flounce Sleeve Frill Trim Swiss Dot...'),
                verticalSpaceMedium,
                Odercar(
                    images: 'assets/images/img_54.png',
                    textone: 'Delivery  Expected friday',
                    textTWO: 'Yellow Top with V Neck Sleeve Ruffle Hem Cro...'),
              ],
            ),
          ),
          verticalSpaceMedium,
          Text('Past three month'),
          verticalSpaceMedium,
          Odercar(
              images: 'assets/images/img_55.png',
              textone: 'Embroidered Anarkali Full sle...',
              textTWO: 'Delivered 3  August 2022'),
        ],
      ),
    );
  }

  @override
  MyoderViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MyoderViewModel();
}
