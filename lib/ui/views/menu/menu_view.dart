import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'menu_viewmodel.dart';

class MenuView extends StackedView<MenuViewModel> {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      MenuViewModel viewModel,
      Widget? child,
      ) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.cancel),
            onPressed: () {
              // Handle cancel button press
              Navigator.pop(context);
            },
          ),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Image.asset(
                'assets/images/img.png', // Replace with your image asset path
                height: 40.0,
                width: MediaQuery.of(context).size.width * 0.5, // Responsive width
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Handle search icon press
              },
            ),
          ],
        ),
        body: Container(
          color: Colors.white, // White background for the container
          padding: const EdgeInsets.all(10.0), // Add padding around the content
          child: Column(
            children: [
              _buildListTile(context, 'Women', 'assets/images/img_30.png'),
              _buildListTile(context, 'Men', 'assets/images/img_31.png'),
              _buildListTile(context, 'Kids', 'assets/images/img_32.png'),
              _buildListTile(context, 'Baby', 'assets/images/img_33.png'),
              _buildListTile(context, 'Footwears', 'assets/images/img_34.png'),
              _buildListTile(context, 'Accessories', 'assets/images/img_35.png'),
              _buildListTile(context, 'Beauty', 'assets/images/img_36.png'),
              _buildListTile(context, 'Jewellery', 'assets/images/img_37.png'),
              _buildListTile(context, 'Sports', 'assets/images/img_39gi.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListTile(BuildContext context, String title, String imagePath) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5.0), // Spacing between ListTiles
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, // Black border color
          width: 0.5, // Border width of 0.5
        ),
        borderRadius: BorderRadius.circular(8.0), // Slightly rounded corners
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25.0,
          backgroundImage: AssetImage(imagePath), // Circular avatar image
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.arrow_forward_ios), // Forward arrow icon
        onTap: () {
          // Handle ListTile tap
        },
      ),
    );
  }

  @override
  MenuViewModel viewModelBuilder(BuildContext context) => MenuViewModel();
}
