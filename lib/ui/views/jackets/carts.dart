import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Carts extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String price;
  final String discountPrice;
  final String offerPercentage;
  final String rating;
  final ValueNotifier<bool> _isFavorited = ValueNotifier<bool>(false);
  final VoidCallback onTap; // Add onTap callback

  Carts({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.discountPrice,
    required this.offerPercentage,
    required this.rating,
    required this.onTap, // Require onTap in the constructor
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( // Use GestureDetector to handle taps
      onTap: onTap, // Call the provided callback when tapped
      child: Material(
        elevation: 5, // Set the elevation here
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: 280,
          width: 186,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 180,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: ValueListenableBuilder<bool>(
                      valueListenable: _isFavorited,
                      builder: (context, isFavorited, child) {
                        return IconButton(
                          icon: Icon(
                            isFavorited ? Icons.favorite : Icons.favorite_border,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            _isFavorited.value = !_isFavorited.value;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.0, left: 8.0),
                child: Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 2.0),
                child: Text(
                  description,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          price,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          discountPrice,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          offerPercentage,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFEBA77),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      rating,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
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
}
