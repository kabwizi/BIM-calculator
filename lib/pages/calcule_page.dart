import 'dart:math';

class CalculPage {
  double weight;
  double height;
  double _bmi;
  CalculPage({this.weight, this.height});

  String bmiResult() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String BrefExplication() {
    if (_bmi >= 25) {
      return 'overweigth';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweigth';
    }
  }

  String longExplication() {
    if (_bmi >= 25) {
      return 'votre poids est plus grand que la normal, essayé plus double\'excercies';
    } else if (_bmi > 18.5) {
      return 'vous avez un poids normal, bravo';
    } else {
      return 'votre poid est inferieur a la normale, mangez plus';
    }
  }
}
