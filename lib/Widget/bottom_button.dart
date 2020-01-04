import 'package:flutter/material.dart';
import '../constants.dart';

class ButtomButton extends StatelessWidget {
  final String text;
  final Function myFonction;
  ButtomButton({@required this.myFonction, @required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myFonction,
      child: Container(
        child: Center(
            child: Text(
          text,
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        )),
        height: kTailleDepart,
        color: kBottomColorDepart,
        width: double.infinity,
      ),
    );
  }
}
