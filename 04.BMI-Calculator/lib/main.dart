import 'package:bmi_calculator/Input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 7, 97, 142),
          textTheme: TextTheme(bodySmall: TextStyle(color: Colors.blue))),
      home: InputPage(),
    );
  }
}
