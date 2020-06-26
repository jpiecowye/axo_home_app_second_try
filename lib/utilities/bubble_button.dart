import 'package:axohomeapp/utilities/add_property_button.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class BubbleButton extends StatelessWidget {
  BubbleButton({
    @required this.onPressed,
    @required this.textInput,
    this.textStyle,
    this.boxColour,
    this.boxHeight,
    this.highlightedColour,
  });
  final Function onPressed;
  final String textInput;
  final Color boxColour;
  final TextStyle textStyle;
  final double boxHeight;
  final Color highlightedColour;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: boxHeight,
      width: double.maxFinite,
      child: MaterialButton(
        highlightColor: highlightedColour,
        color: boxColour,
        onPressed: onPressed,
        child: Text(
          textInput,
          style: textStyle,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
