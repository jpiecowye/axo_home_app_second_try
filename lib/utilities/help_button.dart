import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'constants.dart';

class HelpButton extends StatelessWidget {
  @override
  HelpButton({this.onPressed});
  final Function onPressed;
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 30.0,
      child: OutlineButton(
        onPressed: onPressed,
        child: Icon(
          AntDesign.question,
          color: kDarkBlueColour,
          size: 20,
        ),
        shape: CircleBorder(),
        borderSide: BorderSide(
          color: kDarkBlueColour,
          style: BorderStyle.solid,
          width: 3,
        ),
      ),
    );
  }
}
