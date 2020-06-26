import 'package:axohomeapp/screens/00_welcome_screen.dart';
import 'package:axohomeapp/screens/09_question_set_with_slider.dart';
import 'package:flutter/material.dart';
import 'package:axohomeapp/screens/02_home_page.dart';
import 'package:axohomeapp/screens/03_apartment_house.dart';
import 'package:axohomeapp/screens/04_general_text.dart';
import 'package:axohomeapp/screens/05_specifics_text.dart';
import 'package:axohomeapp/screens/08_question_set.dart';
import 'package:axohomeapp/screens/09_results_page.dart';
import 'package:axohomeapp/screens/10_results_subpage.dart';
import 'package:axohomeapp/screens/00_log_in.dart';
import 'package:axohomeapp/screens/06_property_info.dart';
import 'package:axohomeapp/screens/07_subject_page.dart';
import 'package:axohomeapp/screens/01_help_page.dart';
import 'package:axohomeapp/screens/11_feeling_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Color(0XFff8f7f7),
        fontFamily: 'FUTURA',
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        HomePage.id: (context) => HomePage(),
        ApartmentHouse.id: (context) => ApartmentHouse(),
        GeneralText.id: (context) => GeneralText(),
        SpecificsText.id: (context) => SpecificsText(),
        QuestionSet.id: (context) => QuestionSet(),
        QuestionSetSlider.id: (context) => QuestionSetSlider(),
        ResultsPage.id: (context) => ResultsPage(),
        ResultsSubPage.id: (context) => ResultsSubPage(),
        LogIn.id: (context) => LogIn(),
        PropertyInfo.id: (context) => PropertyInfo(),
        SubjectPage.id: (context) => SubjectPage(),
        HelpPage.id: (context) => HelpPage(),
        FeelingPage.id: (context) => FeelingPage(),
      },
    );
  }
}
