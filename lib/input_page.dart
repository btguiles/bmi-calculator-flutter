import 'package:flutter/material.dart';

const double bottomContainerHeight = 80;
const List<Color> myColors = [
  Color(0xFF1D1E33),
  Color(0xFFEB1555),
];

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TITLE'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: myColors[0],
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: myColors[0],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: myColors[0],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: myColors[0],
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: myColors[0],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: myColors[1],
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.cardColor, this.cardChild});

  final Color cardColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: cardColor,
      ),
    );
  }
}

// Color(0xFF1D1E33)
