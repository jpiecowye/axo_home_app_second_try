import 'package:flutter/material.dart';
import 'constants.dart';

class AddPropertyButton2 extends StatelessWidget {
  AddPropertyButton2({@required this.onPressed, @required this.textInput});
  final Function onPressed;
  final String textInput;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 10.0, 0.0, 20.0),
      child: Container(
        height: 71.0,
        width: 100,
        child: MaterialButton(
          highlightColor: kLightBlueColour,
          onPressed: onPressed,
          child: Text(
            textInput,
            style: kTitleMont16,
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
