import 'package:flutter/material.dart';
import 'package:axohomeapp/utilities/constants.dart';

class OutlinedTextField extends StatelessWidget {
  OutlinedTextField(
      {@required this.onChanged, @required this.hintText, this.textInput});
  final Function onChanged;
  final String hintText;
  final TextInputType textInput;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            width: 70.0,
            height: 50.0,
            child: TextField(
              maxLength: 2,
              textAlignVertical: TextAlignVertical(y: 1.0),
              textAlign: TextAlign.center,
              keyboardType: textInput,
              onChanged: onChanged,
              style: kTitleMontBold16,
              decoration: InputDecoration(
                counterText: '',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(color: kDarkBlueColour, width: 4),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(color: kDarkBlueColour, width: 5),
                ),
                hintText: hintText,
                hintStyle: kTitleMontBold16Grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
