import 'package:flutter/material.dart';

class Accart extends StatelessWidget {
  final String images;
  final String names;

  Accart({super.key, required this.images, required this.names});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white, // White container
          border: Border.all(color: Colors.black, width: 2), // Black border
          borderRadius: BorderRadius.circular(15), // Optional: rounded corners
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              images,
              width: 100,
              height: 100,
              fit: BoxFit.cover, // To ensure the image fits within its size
            ),
            const SizedBox(height: 10), // Add space between image and text
            Text(
              names,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
