import 'package:flutter/material.dart';
import 'constants.dart';

class BlueButton extends StatelessWidget {
  BlueButton({@required this.onPressed, @required this.textInput});
  final Function onPressed;
  final String textInput;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      width: 190.0,
      child: MaterialButton(
        highlightColor: kLightBlueColour,
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
    );
  }
}
