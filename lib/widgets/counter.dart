import 'package:flutter/material.dart';

import '../constant.dart';

//TODO make this widget reusable
class Counter extends StatelessWidget {
  final String infectedNumber;
  final Color color;
  final String infected;
  Counter({this.infectedNumber, this.color, this.infected});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(7),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(.26),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(color: color, width: 2),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "$infectedNumber",
          style: TextStyle(
            fontSize: 40,
            color: color,
          ),
        ),
        Text(
          "$infected",
          style: kSubTextStyle,
        )
      ],
    );
  }
}
