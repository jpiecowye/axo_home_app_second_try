import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BackwardsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 30.0,
      minWidth: 10.0,
      child: MaterialButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          AntDesign.left,
          color: kDarkGreyColour,
          size: 35,
        ),
      ),
    );
  }
}
