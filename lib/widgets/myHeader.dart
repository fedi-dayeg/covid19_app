import 'package:covid19_app/screens/info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';
import 'myClipper.dart';

class MyHeader extends StatelessWidget {
  final String image;
  final String textTop;
  final String textBottom;

  const MyHeader({this.image, this.textTop, this.textBottom});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(left: 40, top: 40, right: 20),
        height: 320,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF3383CD),
              Color(0xFF11249F),
            ],
          ),
          image: DecorationImage(
            image: AssetImage("assets/images/virus.png"),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                child: SvgPicture.asset("assets/icons/menu.svg"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return InfoScreen();
                    },
                  ));
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Stack(
                children: [
                  SvgPicture.asset(
                    image,
                    width: 230,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                  Positioned(
                    top: 30,
                    left: 130,
                    child: Text(
                      "$textTop \n $textBottom",
                      style: kHeadingTextStyle.copyWith(color: Colors.white),
                    ),
                  ),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
