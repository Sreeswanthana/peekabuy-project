import 'package:flutter/material.dart';
import 'package:peeka/ui/views/favourite/wishcart.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import 'favourite_viewmodel.dart';

class FavouriteView extends StackedView<FavouriteViewModel> {
  const FavouriteView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FavouriteViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_outlined),
          ),
          title: Text(
            "Wishlist",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            verticalSpaceMedium,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: 303,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Expanded(
                      child: Wishcart(
                        image: 'assets/images/img_15.png',
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
                      child: Wishcart(
                        image: 'assets/images/img_17.png',
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
            ),
            verticalSpaceMedium,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: 330,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Expanded(
                      child: Wishcart(
                        image: 'assets/images/img_20.png',
                        name: 'Alka',
                        description: 'Green chinnon..',
                        price: '945',
                        discountPrice: '1565',
                        offerPercentage: '41% off',
                        rating: '4.5*',
                      ),
                    ),
                    horizontalSpaceMedium,
                    Expanded(
                      child: Wishcart(
                        image: 'assets/images/img_17.png',
                        name: 'Western Laddy',
                        description: 'Flounce Sleeveless',
                        price: '5545',
                        discountPrice: '115',
                        offerPercentage: '60% off',
                        rating: '5.5*',
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
  FavouriteViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FavouriteViewModel();
}
