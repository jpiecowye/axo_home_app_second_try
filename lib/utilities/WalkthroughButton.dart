import 'package:axohomeapp/utilities/add_property_button.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class WalkthroughButton extends StatelessWidget {
  WalkthroughButton({
    @required this.onPressed,
    @required this.textInput,
    this.textStyle,
    this.boxColour,
  });
  final Function onPressed;
  final String textInput;
  final Color boxColour;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.maxFinite,
      child: MaterialButton(
        highlightColor: kDarkPinkColour,
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
