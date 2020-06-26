import 'package:axohomeapp/screens/02_home_page.dart';
import 'package:flutter/material.dart';
import 'package:axohomeapp/utilities/custom_alert_button.dart';

import 'constants.dart';

class CircularButton extends StatelessWidget {
  CircularButton({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 30.0,
      child: OutlineButton(
        highlightedBorderColor: kDarkPinkColour,
        highlightColor: kLightPinkColour,
        onPressed: () {
          showDialog(
            context: context,
            child: CustomAlertDialog(),
          );
        },
        child: Icon(
          Icons.close,
          color: colour,
          size: 26,
        ),
        shape: CircleBorder(),
        borderSide: BorderSide(
          color: colour,
          style: BorderStyle.solid,
          width: 3,
        ),
      ),
    );
  }
}
