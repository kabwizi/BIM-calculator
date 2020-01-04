import 'package:flutter/material.dart';
import 'package:bmi_calculator/pages/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF1D2136),
          scaffoldBackgroundColor: Color(0xFF1D2136),
          accentColor: Colors.red),
      home: InputPage(),
    );
  }
}
