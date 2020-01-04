import 'package:flutter/material.dart';
import '../constants.dart';

class ReusebaleBodyCard extends StatelessWidget {
  final IconData myIcon;
  final String myString;
  ReusebaleBodyCard({this.myIcon, this.myString});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          myIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          myString,
          style: TextStyle(
            color: kCoulleurText,
          ),
        )
      ],
    );
  }
}
