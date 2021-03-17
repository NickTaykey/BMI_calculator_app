import 'package:flutter/material.dart';
import 'SexSelection.dart';
import 'HeightSlider.dart';
import 'BottomBar.dart';
import 'CalculateBtn.dart';
import 'BMIResults.dart';
import 'dart:math';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  final List catergories = <Map>[
    {
      'status': 'Underweight',
      'range': 'Lower than 18.5 kg/m2',
      'color': Color.fromRGBO(135, 177, 217, 1),
      'description': 'You need to eat more!'
    },
    {
      'status': 'Normal',
      'range': '18.5 - 24.9 kg/m2',
      'color': Colors.greenAccent[400],
      'description': 'You have a normal body weight. Good job!'
    },
    {
      'status': 'Overweight',
      'range': '25 - 29.9 kg/m2',
      'color': Colors.yellow,
      'description': 'Your weight is a bit above the average.'
    },
    {
      'status': 'Obese',
      'range': '30 - 34.9 kg/m2',
      'color': Colors.orange,
      'description': 'You are heavy, you need to follow a diet.'
    },
    {
      'status': 'Extremely obese',
      'range': 'More than 35 kg/m2',
      'color': Colors.red,
      'description': 'You are too heavy. Eat less!!!'
    },
  ];

  final int maxAge = 100,
      minAge = 16,
      maxWeight = 300,
      minWeight = 45,
      maxHeight = 225,
      minHeight = 150;

  Map category;
  double bmiValue;
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

  Map getCategory(double bmiValue) {
    if (bmiValue < 18.5)
      return catergories[0];
    else if (bmiValue >= 18.5 && bmiValue < 25)
      return catergories[1];
    else if (bmiValue >= 25 && bmiValue < 30)
      return catergories[2];
    else if (bmiValue >= 30 && bmiValue < 35)
      return catergories[3];
    else
      return catergories[4];
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

  double calculateBMI() {
    double value = (weight / pow((height / 100), 2));
    return double.parse(value.toStringAsFixed(1));
  }

  void onSubmit() {
    double value = calculateBMI();
    setState(() {
      bmiValue = value;
      category = getCategory(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: bmiValue == null
          ? Column(
              children: [
                SexSection(setSex, getSex),
                HeightSlider(setHeight, getHeight, maxHeight, minHeight),
                BottomBar(getAge, getWeight, updateAge, updateWeight),
                Expanded(
                  child: CalculateBtn(onSubmit),
                )
              ],
            )
          : BMIResults(bmiValue, category),
    );
  }
}
