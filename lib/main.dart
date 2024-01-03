import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          appBarTheme: AppBarTheme(color: Color(0xFF0A0E21)),
          textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        ),
        // home: InputPage(),
        initialRoute: '/',
        routes: {
          '/': (context) => InputPage(),
          '/results': (context) => ResultsPage(),
        });
  }
}
