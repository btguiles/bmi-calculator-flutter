import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  // const ResultsPage({super.key});
  ResultsPage(
      {@required this.bmiResults,
      @required this.resultText,
      @required this.interpretaion});

  final String bmiResults;
  final String resultText;
  final String interpretaion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardColor: kMyColors[0],
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(), style: kResultTextStyle),
                  Text(
                    bmiResults,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretaion,
                    style: kInterpretationTextStyle,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.topCenter,
              child: Text(
                'RE-CALCULATE',
                style: kLargeTextStyle,
              ),
              color: kMyColors[1],
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
