import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/card_contents.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/rounded_icon_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 70;
  int age = 30;

  Color maleCardColor = kMyColors[2];
  Color femaleCardColor = kMyColors[2];

  void updateGender(Gender gender) {
    if (gender == Gender.female) {
      femaleCardColor = kMyColors[0];
      maleCardColor = kMyColors[2];
    } else {
      femaleCardColor = kMyColors[2];
      maleCardColor = kMyColors[0];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColor: maleCardColor,
                    cardChild: CardContents(
                      iconData: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                    cardCallBack: () {
                      setState(() {
                        updateGender(Gender.male);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: femaleCardColor,
                    cardChild: CardContents(
                      iconData: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                    cardCallBack: () {
                      setState(() {
                        updateGender(Gender.female);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: kMyColors[0],
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(height.toString(), style: kNumberTextStyle),
                      Text('cm', style: kLabelTextStyle),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x1FEB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                        print(newValue);
                      },
                      min: 120,
                      max: 220,
                      // activeColor: Color(0xFFEB1555),
                      // inactiveColor: Color(0XFF8D8E98),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: kMyColors[0],
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT', style: kLabelTextStyle),
                        Text(weight.toString(), style: kNumberTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                if (weight <= 300) {
                                  setState(() => weight++);
                                }
                              },
                            ),
                            SizedBox(width: 10, height: 0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                if (weight >= 1) {
                                  setState(() => weight--);
                                }
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: kMyColors[0],
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE', style: kLabelTextStyle),
                        Text(age.toString(), style: kNumberTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                if (age <= 120) {
                                  setState(() => age++);
                                }
                              },
                            ),
                            SizedBox(width: 10, height: 0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                if (age >= 1) {
                                  setState(() => age--);
                                }
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.topCenter,
              child: Text(
                'CALCULATE',
                style: kLargeTextStyle,
              ),
              color: kMyColors[1],
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                      bmiResults: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interpretaion: calc.getInterpretation()),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
