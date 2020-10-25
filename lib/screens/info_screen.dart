import 'package:covid19_app/constant.dart';
import 'package:covid19_app/widgets/myHeader.dart';
import 'package:covid19_app/widgets/prevent_card.dart';
import 'package:covid19_app/widgets/symptom_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyHeader(
              image: "assets/icons/coronadr.svg",
              textTop: "Get to know",
              textBottom: "About Covid-19",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Symptoms",
                    style: kTitleTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SymptomCard(
                        image: "assets/images/headache.png",
                        title: "Headache",
                        isActive: true,
                      ),
                      SymptomCard(
                        image: "assets/images/caugh.png",
                        title: "Caugh",
                      ),
                      SymptomCard(
                        image: "assets/images/fever.png",
                        title: "Fever",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Prevention",
                    style: kTitleTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PreventCard(
                    image: "assets/images/wear_mask.png",
                    title: "Wear face mask",
                    text:
                        "Since the start of the coronavirus outbreak some places have fully embraced facemasks,",
                  ),
                  PreventCard(
                    image: "assets/images/wash_hands.png",
                    title: "Wash your Hands",
                    text:
                        "Since the start of the coronavirus outbreak some places have fully embraced facemasks,",
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
