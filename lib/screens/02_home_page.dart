import 'package:axohomeapp/screens/03_apartment_house.dart';
import 'package:axohomeapp/utilities/add_property_button.dart';
import 'package:axohomeapp/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:axohomeapp/utilities/results_button.dart';
import 'package:axohomeapp/screens/09_results_page.dart';
import 'package:axohomeapp/utilities/delete_button.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  static String id = '02_home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> _selection = List.generate(2, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              color: kLightGreyColour,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    Container(
                      height: 60,
                      //TODO 2.1A Edit toggle button to have buy
                      //TODO 2.1B toggle button changes completed check lists to show either buy or rent selections
                      //TODO 2.1C toggle changes the future question set to buy or rent when user clicks add property.
                      child: ToggleButtons(
                        borderRadius: BorderRadius.circular(20),
                        borderColor: kBlueColour,
                        borderWidth: 5,
                        color: kLightBlueColour,
                        selectedBorderColor: kBlueColour,
                        selectedColor: kDarkBlueColour,
                        fillColor: kBlueColour,
                        highlightColor: kBlueColour,
                        disabledBorderColor: kBlueColour,
                        disabledColor: kLightBlueColour,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 2 - 40,
                            child: Row(
                              children: <Widget>[
                                SizedBox(width: 15),
                                Text(
                                  'BUY',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2 - 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text('RENT',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 3,
                                    )),
                                SizedBox(width: 15),
                              ],
                            ),
                          ),
                        ],
                        onPressed: (int index) {
                          setState(() {
                            for (int buttonIndex = 0;
                                buttonIndex < _selection.length;
                                buttonIndex++) {
                              if (buttonIndex == index) {
                                _selection[buttonIndex] = true;
                              } else {
                                _selection[buttonIndex] = false;
                              }
                            }
                          });
                        },
                        isSelected: _selection,
                      ),
                    ),
                    SizedBox(height: 10),
                    //TODO 2.2 Adds a new property following the buy/rent toggle direction.
                    AddPropertyButton(
                        onPressed: () {
                          Navigator.pushNamed(context, ApartmentHouse.id);
                        },
                        textInput: 'ADD PROPERTY'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                //TODO 2.3 Result buttons only appear when a new property is added.
                children: <Widget>[
                  ResultsButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ResultsPage.id);
                    },
                    textInput1: 'UP HOUSE',
                    textInput2: '123 PIXAR STREET',
                    textInput3: 'DISNEYTON',
                  ),
                  ResultsButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ResultsPage.id);
                    },
                    textInput1: 'Tango',
                    textInput2: '256 Fake street',
                    textInput3: 'Hollowwood',
                  ),
                  ResultsButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ResultsPage.id);
                    },
                    textInput1: 'UP HOUSE',
                    textInput2: '123 PIXAR STREET',
                    textInput3: 'DISNEYTON',
                  ),
                  ResultsButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ResultsPage.id);
                    },
                    textInput1: 'UP HOUSE',
                    textInput2: '123 PIXAR STREET',
                    textInput3: 'DISNEYTON',
                  ),
                  ResultsButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ResultsPage.id);
                    },
                    textInput1: 'UP HOUSE',
                    textInput2: '123 PIXAR STREET',
                    textInput3: 'DISNEYTON',
                  ),
                  ResultsButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ResultsPage.id);
                    },
                    textInput1: 'UP HOUSE',
                    textInput2: '123 PIXAR STREET',
                    textInput3: 'DISNEYTON',
                  ),
                  Center(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 3.0,
                          width: double.maxFinite,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Image.asset('images/Logo-3.png', height: 65.0),
                        SizedBox(height: 30),
                        DeleteButton(
                          onPressed: () {},
                          textInput: ('LOG OUT'),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
