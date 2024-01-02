import 'package:flutter/material.dart';

const TextStyle kLabelTextStyle =
    TextStyle(fontSize: 18, color: Color(0xFF8D8E98));

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
