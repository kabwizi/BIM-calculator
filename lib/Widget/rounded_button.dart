import 'package:flutter/material.dart';
import '../constants.dart';

class RoundedButton extends StatelessWidget {
  final IconData iconData;
  final Function clique;
  RoundedButton({this.iconData, this.clique});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: clique,
      elevation: 7.0,
      fillColor: kCoulleurText,
      shape: CircleBorder(),
      constraints: BoxConstraints(minHeight: 50.0, minWidth: 50.0),
    );
  }
}
