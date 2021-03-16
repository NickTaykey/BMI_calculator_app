import 'package:flutter/material.dart';

class BMIResults extends StatelessWidget {
  final double bmiValue;
  BMIResults(this.bmiValue);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 15, 0, 30),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Color.fromRGBO(29, 31, 51, 1),
            padding: EdgeInsets.symmetric(vertical: 35, horizontal: 40),
            child: Column(
              children: [
                Text(
                  'NORMAL',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.greenAccent[400],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    bmiValue.toString(),
                    style: TextStyle(
                      fontSize: 85,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
