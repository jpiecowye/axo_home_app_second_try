import 'package:flutter/material.dart';
import 'constants.dart';

class DeleteButton extends StatelessWidget {
  DeleteButton({@required this.onPressed, @required this.textInput});
  final Function onPressed;
  final String textInput;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      width: 190.0,
      child: MaterialButton(
        elevation: 0,
        color: Colors.grey[300],
        onPressed: () {
          showAlertDialog(context);
        },
        child: Text(
          textInput,
          style: kTitleNunito16Grey,
        ),
        shape: StadiumBorder(),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0))),
    title: Text(
      'Are you sure you want to log out?',
      style: kTitleMontBold18Red,
    ),
    actions: <Widget>[
      FlatButton(
        textColor: Colors.black,
        child: Text(
          'YES',
          style: kTitleNunito16,
        ),
        onPressed: () {},
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

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
