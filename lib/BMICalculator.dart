import 'package:flutter/material.dart';
import 'SexSelection.dart';
import 'HeightSlider.dart';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  double height = 1.5;
  String sex;
  void setSex(String v) => setState(() => sex = v);
  void setHeight(double v) => setState(() => height = v);
  double getHeight() => height;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          Text('$height'),
          SexSection(setSex),
          HeightSlider(setHeight, getHeight),
        ],
      ),
    );
  }
}
