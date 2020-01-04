import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Widget/reusable_body_card.dart';
import '../Widget/reusable_card.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import '../constants.dart';
import '../Widget/bottom_button.dart';
import '../Widget/rounded_button.dart';
import 'calcule_page.dart';

enum Genre { homme, femme }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Genre selectionGenre;
  int sliderValue = 160;
  int weight = 50;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    myCard: functionCardOne,
                    color: selectionGenre == Genre.homme
                        ? kCoulleurDepart
                        : kCoulleurFin,
                    childCard: ReusebaleBodyCard(
                        myIcon: FontAwesomeIcons.mars, myString: "Male"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    myCard: functionCardTwo,
                    childCard: ReusebaleBodyCard(
                      myIcon: FontAwesomeIcons.venus,
                      myString: "FEMEL",
                    ),
                    color: selectionGenre == Genre.femme
                        ? kCoulleurDepart
                        : kCoulleurFin,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "HEIGHT",
                      style: TextStyle(color: kCoulleurText, fontSize: 30.0),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          sliderValue.toString(),
                          style: kStyle,
                        ),
                        Text("cm"),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbColor: kBottomColorDepart,
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: kCoulleurText,
                          overlayColor: Color(0x29E73D66),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 16.0)),
                      child: Slider(
                        value: sliderValue.toDouble(),
                        max: 220.0,
                        min: 120.0,
                        onChanged: (newValue) {
                          setState(() {
                            sliderValue = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
                color: kCoulleurDepart),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                      childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "WEIGHT",
                            style:
                                TextStyle(fontSize: 30.0, color: kCoulleurText),
                          ),
                          Text(
                            weight.toString(),
                            style: kStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundedButton(
                                clique: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                iconData: FontAwesomeIcons.plus,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              RoundedButton(
                                clique: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                iconData: FontAwesomeIcons.minus,
                              )
                            ],
                          )
                        ],
                      ),
                      color: kCoulleurDepart),
                ),
                Expanded(
                  child: ReusableCard(
                      childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "AGE",
                            style:
                                TextStyle(fontSize: 30.0, color: kCoulleurText),
                          ),
                          Text(
                            age.toString(),
                            style: kStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundedButton(
                                clique: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                iconData: FontAwesomeIcons.plus,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              RoundedButton(
                                clique: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                iconData: FontAwesomeIcons.minus,
                              )
                            ],
                          )
                        ],
                      ),
                      color: kCoulleurDepart),
                ),
              ],
            ),
          ),
          ButtomButton(
            myFonction: () {
              CalculPage monCalcule = CalculPage(
                  height: sliderValue.toDouble(), weight: weight.toDouble());
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            bmiResultat: monCalcule.bmiResult(),
                            brefResultat: monCalcule.BrefExplication(),
                            lognResultat: monCalcule.longExplication(),
                          )));
            },
            text: "Calculate",
          )
        ],
      ),
    );
  }

  void functionCardOne() {
    setState(() {
      selectionGenre = Genre.homme;
    });
  }

  void functionCardTwo() {
    setState(() {
      selectionGenre = Genre.femme;
    });
  }
}
