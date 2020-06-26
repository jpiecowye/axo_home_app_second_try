import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class QuestionButton extends StatelessWidget {
  QuestionButton(
      {@required this.onPressed, @required this.textInput, this.fillColour});
  final Function onPressed;
  final String textInput;
  final Color fillColour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 95.0),
      child: Container(
        height: 45.0,
        width: double.infinity,
        child: MaterialButton(
          highlightColor: kLightBlueColour,
          color: fillColour,
          onPressed: onPressed,
          child: Text(
            textInput,
            style: kTitleNunito16Blue,
          ),
          shape: StadiumBorder(
            side: BorderSide(
              color: kDarkBlueColour,
              width: 3.0,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}
