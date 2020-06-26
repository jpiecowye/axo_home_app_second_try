import 'package:flutter/material.dart';
import 'constants.dart';

class ResultsButton extends StatelessWidget {
  ResultsButton(
      {@required this.onPressed,
      @required this.textInput1,
      @required this.textInput2,
      @required this.textInput3});
  final Function onPressed;
  final String textInput1;
  final String textInput2;
  final String textInput3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Container(
        height: 135.0,
        width: double.infinity,
        child: MaterialButton(
          elevation: .5,
          color: kLightBlueColour,
          highlightColor: kBlueColour,
          onPressed: onPressed,
          child: Row(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    textInput1,
                    style: kTitleMontBold16,
                  ),
                  Text(
                    textInput2,
                    style: kTitleMontBold16,
                  ),
                  Text(
                    textInput3,
                    style: kTitleMont16,
                  ),
                ],
              ),
              SizedBox(
                width: 15.0,
              ),
              Spacer(),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('images/Icon-Callout.png', height: 80.0),
                  Padding(
                    padding: EdgeInsets.only(bottom: 12.0),
                    child: Text(
                      'A+',
                      style: kTitleMont30White,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 15.0,
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: kBlueColour,
              width: 5,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}
