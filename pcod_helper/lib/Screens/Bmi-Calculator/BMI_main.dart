import 'package:flutter/material.dart';
import 'bmi_screens/input_page.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATOR',
      theme: ThemeData.dark().copyWith(
        // primarySwatch: Colors(OxFF0A0E21),
        accentColor: Colors.black45,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}