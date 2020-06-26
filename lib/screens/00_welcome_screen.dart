import 'package:axohomeapp/screens/01_help_page.dart';
import 'package:axohomeapp/screens/02_home_page.dart';
import 'package:flutter/material.dart';
import 'package:axohomeapp/utilities/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

//TODO: 1.2 Edit registration page to connect firebase (we can edit any graphics that require changes)
//TODO: 1.3 Set up welcome screen to not show when user is already logged in.
class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGreyColour,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 65.0,
                  ),
                  Image.asset(
                    'images/Logo-2.png',
                    height: 220,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'AXOHOME',
                    style: GoogleFonts.montserrat(
                        color: kDarkPinkColour,
                        letterSpacing: 6,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Spacer(),
              Text(
                'Log in:',
                style: kTitleNunito16Blue,
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 60,
                    child: FlatButton(
                      shape: StadiumBorder(),
                      onPressed: () {
                        Navigator.pushNamed(context, HomePage.id);
                      },
                      child: Icon(AntDesign.facebook_square,
                          color: Color(0XFF4267B2), size: 40),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    width: 80,
                    height: 60,
                    child: FlatButton(
                      shape: StadiumBorder(),
                      onPressed: () {
                        Navigator.pushNamed(context, HomePage.id);
                      },
                      child: Icon(AntDesign.googleplus,
                          color: Color(0XFFDB4A39), size: 40),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                shape: StadiumBorder(),
                child: Text(
                  'How to use.',
                  style: kTitleNunito18Blue,
                ),
                highlightColor: kGreyColour,
                onPressed: () {
                  Navigator.pushNamed(context, HelpPage.id);
                },
              ),
              SizedBox(
                height: 50.0,
              ),
              FlatButton(
                child: Text(
                  'Privacy Policy',
                  style: kTitleNunito12,
                ),
                highlightColor: kGreyColour,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
