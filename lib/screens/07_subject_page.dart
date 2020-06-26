import 'package:axohomeapp/screens/02_home_page.dart';
import 'package:axohomeapp/utilities/blue_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:axohomeapp/utilities/constants.dart';
import 'package:axohomeapp/utilities/close_button.dart';
import 'package:flutter/rendering.dart';
import '08_question_set.dart';
import 'package:axohomeapp/utilities/back_button.dart';
import 'package:axohomeapp/utilities/red_button.dart';
import 'package:axohomeapp/utilities/results_display.dart';
import 'package:axohomeapp/utilities/delete_button.dart';
import 'package:axohomeapp/utilities/next_button.dart';
import 'package:axohomeapp/utilities/question_button.dart';
import 'package:axohomeapp/utilities/WalkthroughButton.dart';

class SubjectPage extends StatefulWidget {
  static String id = '08_subject_page';
  @override
  _SubjectPageState createState() => _SubjectPageState();
}

class _SubjectPageState extends State<SubjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGreyColour,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 50.0,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    BackwardsButton(),
                    CircularButton(
                      colour: kDarkPinkColour,
                    ),
                  ]),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Text(
                'WALKTHROUGH',
                style: kTitleMontBold16Grey,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "You can complete these questions later if you are not yet at the property. You can access them from the property card.",
                style: kTitleNunito16Grey,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  //TODO 5.1 Load the proper checklist question buttons into this page depending if it is buy/rent or apart/house
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                    child: WalkthroughButton(
                        textStyle: kTitleMontBold16White,
                        //TODO 5.2 BONUS: Change box colour to grey when questions are completed.
                        boxColour: kPinkColour,
                        onPressed: () {
                          Navigator.pushNamed(context, QuestionSet.id);
                        },
                        textInput: 'KITCHEN'),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                    child: WalkthroughButton(
                        textStyle: kTitleMontBold16White,
                        boxColour: kPinkColour,
                        onPressed: () {
                          Navigator.pushNamed(context, QuestionSet.id);
                        },
                        textInput: 'BATHROOM'),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                    child: WalkthroughButton(
                        textStyle: kTitleMontBold16White,
                        boxColour: kPinkColour,
                        onPressed: () {
                          Navigator.pushNamed(context, QuestionSet.id);
                        },
                        textInput: 'LIVING SPACES'),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                    child: WalkthroughButton(
                        textStyle: kTitleMontBold16White,
                        boxColour: kPinkColour,
                        onPressed: () {
                          Navigator.pushNamed(context, QuestionSet.id);
                        },
                        textInput: 'MECHANICAL'),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                    child: WalkthroughButton(
                        textStyle: kTitleMontBold16White,
                        boxColour: kPinkColour,
                        onPressed: () {
                          Navigator.pushNamed(context, QuestionSet.id);
                        },
                        textInput: 'AMENITIES'),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                    child: WalkthroughButton(
                        textStyle: kTitleMontBold16White,
                        boxColour: kPinkColour,
                        onPressed: () {
                          Navigator.pushNamed(context, QuestionSet.id);
                        },
                        textInput: 'PARKING & STORAGE'),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                    child: WalkthroughButton(
                        textStyle: kTitleMontBold16White,
                        boxColour: kPinkColour,
                        onPressed: () {
                          Navigator.pushNamed(context, QuestionSet.id);
                        },
                        textInput: 'EXTERIOR'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  BlueButton(
                      onPressed: () {
                        Navigator.pushNamed(context, HomePage.id);
                      },
                      textInput: 'Done'),
                  SizedBox(
                    height: 35.0,
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
