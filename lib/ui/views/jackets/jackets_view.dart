import 'package:flutter/material.dart';
import 'package:peeka/ui/views/jackets/carts.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import 'jackets_viewmodel.dart';

class JacketsView extends StackedView<JacketsViewModel> {
  const JacketsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    JacketsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back when the arrow is pressed
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Jackets',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 2),
            Text(
              '4568 items',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search button action
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {
              // Handle favorites button action
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Handle shopping cart button action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: Carts(
                      image: 'assets/images/img_41.png',
                      name: 'Shein',
                      description: 'Solid ruffle hem lace',
                      price: '345',
                      discountPrice: '765',
                      offerPercentage: '40% off',
                      rating: '4.5*',
                    ),
                  ),
                  horizontalSpaceMedium,
                  Expanded(
                    child: Carts(
                      image: 'assets/images/img_42.png',
                      name: 'Western Laddy',
                      description: 'Flounce Sleeveless',
                      price: '545',
                      discountPrice: '115',
                      offerPercentage: '60% off',
                      rating: '5.5*',
                    ),
                  ),
                ],
              ),
            ),
            verticalSpaceMedium,
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: Carts(
                      image: 'assets/images/img_43.png',
                      name: 'RedCosmos',
                      description: 'Black & White Check...',
                      price: '1115',
                      discountPrice: '2365',
                      offerPercentage: '50% off',
                      rating: '5.5*',
                    ),
                  ),
                  horizontalSpaceMedium,
                  Expanded(
                    child: Carts(
                      image: 'assets/images/img_47.png',
                      name: 'Shop Style',
                      description: 'Gray Crop Jacket...',
                      price: '545',
                      discountPrice: '1115',
                      offerPercentage: '60% off',
                      rating: '5.5*',
                    ),
                  ),
                ],
              ),
            ),
            verticalSpaceMedium,
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: Carts(
                      image: 'assets/images/img_48.png',
                      name: 'Shalls',
                      description: 'Brown Full Sleeve...',
                      price: '745',
                      discountPrice: '1235',
                      offerPercentage: '40% off',
                      rating: '4.5*',
                    ),
                  ),
                  horizontalSpaceMedium,
                  Expanded(
                    child: Carts(
                      image: 'assets/images/img_46.png',
                      name: 'Gingtto',
                      description: 'Leathery Finished..',
                      price: '445',
                      discountPrice: '1115',
                      offerPercentage: '60% off',
                      rating: '5.5*',
                    ),
                  ),
                ],
              ),
            ),
            verticalSpaceMedium,
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: Carts(
                      image: 'assets/images/img_43.png',
                      name: 'Shein',
                      description: 'Solid ruffle hem lace',
                      price: '345',
                      discountPrice: '765',
                      offerPercentage: '40% off',
                      rating: '4.5*',
                    ),
                  ),
                  horizontalSpaceMedium,
                  Expanded(
                    child: Carts(
                      image: 'assets/images/img_47.png',
                      name: 'Western Laddy',
                      description: 'Flounce Sleeveless',
                      price: '545',
                      discountPrice: '115',
                      offerPercentage: '60% off',
                      rating: '5.5*',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  JacketsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      JacketsViewModel();
}
