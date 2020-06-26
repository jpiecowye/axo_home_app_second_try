import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class NextButton extends StatelessWidget {
  NextButton({@required this.onPressed, this.text});
  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 115.0),
      child: Container(
        height: 45.0,
        width: double.infinity,
        child: MaterialButton(
          highlightColor: kLightPinkColour,
          onPressed: onPressed,
          child: Text(
            text,
            style: kTitleNunito16Pink,
          ),
          shape: StadiumBorder(
            side: BorderSide(
              color: kDarkPinkColour,
              width: 3.0,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}
