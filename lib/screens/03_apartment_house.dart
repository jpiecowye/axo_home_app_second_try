import 'package:flutter/material.dart';
import 'package:axohomeapp/screens/04_general_text.dart';
import 'package:axohomeapp/utilities/constants.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:axohomeapp/utilities/close_button.dart';

var heightPic = 609.0;
var widthPic = 606.0;

class ApartmentHouse extends StatefulWidget {
  static String id = '03_apartment_house';
  @override
  _ApartmentHouseState createState() => _ApartmentHouseState();
}

class _ApartmentHouseState extends State<ApartmentHouse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CircularButton(
                    colour: kDarkPinkColour,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                children: <Widget>[
                  Container(
                    //TODO 3.1 have the apartment/house buttons navigate the user to the correct question set.
                    child: ImageButton(
                      width: widthPic * .42,
                      height: heightPic * .42,
                      children: <Widget>[],
                      pressedImage: Image.asset('images/icon_apartments.png'),
                      unpressedImage: Image.asset('images/icon_apartments.png'),
                      onTap: () {
                        Navigator.pushNamed(context, GeneralText.id);
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    child: ImageButton(
                      width: widthPic * .42,
                      height: heightPic * .42,
                      children: <Widget>[],
                      pressedImage: Image.asset('images/icon_haus.png'),
                      unpressedImage: Image.asset('images/icon_haus.png'),
                      onTap: () {
                        Navigator.pushNamed(context, GeneralText.id);
                      },
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
