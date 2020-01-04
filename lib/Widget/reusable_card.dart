import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget childCard;
  final Function myCard;

  ReusableCard({@required this.color, this.childCard, this.myCard});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myCard,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(10.0),
        height: 150.0,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
