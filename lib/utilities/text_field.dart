import 'package:flutter/material.dart';
import 'package:axohomeapp/utilities/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {@required this.onChanged,
      @required this.hintText,
      this.textInput,
      @required this.textLength});
  final Function onChanged;
  final String hintText;
  final TextInputType textInput;
  final int textLength;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      child: Container(
        child: TextField(
          maxLength: textLength,
          keyboardType: textInput,
          onChanged: onChanged,
          style: kTitleMontBold16,
          decoration: InputDecoration(
            counterText: '',
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kDarkBlueColour, width: 4),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kDarkBlueColour, width: 5),
            ),
            hintText: hintText,
            hintStyle: kTitleMontBold16Grey,
          ),
        ),
      ),
    );
  }
}
