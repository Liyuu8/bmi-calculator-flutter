import 'package:flutter/material.dart';

import 'screens/input_page.dart';

const mainColor = Color(0xFF090D21);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: mainColor, scaffoldBackgroundColor: mainColor),
      home: InputPage(),
    );
  }
}
