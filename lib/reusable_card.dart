import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.cardColor, this.cardChild, this.cardCallBack});

  final Color cardColor;
  final Widget cardChild;
  final Function cardCallBack;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: cardCallBack,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: cardColor,
        ),
      ),
    );
  }
}
