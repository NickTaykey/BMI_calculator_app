import 'package:flutter/material.dart';
import 'NumberSelector.dart';

class BottomBar extends StatelessWidget {
  final Function getAge, getWeight, setAge, setWeight;
  BottomBar(this.getAge, this.getWeight, this.setAge, this.setWeight);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Row(
        children: [
          Expanded(
            child: NumberSelector('WEIGHT', setWeight, getWeight),
          ),
          SizedBox(width: 6),
          Expanded(
            child: NumberSelector('AGE', setAge, getAge),
          ),
        ],
      ),
    );
  }
}
