import 'package:flutter/material.dart';
import 'SexSelection.dart';
import 'HeightSlider.dart';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  int height = 150;
  String sex;
  void setSex(String v) => setState(() => sex = v);
  void setHeight(int v) => setState(() => height = v);
  int getHeight() => height;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Column(
        children: [
          SexSection(setSex),
          HeightSlider(setHeight, getHeight),
        ],
      ),
    );
  }
}
