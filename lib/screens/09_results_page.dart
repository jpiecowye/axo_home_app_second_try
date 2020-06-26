import 'package:axohomeapp/screens/07_subject_page.dart';
import 'package:axohomeapp/screens/10_results_subpage.dart';
import 'package:axohomeapp/screens/11_feeling_page.dart';
import 'package:axohomeapp/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:axohomeapp/utilities/rounded_heading.dart';
import 'package:axohomeapp/utilities/back_button.dart';
import 'package:axohomeapp/utilities/delete_button.dart';
import 'package:axohomeapp/utilities/bubble_button.dart';

class ResultsPage extends StatefulWidget {
  static String id = '07_results_page';
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBlueColour,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            //TODO 7.1 DataTransfer: Data filled in the general & specifics text pages should be transferred to 09_results_page and placed in their allocated spots.
            Container(
                child: Row(
                  children: <Widget>[
                    BackwardsButton(),
                  ],
                ),
                width: double.infinity,
                height: 50.0,
                color: kLightBlueColour),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.maxFinite,
                      height: 1780.0,
                      color: kLightGreyColour,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: double.maxFinite,
                            height: 180.0,
                            color: kLightBlueColour,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 30.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'YELLOW BUILDING',
                                        style: kTitleMontBold16,
                                      ),
                                      Text(
                                        '110 MAIN ST.',
                                        style: kTitleMontBold16,
                                      ),
                                      Text(
                                        'CORKTOWN',
                                        style: kTitleMont16,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    //TODO 7.3 Alphabetic Score: Divide the total answered questions by the total score and use the scorecard page to give it an alphabetic score.
                                    alignment: Alignment.center,
                                    children: <Widget>[
                                      Image.asset('images/Icon-Callout.png',
                                          height: 80.0),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 12.0),
                                        child: Text(
                                          'F',
                                          style: kTitleMont30White,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned.fill(
                            top: 160,
                            child: RoundedHeading(
                              headingChild: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'ANALYTICS',
                                      style: kTitleMontBold16Grey,
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Container(
                                      color: kGreyColour,
                                      height: 2.0,
                                      width: double.maxFinite,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 25, right: 25),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 40.0,
                                          ),
                                          Column(
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Text(
                                                    '\$',
                                                    style: kTitleNunito16Grey,
                                                  ),
                                                  Text(
                                                    '485000',
                                                    style: kTitleNunito16Grey,
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    'asking price',
                                                    style: kTitleNunito12Grey,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 5.0),
                                              Container(
                                                color: kGreyColour,
                                                height: 2.0,
                                                width: double.maxFinite,
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 30),
                                          Column(
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Text(
                                                    '600',
                                                    style: kTitleNunito16Grey,
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    'square feet',
                                                    style: kTitleNunito12Grey,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 5.0),
                                              Container(
                                                color: kGreyColour,
                                                height: 2.0,
                                                width: double.maxFinite,
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 30),
                                          Column(
                                            children: <Widget>[
                                              //TODO 7.2 $ per sq foot calc: divide the area by the square feet to get the $ per square foot cost. No decimals.
                                              Row(
                                                children: <Widget>[
                                                  Text(
                                                    '\$',
                                                    style: kTitleNunito16Grey,
                                                  ),
                                                  Text(
                                                    '425',
                                                    style: kTitleNunito16Grey,
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    '\$ per square foot',
                                                    style: kTitleNunito12Grey,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 5.0),
                                              Container(
                                                color: kGreyColour,
                                                height: 2.0,
                                                width: double.maxFinite,
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 30.0),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            top: 440.0,
                            child: RoundedHeading(
                              headingChild: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'CONTACT',
                                      style: kTitleMontBold16Grey,
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Container(
                                      color: kGreyColour,
                                      height: 2.0,
                                      width: double.maxFinite,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 25, right: 25),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 40.0,
                                          ),
                                          Column(
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Text(
                                                    'JOEL PIECOWYE',
                                                    style: kTitleNunito16Grey,
                                                  ),
                                                  Spacer(),
                                                ],
                                              ),
                                              SizedBox(height: 5.0),
                                              Container(
                                                color: kGreyColour,
                                                height: 2.0,
                                                width: double.maxFinite,
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 30),
                                          Column(
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Text(
                                                    '306-717-0068',
                                                    style: kTitleNunito16Grey,
                                                  ),
                                                  Spacer(),
                                                ],
                                              ),
                                              SizedBox(height: 5.0),
                                              Container(
                                                color: kGreyColour,
                                                height: 2.0,
                                                width: double.maxFinite,
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 30),
                                          Column(
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Text(
                                                    'joelP@email.com',
                                                    style: kTitleNunito16Grey,
                                                  ),
                                                  Spacer(),
                                                ],
                                              ),
                                              SizedBox(height: 5.0),
                                              Container(
                                                color: kGreyColour,
                                                height: 2.0,
                                                width: double.maxFinite,
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 30.0),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            top: 720,
                            child: RoundedHeading(
                              headingChild: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'WALKTHROUGH',
                                      style: kTitleMontBold16Grey,
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Container(
                                      color: kGreyColour,
                                      height: 2.0,
                                      width: double.maxFinite,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, right: 20),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 40.0,
                                          ),
                                          //TODO 7.4 Continue Walkthrough: have this button to allow users to go back to 07_subject_page to continue doing questions
                                          BubbleButton(
                                            onPressed: () {
                                              Navigator.pushNamed(
                                                  context, SubjectPage.id);
                                            },
                                            textInput: 'Continue Walkthrough',
                                            boxColour: kPinkColour,
                                            textStyle: kTitleMontBold16White,
                                            boxHeight: 45,
                                            highlightedColour: kDarkPinkColour,
                                          ),
                                          SizedBox(height: 25.0),
                                          BubbleButton(
                                            onPressed: () {
                                              Navigator.pushNamed(
                                                  context, ResultsSubPage.id);
                                            },
                                            textInput: 'CONDITION',
                                            boxColour: kDarkPinkColour,
                                            textStyle: kTitleMontBold16White,
                                            boxHeight: 60,
                                            highlightedColour: kPinkColour,
                                          ),
                                          SizedBox(height: 25.0),
                                          BubbleButton(
                                            onPressed: () {
                                              Navigator.pushNamed(
                                                  context, FeelingPage.id);
                                            },
                                            textInput: 'IMPRESSION',
                                            boxColour: kDarkPinkColour,
                                            textStyle: kTitleMontBold16White,
                                            boxHeight: 60,
                                            highlightedColour: kPinkColour,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            top: 1080,
                            child: RoundedHeading(
                              headingChild: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'INFO',
                                      style: kTitleMontBold16Grey,
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Container(
                                      color: kGreyColour,
                                      height: 2.0,
                                      width: double.maxFinite,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 20, right: 20),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 40.0,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 65.0, right: 65.0),
                                            child: Column(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Image.asset(
                                                        'images/Icon-Bed.png',
                                                        height: 80.0),
                                                    Spacer(),
                                                    Text(
                                                      '2',
                                                      style: kTitleMont30,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 20.0),
                                                Row(
                                                  children: <Widget>[
                                                    Image.asset(
                                                        'images/Icon-Bath.png',
                                                        height: 80.0),
                                                    Spacer(),
                                                    Text(
                                                      '2',
                                                      style: kTitleMont30,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 20.0),
                                                Row(
                                                  children: <Widget>[
                                                    Image.asset(
                                                        'images/Icon-Balcony.png',
                                                        height: 80.0),
                                                    Spacer(),
                                                    Text(
                                                      '1',
                                                      style: kTitleMont30,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 40.0),
                                    //TODO 7.5 Greyed out icons: reduce image opacity for items checked as no in the 06_property info page
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Image.asset('images/Icon-AC.png',
                                                height: 55.0),
                                            Text('AC',
                                                style: kTitleNunito12Grey),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Image.asset(
                                                'images/Icon-Heater.png',
                                                height: 55.0),
                                            Text('HEAT',
                                                style: kTitleNunito12Grey),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Image.asset('images/Icon-WD.png',
                                                height: 55.0),
                                            Text('LAUNDRY',
                                                style: kTitleNunito12Grey),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Image.asset(
                                                'images/Icon-Pets Allowed.png',
                                                height: 55.0),
                                            Text('PETS',
                                                style: kTitleNunito12Grey),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Image.asset(
                                              'images/Icon-Wifi.png',
                                              height: 55.0,
                                            ),
                                            Text('WIFI',
                                                style: kTitleNunito12Grey),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 50.0,
                                    ),
                                    Container(
                                      height: 3.0,
                                      width: double.maxFinite,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 30.0,
                                    ),
                                    Center(
                                      child: Column(
                                        children: <Widget>[
                                          //TODO 7.6 Delete: Use the delete button to delete the completed checklist and button on the 02_homepage
                                          DeleteButton(
                                            onPressed: () {},
                                            textInput: ('Delete'),
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          Image.asset('images/Logo-3.png',
                                              height: 45.0),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
