import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categorycard extends StatelessWidget {
  String img;
  String names;
  Categorycard({super.key, required this.names, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 130,
      child: Center(
          child: Column(
        children: [
          Container(
            height: 125,
            width: 120,
            decoration: BoxDecoration(
              color: Color(0xffFEBA77),
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage("${img}"),
              ),
            ),
          ),
          Text(names),
        ],
      )),
    );
  }
}
