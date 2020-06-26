import 'package:axohomeapp/screens/07_subject_page.dart';
import 'package:axohomeapp/utilities/next_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:axohomeapp/utilities/back_button.dart';
import 'package:axohomeapp/utilities/constants.dart';
import 'package:axohomeapp/utilities/close_button.dart';

class QuestionSetSlider extends StatefulWidget {
  static String id = '09_question_set_with_slider';
  @override
  _QuestionSetSliderState createState() => _QuestionSetSliderState();
}

class _QuestionSetSliderState extends State<QuestionSetSlider> {
  var sliderValue = 5.0;
  String myImageName = 'images/Rating-3.png';

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
                          vertical: 15.0, horizontal: 20.0),
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
                          "What is your first impression of this kitchen's condition?",
                          style: kTitleNunito18Blue),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                height: 180.0,
                child: Image.asset(myImageName),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: kDarkPinkColour,
                      inactiveTrackColor: kLightPinkColour,
                      trackShape: RoundedRectSliderTrackShape(),
                      trackHeight: 3.0,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      thumbColor: kDarkPinkColour,
                      overlayColor: kDarkPinkColour.withAlpha(32),
                      tickMarkShape:
                          RoundSliderTickMarkShape(tickMarkRadius: 5),
                      activeTickMarkColor: kLightPinkColour,
                      inactiveTickMarkColor: kDarkPinkColour,
                    ),
                    //TODO 6.1 Question button or slider: Have the right question page associate with the question (08 yes/no) or 09(slider) depending on the question type.
                    child: Slider(
                      min: 0,
                      max: 10,
                      divisions: 4,
                      value: sliderValue,
                      onChanged: (newValue) {
                        setState(() {
                          sliderValue = newValue;
                          if (sliderValue >= 0.0 && sliderValue <= 2.0) {
                            myImageName = "images/Rating-1.png";
                          }
                          if (sliderValue >= 2.1 && sliderValue <= 4.0) {
                            myImageName = "images/Rating-2.png";
                          }
                          if (sliderValue >= 4.1 && sliderValue <= 6.0) {
                            myImageName = "images/Rating-3.png";
                          }
                          if (sliderValue >= 6.1 && sliderValue <= 8.0) {
                            myImageName = "images/Rating-4.png";
                          }
                          if (sliderValue >= 8.1 && sliderValue <= 10.0) {
                            myImageName = "images/Rating-5.png";
                          }
                        });
                      },
                    ),
                  ),
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
                        Navigator.pushNamed(context, SubjectPage.id);
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
                        Navigator.pushNamed(context, SubjectPage.id);
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
