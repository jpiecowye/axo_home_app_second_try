import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BuyRentButton extends StatefulWidget {
  @override
  _BuyRentButtonState createState() => _BuyRentButtonState();
}

class _BuyRentButtonState extends State<BuyRentButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        highlightColor: kGreyColour,
        onPressed: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'RENT',
              style: kTitleMontBold18Red,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              AntDesign.caretdown,
              color: kPinkColour,
              size: 35,
            ),
          ],
        ));
  }
}
