import 'package:flutter/material.dart';
import 'constants.dart';

class AddPropertyButton extends StatelessWidget {
  AddPropertyButton({@required this.onPressed, @required this.textInput});
  final Function onPressed;
  final String textInput;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 10.0, 0.0, 20.0),
      child: Container(
        height: 71.0,
        width: double.infinity,
        child: MaterialButton(
          highlightColor: kLightBlueColour,
          onPressed: onPressed,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 30.0,
              ),
              Image.asset(
                'images/Icon-Cube.png',
                height: 45.0,
              ),
              Spacer(),
              Text(
                textInput,
                style: kTitleMont16,
              ),
              SizedBox(
                width: 30,
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
