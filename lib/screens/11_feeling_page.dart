import 'package:flutter/material.dart';
import 'package:axohomeapp/utilities/back_button.dart';
import 'package:axohomeapp/utilities/constants.dart';
import 'package:flutter_icons/flutter_icons.dart';

class FeelingPage extends StatefulWidget {
  static String id = '11_feeling_page';
  @override
  _FeelingPageState createState() => _FeelingPageState();
}

class _FeelingPageState extends State<FeelingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGreyColour,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
                child: Row(
                  children: <Widget>[
                    BackwardsButton(),
                  ],
                ),
                width: double.infinity,
                height: 50.0,
                color: Colors.white),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                height: 70.0,
                width: double.maxFinite,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(height: 40),
                              Text(
                                'IMPRESSION',
                                style: kTitleMontBold16Grey,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              //TODO 7.8 Results subpage Alphabetic score: Divide the total answered Y/N questions by the total score and use the scorecard to get a score for the results subpage
                              Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset('images/Icon-Callout.png',
                                      height: 50.0),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 6.0),
                                    child: Text(
                                      'A+',
                                      style: kTitleMontBold16White,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                color: kGreyColour,
                height: 2.0,
                width: double.maxFinite,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              AntDesign.arrowright,
                              color: kBlueColour,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "You loved the views.",
                                style: kTitleNunito16Blue,
                              ),
                            ),
                          ],
                        )),
                    //TODO 7.9 Feelings subpage: Display all slider question answers into the feelings subpage, with the colour and text changing depending on the score.
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              AntDesign.arrowright,
                              color: kBlueColour,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "You loved the natural light.",
                                style: kTitleNunito16Blue,
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              AntDesign.arrowright,
                              color: kGreyColour,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "You were ok with the bathroom.",
                                style: kTitleNunito16Grey,
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              AntDesign.arrowright,
                              color: kBlueColour,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "You loved the views.",
                                style: kTitleNunito16Blue,
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              AntDesign.arrowright,
                              color: kGreyColour,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "You were ok with the kitchen.",
                                style: kTitleNunito16Grey,
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              AntDesign.arrowright,
                              color: kPinkColour,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "You did not like the design and layout.",
                                style: kTitleNunito16Pink,
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              AntDesign.arrowright,
                              color: kPinkColour,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "You disliked the complex.",
                                style: kTitleNunito16Pink,
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            Spacer(),
            Image.asset('images/Logo-3.png', height: 45.0),
            SizedBox(
              height: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}
