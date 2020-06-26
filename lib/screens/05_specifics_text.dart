import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:axohomeapp/utilities/close_button.dart';
import 'package:axohomeapp/utilities/text_field.dart';
import 'package:axohomeapp/utilities/blue_button.dart';
import 'package:axohomeapp/utilities/back_button.dart';
import 'package:axohomeapp/utilities/outlined_text_field.dart';
import 'package:axohomeapp/utilities/constants.dart';
import 'package:axohomeapp/screens/06_property_info.dart';

class SpecificsText extends StatefulWidget {
  static String id = '05_specifics_text';
  @override
  _SpecificsTextState createState() => _SpecificsTextState();
}

class _SpecificsTextState extends State<SpecificsText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGreyColour,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            CustomTextField(
              textLength: 9,
              onChanged: (context) {},
              hintText: 'ASKING PRICE',
              textInput: TextInputType.number,
            ),
            CustomTextField(
              textLength: 6,
              onChanged: (context) {},
              hintText: 'SQUARE FOOTAGE',
              textInput: TextInputType.number,
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Container(
                height: 3,
                width: double.infinity,
                color: Colors.white,
              ),
            ),
            Spacer(),
            //TODO 4.2 Have Specific field data transfer into the suitable locations within the subcategory page
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Column(
                    children: <Widget>[
                      OutlinedTextField(
                        onChanged: (context) {},
                        hintText: '0',
                        textInput: TextInputType.number,
                      ),
                      Container(
                        child: Image.asset('images/Icon-Bed.png'),
                        width: 100.0,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text('Bedroom', style: kTitleNunito16Grey),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    OutlinedTextField(
                      onChanged: (context) {},
                      hintText: '0',
                      textInput: TextInputType.number,
                    ),
                    Container(
                      child: Image.asset('images/Icon-Bath.png'),
                      width: 100.0,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text('Bathroom', style: kTitleNunito16Grey),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30.0),
                  child: Column(
                    children: <Widget>[
                      OutlinedTextField(
                        onChanged: (context) {},
                        hintText: '0',
                        textInput: TextInputType.number,
                      ),
                      Container(
                        child: Image.asset('images/Icon-Balcony.png'),
                        width: 100.0,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text('Balcony', style: kTitleNunito16Grey),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            BlueButton(
              onPressed: () {
                Navigator.pushNamed(context, PropertyInfo.id);
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
