import 'package:flutter/material.dart';
import '../constants.dart';
import '../Widget/reusable_card.dart';
import '../Widget/bottom_button.dart';

class ResultPage extends StatelessWidget {
  String brefResultat;
  String lognResultat;
  String bmiResultat;
  ResultPage(
      {@required this.brefResultat,
      @required this.lognResultat,
      @required this.bmiResultat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      brefResultat.toUpperCase(),
                      style:
                          TextStyle(fontSize: 30.0, color: Color(0xFF4C916D)),
                    ),
                    Text(
                      bmiResultat,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 120.0),
                    ),
                    Text(
                      lognResultat,
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ],
                ),
                color: kCoulleurDepart),
          ),
          Expanded(
            child: ButtomButton(
              text: "Re-Calculete",
              myFonction: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
