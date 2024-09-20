import 'package:flutter/material.dart';
import 'package:peeka/ui/views/trackoder/trackoder_view.dart';

class Odercar extends StatelessWidget {
  final String images;
  final String textone;
  final String textTWO;

  const Odercar({
    Key? key,
    required this.images,
    required this.textone,
    required this.textTWO,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150, // Fixed height
          width: double.infinity, // Maximum width
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              // Left side with image
              Container(
                width: 100, // Adjust width as needed
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(images), // Display the image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Right side with two texts
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment:
                        MainAxisAlignment.start, // Align texts to the top
                    children: [
                      Text(
                        textone, // Display the first text
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        textTWO, // Display the second text
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 10, // Adjust distance from the right
          top: 10, // Adjust distance from the top
          child: IconButton(
            icon: Icon(Icons.arrow_forward_ios), // Arrow icon
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TrackoderView()), // Navigate to TrackoderView
              );
            },
          ),
        ),
      ],
    );
  }
}
