import 'package:flutter/material.dart';
import 'constants.dart';

class SocialButton extends StatelessWidget {
  SocialButton({@required this.onPressed, @required this.icon});
  final Function onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      width: 200,
      child: MaterialButton(
        highlightColor: kLightBlueColour,
        onPressed: onPressed,
        child: icon,
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
