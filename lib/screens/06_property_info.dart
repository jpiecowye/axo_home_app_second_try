import 'package:axohomeapp/utilities/blue_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:axohomeapp/utilities/constants.dart';
import 'package:axohomeapp/utilities/close_button.dart';
import '08_question_set.dart';
import 'package:axohomeapp/utilities/back_button.dart';
import 'package:axohomeapp/utilities/red_button.dart';
import 'package:axohomeapp/screens/07_subject_page.dart';

enum Selection {
  a,
  b,
}

class PropertyInfo extends StatefulWidget {
  static String id = '07_property_info';
  @override
  _PropertyInfoState createState() => _PropertyInfoState();
}

class _PropertyInfoState extends State<PropertyInfo> {
  Selection buttonSelectionElectrical;
  Selection buttonSelectionWater;
  Selection buttonSelectionAC;
  Selection buttonSelectionHeat;
  Selection buttonSelectionLaundry;
  Selection buttonSelectionInternet;
  Selection buttonSelectionPets;

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
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: <Widget>[
                        Text('Electrical', style: kTitleMontBold16Grey),
                        Spacer(),
                        RedButton(
                          infillColour: buttonSelectionElectrical == Selection.a
                              ? kLightPinkColour
                              : kLightGreyColour,
                          textInput: 'YES',
                          onPressed: () {
                            setState(() {
                              buttonSelectionElectrical = Selection.a;
                            });
                          },
                        ),
                        SizedBox(width: 15),
                        RedButton(
                          infillColour: buttonSelectionElectrical == Selection.b
                              ? kLightPinkColour
                              : kLightGreyColour,
                          textInput: 'NO',
                          onPressed: () {
                            setState(() {
                              buttonSelectionElectrical = Selection.b;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: <Widget>[
                        Text('Water', style: kTitleMontBold16Grey),
                        Spacer(),
                        RedButton(
                          infillColour: buttonSelectionWater == Selection.a
                              ? kLightPinkColour
                              : kLightGreyColour,
                          textInput: 'YES',
                          onPressed: () {
                            setState(() {
                              buttonSelectionWater = Selection.a;
                            });
                          },
                        ),
                        SizedBox(width: 15),
                        RedButton(
                          infillColour: buttonSelectionWater == Selection.b
                              ? kLightPinkColour
                              : kLightGreyColour,
                          textInput: 'NO',
                          onPressed: () {
                            setState(() {
                              buttonSelectionWater = Selection.b;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: <Widget>[
                        Text('Air Conditioning', style: kTitleMontBold16Grey),
                        Spacer(),
                        RedButton(
                          infillColour: buttonSelectionAC == Selection.a
                              ? kLightPinkColour
                              : kLightGreyColour,
                          textInput: 'YES',
                          onPressed: () {
                            setState(() {
                              buttonSelectionAC = Selection.a;
                            });
                          },
                        ),
                        SizedBox(width: 15),
                        RedButton(
                          infillColour: buttonSelectionAC == Selection.b
                              ? kLightPinkColour
                              : kLightGreyColour,
                          textInput: 'NO',
                          onPressed: () {
                            setState(() {
                              buttonSelectionAC = Selection.b;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: <Widget>[
                        Text('Heating', style: kTitleMontBold16Grey),
                        Spacer(),
                        RedButton(
                          infillColour: buttonSelectionHeat == Selection.a
                              ? kLightPinkColour
                              : kLightGreyColour,
                          textInput: 'YES',
                          onPressed: () {
                            setState(() {
                              buttonSelectionHeat = Selection.a;
                            });
                          },
                        ),
                        SizedBox(width: 15),
                        RedButton(
                          infillColour: buttonSelectionHeat == Selection.b
                              ? kLightPinkColour
                              : kLightGreyColour,
                          textInput: 'NO',
                          onPressed: () {
                            setState(() {
                              buttonSelectionHeat = Selection.b;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  //TODO 4.3 Have property info buttons go into the suitable locations within the subcategory page. The images within the subcategory page will be greyed out when selected no and visible when yes.
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: <Widget>[
                        Text('Laundry', style: kTitleMontBold16Grey),
                        Spacer(),
                        RedButton(
                          infillColour: buttonSelectionLaundry == Selection.a
                              ? kLightPinkColour
                              : kLightGreyColour,
                          textInput: 'YES',
                          onPressed: () {
                            setState(() {
                              buttonSelectionLaundry = Selection.a;
                            });
                          },
                        ),
                        SizedBox(width: 15),
                        RedButton(
                          infillColour: buttonSelectionLaundry == Selection.b
                              ? kLightPinkColour
                              : kLightGreyColour,
                          textInput: 'NO',
                          onPressed: () {
                            setState(() {
                              buttonSelectionLaundry = Selection.b;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: <Widget>[
                        Text('Internet', style: kTitleMontBold16Grey),
                        Spacer(),
                        RedButton(
                          infillColour: buttonSelectionInternet == Selection.a
                              ? kLightPinkColour
                              : kLightGreyColour,
                          textInput: 'YES',
                          onPressed: () {
                            setState(() {
                              buttonSelectionInternet = Selection.a;
                            });
                          },
                        ),
                        SizedBox(width: 15),
                        RedButton(
                          infillColour: buttonSelectionInternet == Selection.b
                              ? kLightPinkColour
                              : kLightGreyColour,
                          textInput: 'NO',
                          onPressed: () {
                            setState(() {
                              buttonSelectionInternet = Selection.b;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: <Widget>[
                        Text('Pet Friendly', style: kTitleMontBold16Grey),
                        Spacer(),
                        RedButton(
                          infillColour: buttonSelectionPets == Selection.a
                              ? kLightPinkColour
                              : kLightGreyColour,
                          textInput: 'YES',
                          onPressed: () {
                            setState(() {
                              buttonSelectionPets = Selection.a;
                            });
                          },
                        ),
                        SizedBox(width: 15),
                        RedButton(
                          infillColour: buttonSelectionPets == Selection.b
                              ? kLightPinkColour
                              : kLightGreyColour,
                          textInput: 'NO',
                          onPressed: () {
                            setState(() {
                              buttonSelectionPets = Selection.b;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            BlueButton(
                onPressed: () {
                  Navigator.pushNamed(context, SubjectPage.id);
                },
                textInput: 'next'),
            SizedBox(
              height: 35.0,
            ),
          ],
        ),
      ),
    );
  }
}
