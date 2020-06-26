import 'package:flutter/material.dart';
import 'package:axohomeapp/utilities/constants.dart';
import 'package:axohomeapp/utilities/back_button.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ResultsSubPage extends StatefulWidget {
  static String id = '08_results_subpage';

  @override
  _ResultsSubPageState createState() => _ResultsSubPageState();
}

class _ResultsSubPageState extends State<ResultsSubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGreyColour,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
                child: Row(
                  children: <Widget>[
                    BackwardsButton(),
                  ],
                ),
                width: double.infinity,
                height: 50.0,
                color: Colors.white),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                height: 70.0,
                width: double.maxFinite,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(height: 40),
                              Text(
                                'CONDITION',
                                style: kTitleMontBold16Grey,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              //TODO 7.8 Results subpage Alphabetic score: Divide the total answered Y/N questions by the total score and use the scorecard to get a score for the results subpage
                              Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset('images/Icon-Callout.png',
                                      height: 50.0),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 6.0),
                                    child: Text(
                                      'A+',
                                      style: kTitleMontBold16White,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                color: kGreyColour,
                height: 2.0,
                width: double.maxFinite,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ListView.builder(
                  itemCount: problem.length,
                  itemBuilder: (context, i) {
                    return Container(
                      color: kDarkPinkColour,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 30.0,
                            color: kLightGreyColour,
                          ),
                          ExpansionTile(
                            title: Text(
                              problem[i].title,
                              style: kTitleMontBold16White,
                            ),
                            children: <Widget>[
                              Container(
                                child: Column(
                                  children: _buildExpandableContent(problem[i]),
                                ),
                                color: kLightGreyColour,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Image.asset('images/Logo-3.png', height: 45.0),
                    SizedBox(
                      height: 5.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildExpandableContent(Problems problem) {
    List<Widget> columnContent = [];

    for (String content in problem.contents)
      columnContent.add(
        ListTile(
          title: Text(content, style: kTitleNunito16Grey),
          leading: Icon(
            AntDesign.arrowright,
            color: kDarkPinkColour,
          ),
        ),
      );

    return columnContent;
  }
}

class Problems {
  final String title;
  List<String> contents = [];

  Problems(
    this.title,
    this.contents,
  );
}
//TODO 7.7 Results subpage: Display any questions marked as yes into their fitting category (refer to checklist categories) by showing their problem statement. Results subpage is for Y/N questions only

List<Problems> problem = [
  Problems(
    'Kitchen',
    [
      "Failed kitchen counter caulking why do you fail",
      "Peeling paint in the kitchen",
    ],
  ),
  Problems(
    'Bathroom',
    [
      "Mold in bathroom",
      "Problematic bathroom faucets",
      "Damaged bathroom fixtures"
    ],
  ),
  Problems(
    'Exterior',
    [
      "Garage drainage issues",
      "Garage has failed weatherstripping",
      "Brickwork facade failing",
      "Damage gutters",
      "Failing foundation",
      "Failing pavers",
      "Bowing or Leaning Exterior Walls",
      "Exterior needs maintenance",
    ],
  ),
];
