import 'package:flutter/material.dart';
import 'package:peeka/ui/common/ui_helpers.dart';
import 'package:peeka/ui/views/home_page/categorycard.dart';
import 'package:peeka/ui/views/home_page/popularpage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stacked/stacked.dart';
import 'home_page_viewmodel.dart';

class HomePageView extends StackedView<HomePageViewModel> {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomePageViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: viewModel.menu,
          ),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Image.asset(
                'assets/images/img.png', // Replace with your image asset path
                height: 40.0,
                width:
                    MediaQuery.of(context).size.width * 0.5, // Responsive width
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: viewModel.nottification,
              // Handle notification icon press
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                // Handle shopping cart icon press
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: MediaQuery.of(context).size.width *
                      0.1, // Responsive radius
                  backgroundImage: const AssetImage(
                      'assets/images/img_5.png'), // Replace with your avatar image asset path
                ),
                title: const Text(
                  'Hello sree swanthana!',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Row(
                  children: const [
                    Icon(Icons.location_on, color: Colors.grey),
                    SizedBox(width: 8.0),
                    Text('Ernakulam-674543'),
                  ],
                ),
              ),
              verticalSpaceSmall,
              Center(
                child: GestureDetector(
                  onTap: viewModel
                      .search, // Pass the function reference, not call it
                  child: Container(
                    width: MediaQuery.of(context).size.width *
                        0.9, // Responsive width
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(80),
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for brands product',
                        border: InputBorder.none,
                        prefixIcon:
                            const Icon(Icons.search, color: Colors.grey),
                        suffixIcon:
                            const Icon(Icons.camera_alt, color: Colors.grey),
                      ),
                      enabled:
                          false, // Disable input to make the search bar non-editable
                    ),
                  ),
                ),
              ),
              verticalSpaceMedium,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      "Category",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              verticalSpaceTiny,
              Container(
                height: 165,
                width:
                    MediaQuery.of(context).size.width * 0.9, // Responsive width
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Categorycard(
                            names: 'Mens', img: 'assets/images/img_6.png'),
                        Categorycard(
                            names: 'Womens', img: 'assets/images/img_7.png'),
                        Categorycard(
                            names: 'Kids', img: 'assets/images/img_8.png'),
                        Categorycard(
                            names: 'Footwear', img: 'assets/images/img_9.png'),
                        Categorycard(
                            names: 'Womens', img: 'assets/images/img_7.png'),
                        Categorycard(
                            names: 'Mens', img: 'assets/images/img_6.png'),
                      ],
                    ),
                  ],
                ),
              ),
              verticalSpaceTiny,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 150, // Height of the PageView
                      width: MediaQuery.of(context).size.width *
                          0.9, // Responsive width
                      child: PageView(
                        reverse: false,
                        controller: viewModel.pageController,
                        onPageChanged: (int page) {
                          viewModel.setCurrentPage(page);
                          viewModel.startAutoScroll;
                        },
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: const AssetImage(
                                    'assets/images/img_10.png'), // Replace with your image asset path
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: const AssetImage(
                                    'assets/images/img_10.png'), // Replace with your image asset path
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: const AssetImage(
                                    'assets/images/img_10.png'), // Replace with your image asset path
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SmoothPageIndicator(
                      controller: viewModel.pageController,
                      count: 3,
                      effect: const ExpandingDotsEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        activeDotColor: Colors.orange,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('See All',
                                style: TextStyle(color: Colors.orange)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 260,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: viewModel.detailpage,
                              child: PopularPage(
                                image: 'assets/images/img_15.png',
                                name: 'Shein',
                                description: 'Solid ruffle hem lace',
                                price: '345',
                                discountPrice: '765',
                                offerPercentage: '40% off',
                                rating: '4.5*',
                              ),
                            ),
                          ),
                          horizontalSpaceMedium,
                          Expanded(
                            child: PopularPage(
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
                    verticalSpaceMedium,
                    Container(
                      height: 260,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Expanded(
                            child: PopularPage(
                              image: 'assets/images/img_18.png',
                              name: 'Fussion',
                              description: 'Solid ruffle hem sleev',
                              price: '785',
                              discountPrice: '1565',
                              offerPercentage: '60% off',
                              rating: '5.5*',
                            ),
                          ),
                          horizontalSpaceMedium,
                          Expanded(
                            child: PopularPage(
                              image: 'assets/images/img_19.png',
                              name: 'Lymio',
                              description: 'White solid crop top',
                              price: '1545',
                              discountPrice: '3115',
                              offerPercentage: '63% off',
                              rating: '5.5*',
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceMedium,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'New Arrival',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('See All',
                                style: TextStyle(color: Colors.orange)),
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
                            child: PopularPage(
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
                            child: PopularPage(
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
                    verticalSpaceMedium,
                    Container(
                      height: 260,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Expanded(
                            child: PopularPage(
                              image: 'assets/images/img_21.png',
                              name: 'Indiaspopup',
                              description: 'Pista green anarkali..',
                              price: '845',
                              discountPrice: '65',
                              offerPercentage: '40% off',
                              rating: '4.5*',
                            ),
                          ),
                          horizontalSpaceMedium,
                          Expanded(
                            child: PopularPage(
                              image: 'assets/images/img_22.png',
                              name: 'Azza fashion',
                              description: 'Red free anarkali',
                              price: '3545',
                              discountPrice: '1115',
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
            ],
          ),
        ),
      ),
    );
  }

  @override
  HomePageViewModel viewModelBuilder(BuildContext context) =>
      HomePageViewModel();
}
