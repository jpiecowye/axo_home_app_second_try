import 'package:axohomeapp/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:axohomeapp/screens/05_specifics_text.dart';
import 'package:axohomeapp/utilities/back_button.dart';
import 'package:axohomeapp/utilities/blue_button.dart';
import 'package:axohomeapp/utilities/close_button.dart';
import 'package:axohomeapp/utilities/text_field.dart';

class GeneralText extends StatefulWidget {
  static String id = '04_general_text';
  @override
  _GeneralTextState createState() => _GeneralTextState();
}

class _GeneralTextState extends State<GeneralText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGreyColour,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 50.0,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    BackwardsButton(),
                    CircularButton(
                      colour: kDarkPinkColour,
                    ),
                  ]),
            ),
            SizedBox(
              height: 30.0,
            ),
            //TODO 4.1 Have general text field data transfer into the suitable locations within the subcategory page
            CustomTextField(
                textLength: 19,
                onChanged: (context) {},
                hintText: 'NICKNAME',
                textInput: TextInputType.text),
            CustomTextField(
                textLength: 19,
                onChanged: (context) {},
                hintText: 'ADDRESS',
                textInput: TextInputType.text),
            CustomTextField(
                textLength: 18,
                onChanged: (context) {},
                hintText: 'NEIGHBOURHOOD',
                textInput: TextInputType.text),
            Spacer(),
            CustomTextField(
                textLength: 25,
                onChanged: (context) {},
                hintText: 'CONTACT NAME',
                textInput: TextInputType.text),
            CustomTextField(
                textLength: 14,
                onChanged: (context) {},
                hintText: 'CONTACT NUMBER',
                textInput: TextInputType.phone),
            CustomTextField(
                textLength: 25,
                onChanged: (context) {},
                hintText: 'CONTACT EMAIL',
                textInput: TextInputType.emailAddress),
            SizedBox(
              height: 40.0,
            ),
            BlueButton(
              onPressed: () {
                Navigator.pushNamed(context, SpecificsText.id);
              },
              textInput: 'Next',
            ),
            SizedBox(
              height: 35.0,
            ),
          ],
        ),
      ),
    );
  }
}
