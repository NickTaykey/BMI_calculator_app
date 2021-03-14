import 'package:flutter/material.dart';
import 'SexSelection.dart';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  String sex;
  void setSex(String v) => setState(() => sex = v);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          SexSection(setSex),
        ],
      ),
    );
  }
}
