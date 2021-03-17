import 'package:flutter/material.dart';

class BMIResults extends StatelessWidget {
  final double bmiValue;
  final Map category;
  BMIResults(this.bmiValue, this.category);
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
                  category['status'].toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: category['color'],
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
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    children: [
                      Text(
                        '${category['status']} BMI range:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                          height: 1.6,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        category['range'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          height: 1.6,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    category['description'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 1.6,
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
