import 'package:flutter/material.dart';

class CalculateBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(235, 21, 85, 1),
        ),
        child: Text(
          'CALCULATE YOUR BMI',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16.5,
          ),
        ),
      ),
    );
  }
}
