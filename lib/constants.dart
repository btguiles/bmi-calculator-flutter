import 'package:flutter/material.dart';

enum Gender { male, female }

const double kBottomContainerHeight = 80;
const List<Color> kMyColors = [
  Color(0xFF1D1E33), // Active Card Color
  Color(0xFFEB1555),
  Color(0xFF111328), // Inactive Card color
  Color(0xFF888888), // Inactive Text Color
];

const TextStyle kNumberTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);
const TextStyle kLargeTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25.0,
);
const TextStyle kTitleTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.bold,
);
const TextStyle kResultTextStyle = TextStyle(
  fontSize: 22,
  color: Color(0xff24d876),
  fontWeight: FontWeight.bold,
);
const TextStyle kBMITextStyle = TextStyle(
  fontSize: 100,
  fontWeight: FontWeight.bold,
);
const TextStyle kInterpretationTextStyle = TextStyle(
  fontSize: 22,
);
const TextStyle kLabelTextStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);
