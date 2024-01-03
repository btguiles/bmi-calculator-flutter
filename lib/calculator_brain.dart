import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});

  final int height;
  final int weight;

  double _bmi;

  //BMI = mass(kg)/height(m)^2

  String calculateBMI() {
    double heightM = height / 100;
    _bmi = weight / (heightM * heightM);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight.';
    } else {
      return 'You have a lower than normal body weight.';
    }
  }
}
