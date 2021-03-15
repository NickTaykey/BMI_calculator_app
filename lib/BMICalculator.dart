import 'package:flutter/material.dart';
import 'SexSelection.dart';
import 'HeightSlider.dart';
import 'BottomBar.dart';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  final int maxAge = 100,
      minAge = 16,
      maxWeight = 300,
      minWeight = 45,
      maxHeight = 225,
      minHeight = 150;

  int height = 150, age = 16, weight = 45;
  String sex = 'M';

  void setSex(String v) => setState(() => sex = v);
  String getSex() => sex;

  void setHeight(int v) => setState(() => height = v);
  int getHeight() => height;

  int getAge() => age;
  void updateAge(int alpha) {
    int newAge = alpha == 1 ? age + 1 : age - 1;
    if (newAge >= minAge && newAge <= maxAge) {
      setState(() {
        age = newAge;
      });
    }
  }

  int getWeight() => weight;
  void updateWeight(int alpha) {
    int newWeight = alpha == 1 ? weight + 1 : weight - 1;
    if (newWeight >= minWeight && newWeight <= maxWeight) {
      setState(() {
        weight = newWeight;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Column(
        children: [
          SexSection(setSex, getSex),
          HeightSlider(setHeight, getHeight, maxHeight, minHeight),
          BottomBar(getAge, getWeight, updateAge, updateWeight),
        ],
      ),
    );
  }
}
