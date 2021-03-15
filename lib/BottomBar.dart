import 'package:flutter/material.dart';
import 'NumberSelector.dart';

class BottomBar extends StatelessWidget {
  final Function getAge, getWeight, setAge, setWeight;
  BottomBar(this.getAge, this.getWeight, this.setAge, this.setWeight);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          NumberSelector('WEIGHT', setWeight, getWeight),
          NumberSelector('AGE', setAge, getAge),
        ],
      ),
    );
  }
}
