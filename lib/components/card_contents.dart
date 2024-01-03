import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class CardContents extends StatelessWidget {
  CardContents({this.iconData, this.text});

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: 80),
        SizedBox(height: 15),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
