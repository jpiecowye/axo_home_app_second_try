import 'package:axohomeapp/screens/02_home_page.dart';
import 'package:axohomeapp/utilities/constants.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      title: Text(
        'Would you like to return to the main menu?',
        style: kTitleMontBold18Red,
      ),
      content: Text(
        'Your progress may be lost.',
        style: kTitleNunito16,
      ),
      actions: <Widget>[
        FlatButton(
          textColor: Colors.black,
          child: Text(
            'YES',
            style: kTitleNunito16,
          ),
          onPressed: () {
            Navigator.pushNamed(context, HomePage.id);
          },
        ),
        FlatButton(
          textColor: Colors.black,
          child: Text(
            'NO',
            style: kTitleNunito16,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
