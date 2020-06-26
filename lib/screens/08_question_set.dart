import 'package:axohomeapp/screens/09_question_set_with_slider.dart';
import 'package:axohomeapp/utilities/next_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:axohomeapp/utilities/question_button.dart';
import 'package:axohomeapp/utilities/constants.dart';
import 'package:axohomeapp/utilities/close_button.dart';
import 'package:axohomeapp/utilities/back_button.dart';

enum Selection {
  a,
  b,
  c,
}

class QuestionSet extends StatefulWidget {
  static String id = '06_question_set';
  @override
  _QuestionSetState createState() => _QuestionSetState();
}

class _QuestionSetState extends State<QuestionSet> {
  Selection buttonSelection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGreyColour,
      body: SafeArea(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 105.0,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          BackwardsButton(),
                          CircularButton(
                            colour: kDarkPinkColour,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 45.0),
                      child: Container(
                        height: 10.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: kLightPinkColour, width: 2),
                        ),
                        //TODO 6.5 Progressbar: Have the progress bar work in relation to the questions in the checklist category
                        child: LinearProgressIndicator(
                          value: .5,
                          backgroundColor: kLightGreyColour,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            kDarkPinkColour,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 15),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        //TODO 6.4 Category: Have the category question change match the question sets
                        child: Text('KITCHEN', style: kTitleMontBold16Grey),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Text(
                          'Are any appliances in bad or rough condition?',
                          style: kTitleNunito18Blue),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 55.0,
              ),
              //progress bar
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    QuestionButton(
                      onPressed: () {
                        setState(() {
                          buttonSelection = Selection.a;
                        });
                      },
                      textInput: 'Yes',
                      fillColour: buttonSelection == Selection.a
                          ? kLightBlueColour
                          : kLightGreyColour,
                    ),
                    QuestionButton(
                      onPressed: () {
                        setState(() {
                          buttonSelection = Selection.b;
                        });
                      },
                      textInput: 'No',
                      fillColour: buttonSelection == Selection.b
                          ? kLightBlueColour
                          : kLightGreyColour,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    //TODO 6.2 Nextbutton: Have next only clickable if the slider or button is pressed
                    NextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, QuestionSetSlider.id);
                      },
                      text: 'Next',
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    //TODO 6.3 FlatButton_skip: Have skip ignore the question and not add the score or weight to the total score.
                    FlatButton(
                      color: kLightGreyColour,
                      child: Text(
                        'Skip',
                        style: kTitleNunito16Grey,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, QuestionSetSlider.id);
                      },
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
