import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:peeka/ui/views/jackets/carts.dart';
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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jackets',
                style: TextStyle(
                  fontSize: screenWidth * 0.05, // Scalable font size
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                '4568 items',
                style: TextStyle(
                  fontSize: screenWidth * 0.035, // Scalable font size
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 15.0,left: 15),
            child: Column(
              children: [
                buildCartRow(screenWidth, screenHeight, [
                  Carts(
                    image: 'assets/images/img_41.png',
                    name: 'Shein',
                    description: 'Solid ruffle hem lace',
                    price: '345',
                    discountPrice: '765',
                    offerPercentage: '40% off',
                    rating: '4.5*',
                  ),
                  Carts(
                    image: 'assets/images/img_42.png',
                    name: 'Western Laddy',
                    description: 'Flounce Sleeveless',
                    price: '545',
                    discountPrice: '115',
                    offerPercentage: '60% off',
                    rating: '5.5*',
                  ),
                ]),
                verticalSpaceSmall,
                buildCartRow(screenWidth, screenHeight, [
                  Carts(
                    image: 'assets/images/img_43.png',
                    name: 'RedCosmos',
                    description: 'Black & White Check...',
                    price: '1115',
                    discountPrice: '2365',
                    offerPercentage: '50% off',
                    rating: '5.5*',
                  ),
                  Carts(
                    image: 'assets/images/img_47.png',
                    name: 'Shop Style',
                    description: 'Gray Crop Jacket...',
                    price: '545',
                    discountPrice: '1115',
                    offerPercentage: '60% off',
                    rating: '5.5*',
                  ),
                ]),
            verticalSpaceSmall,
      
                buildCartRow(screenWidth, screenHeight, [
                  Carts(
                    image: 'assets/images/img_48.png',
                    name: 'Shalls',
                    description: 'Brown Full Sleeve...',
                    price: '745',
                    discountPrice: '1235',
                    offerPercentage: '40% off',
                    rating: '4.5*',
                  ),
                  Carts(
                    image: 'assets/images/img_46.png',
                    name: 'Gingtto',
                    description: 'Leathery Finished..',
                    price: '445',
                    discountPrice: '1115',
                    offerPercentage: '60% off',
                    rating: '5.5*',
                  ),
                ]),
                verticalSpaceSmall,
                buildCartRow(screenWidth, screenHeight, [
                  Carts(
                    image: 'assets/images/img_43.png',
                    name: 'Shein',
                    description: 'Solid ruffle hem lace',
                    price: '345',
                    discountPrice: '765',
                    offerPercentage: '40% off',
                    rating: '4.5*',
                  ),
                  Carts(
                    image: 'assets/images/img_47.png',
                    name: 'Western Laddy',
                    description: 'Flounce Sleeveless',
                    price: '545',
                    discountPrice: '115',
                    offerPercentage: '60% off',
                    rating: '5.5*',
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCartRow(double screenWidth, double screenHeight, List<Carts> carts) {
    return Container(
      height: screenHeight * 0.35, // Responsive height (35% of screen height)
      width: screenWidth,
      child: Row(
        children: [
          Expanded(child: carts[0]),
          horizontalSpaceMedium,
          Expanded(child: carts[1]),
        ],
      ),
    );
  }

  @override
  JacketsViewModel viewModelBuilder(BuildContext context) => JacketsViewModel();
}
