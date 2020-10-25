import 'package:flutter/material.dart';

import '../constant.dart';

class MyMap extends StatelessWidget {
  final String image;

  const MyMap({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      height: 178,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 30,
            color: kShadowColor,
          ),
        ],
      ),
      child: Image.asset(
        image,
        fit: BoxFit.contain,
      ),
    );
  }
}
