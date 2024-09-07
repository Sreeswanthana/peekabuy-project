import 'package:flutter/material.dart';
import 'package:peeka/ui/common/ui_helpers.dart';

class ShoppingCart extends StatefulWidget {
  final String image;
  final String name;
  final String description;
  final String price;
  final String discountPrice;
  final String offerPercentage;
  final bool isSelected;
  final VoidCallback onTap;

  const ShoppingCart({
    Key? key,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.discountPrice,
    required this.offerPercentage,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  bool isFavorite = false;
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    if (!isVisible) return Container(); // If not visible, return an empty container

    return Center(
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          height: 180,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: widget.isSelected ? Colors.orange : Colors.grey,
              width: 2,
            ),
          ),
          child: Row(
            children: [
              // Left side: Image
              Container(
                height: 140,
                width: 170,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Right side: Text and other content
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name
                    Text(
                      widget.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 5),
                    // Description
                    Text(
                      widget.description,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 1),
                    // Rating and additional text
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ), Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),


                        const SizedBox(width: 10),
                        const Text(
                          '(32 ratings)',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    // Dropdowns
                    Row(
                      children: [
                        // Size dropdown
                        // Container(
                        //   height: 35,
                        //   width: 90,
                        //   padding: const EdgeInsets.all(5),
                        //   decoration: BoxDecoration(
                        //     border: Border.all(color: Colors.grey),
                        //     borderRadius: BorderRadius.circular(5),
                        //   ),
                        //   child: DropdownButton<String>(
                        //     value: 'Small',
                        //     underline: Container(),
                        //     items: ['Small', 'Medium', 'Large', 'Extra Large']
                        //         .map((String size) {
                        //       return DropdownMenuItem<String>(
                        //         value: size,
                        //         child: Text(size),
                        //       );
                        //     }).toList(),
                        //     onChanged: (String? newValue) {
                        //       // Handle size change
                        //     },
                        //   ),
                        // ),
                        Container(
                          height: 35,
                          width: 91,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: DropdownButton<String>(
                            value: 'Small',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black
                            ),
                            underline: Container(),
                            items: ['Small', 'Medium', 'Large', 'Extra Large']
                                .map((String size) {
                              return DropdownMenuItem<String>(
                                value: size,
                                child: Text(size),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              // Handle quantity change
                            },
                          ),
                        ),
                        const SizedBox(width: 30),
                        // Quantity dropdown
                        Container(
                          height: 35,
                          width: 70,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: DropdownButton<int>(
                            value: 1,
                            underline: Container(),
                            items: [1, 2, 3, 4]
                                .map((int qty) {
                              return DropdownMenuItem<int>(
                                value: qty,
                                child: Text(qty.toString()),
                              );
                            }).toList(),
                            onChanged: (int? newValue) {
                              // Handle quantity change
                            },
                          ),
                        ),
                      ],
                    ),
                    // vPrice and discount

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.price,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                widget.discountPrice,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                widget.offerPercentage,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFEBA77),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              // Favorite button
                              IconButton(
                                icon: Icon(
                                  isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: isFavorite ? Colors.red : Colors.grey,
                                ),
                                onPressed: () {
                                  setState(() {
                                    isFavorite = !isFavorite;
                                  });
                                },
                              ),
                              // Delete button
                              IconButton(
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.grey,
                                ),
                                onPressed: () {
                                  setState(() {
                                    isVisible = false; // Remove the item from view
                                  });
                                },
                              ),
                            ],
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
}

