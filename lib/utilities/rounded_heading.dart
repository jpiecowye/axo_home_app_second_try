import 'package:axohomeapp/utilities/constants.dart';
import 'package:flutter/material.dart';

class RoundedHeading extends StatelessWidget {
  RoundedHeading({this.headingChild});

  final Widget headingChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: headingChild,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(-7, -1), // changes position of shadow
          ),
        ],
        color: kLightGreyColour,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      ),
    );
  }
}
