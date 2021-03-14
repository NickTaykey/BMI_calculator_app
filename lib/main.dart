import 'package:flutter/material.dart';
import 'BMICalculator.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATOR',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color.fromRGBO(10, 13, 34, 1),
        fontFamily: 'Roboto',
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(8, 12, 32, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(10, 13, 34, 1),
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BMICalculator(),
    );
  }
}
