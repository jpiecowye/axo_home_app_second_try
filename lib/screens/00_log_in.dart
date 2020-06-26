import 'package:flutter/material.dart';
import 'package:axohomeapp/utilities/blue_button.dart';
import 'package:axohomeapp/utilities/constants.dart';
import 'package:axohomeapp/screens/02_home_page.dart';
import 'package:axohomeapp/utilities/text_field.dart';

class LogIn extends StatefulWidget {
  static String id = 'log_in';
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGreyColour,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 55.0,
                ),
                Hero(
                  tag: 'intro',
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        child: Image.asset('images/Logo-2.png'),
                        height: 150.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: CustomTextField(
                onChanged: (context) {},
                hintText: 'Email',
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: CustomTextField(
                onChanged: (context) {},
                hintText: 'Password',
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            BlueButton(
              onPressed: () {
                Navigator.pushNamed(context, HomePage.id);
              },
              textInput: 'Log In',
            ),
            SizedBox(
              height: 65.0,
            ),
          ],
        ),
      ),
    );
  }
}
