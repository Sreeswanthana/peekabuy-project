import 'package:flutter/material.dart';

class Wishcart extends StatefulWidget {
  final String image;
  final String name;
  final String description;
  final String price;
  final String discountPrice;
  final String offerPercentage;
  final String rating;

  const Wishcart({
    Key? key,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.discountPrice,
    required this.offerPercentage,
    required this.rating,
  }) : super(key: key);

  @override
  _WishcartState createState() => _WishcartState();
}

class _WishcartState extends State<Wishcart> {
  bool _isVisible = true;

  void _removeItem() {
    setState(() {
      _isVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_isVisible) {
      return SizedBox.shrink(); // Return an empty widget when not visible
    }

    return Material(
      elevation: 5, // Set the elevation here
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 303,
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
                  width: 186, // Match width of the container
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: GestureDetector(
                    onTap: _removeItem,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.delete_outline_rounded,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0, left: 8.0),
              child: Text(
                widget.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 2.0),
              child: Text(
                widget.description,
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
                        widget.price,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        widget.discountPrice,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.lineThrough,
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        widget.offerPercentage,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFEBA77),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    widget.rating,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(), // Adds space between text and button
            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                  size: 30.0,
                ),
                label: Text(
                  'Add to Cart',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  // Add your onPressed functionality here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
