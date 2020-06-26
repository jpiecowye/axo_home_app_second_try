import 'package:flutter/material.dart';
import 'constants.dart';

class RedButton extends StatelessWidget {
  RedButton(
      {@required this.onPressed, @required this.textInput, this.infillColour});
  final Function onPressed;
  final String textInput;
  final Color infillColour;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      width: 70.0,
      child: MaterialButton(
        highlightColor: kLightPinkColour,
        color: infillColour,
        onPressed: onPressed,
        child: Text(
          textInput,
          style: kTitleNunito16Pink,
        ),
        shape: StadiumBorder(
          side: BorderSide(
            color: kDarkRedColour,
            width: 3.0,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}
