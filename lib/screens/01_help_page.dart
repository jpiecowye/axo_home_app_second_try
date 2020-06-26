import 'package:flutter/material.dart';
import 'package:axohomeapp/utilities/back_button.dart';
import 'package:axohomeapp/utilities/constants.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HelpPage extends StatefulWidget {
  static String id = 'help_page';
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGreyColour,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 50.0,
              width: double.infinity,
              color: kLightGreyColour,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    BackwardsButton(),
                  ]),
            ),
            Expanded(
              child: Carousel(
                boxFit: BoxFit.cover,
                animationCurve: Curves.fastOutSlowIn,
                dotSize: 5.0,
                dotColor: kLightPinkColour,
                dotIncreasedColor: kDarkPinkColour,
                dotBgColor: kLightGreyColour,
                dotPosition: DotPosition.topCenter,
                dotVerticalPadding: 0,
                showIndicator: true,
                indicatorBgPadding: 10,
                overlayShadow: true,
                images: [
                  Image.asset('images/tutorial 12.png'),
                  Image.asset('images/tutorial 22.png'),
                  Image.asset('images/tutorial 32.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
