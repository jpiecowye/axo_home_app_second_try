import 'package:flutter/material.dart';
import 'package:axohomeapp/utilities/constants.dart';

class ResultsDisplay extends StatelessWidget {
  ResultsDisplay({this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 35.0),
      child: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Text(
                text,
                style: kTitleNunito16White,
              ),
            ],
          ),
        ),
        width: double.infinity,
        height: 65,
        color: kDarkBlueColour,
      ),
    );
  }
}
