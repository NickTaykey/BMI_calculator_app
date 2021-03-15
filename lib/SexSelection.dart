import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SexSection extends StatelessWidget {
  final Function setSex, getSex;
  SexSection(this.setSex, this.getSex);
  @override
  Widget build(BuildContext context) {
    Color femaleColor = getSex() == 'F' ? Colors.white : Colors.grey;
    Color maleColor = getSex() == 'M' ? Colors.white : Colors.grey;
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 15, 3, 15),
              padding: EdgeInsets.fromLTRB(18, 9, 18, 18),
              color: Color.fromRGBO(29, 31, 51, 1),
              child: TextButton(
                onPressed: () => setSex('M'),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'icons/male.svg',
                      color: maleColor,
                      height: 80.0,
                      width: 80.0,
                      semanticsLabel: 'Are you a male?',
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        'MALE',
                        style: TextStyle(
                          color: maleColor,
                          fontSize: 15.5,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(3, 15, 0, 15),
              padding: EdgeInsets.fromLTRB(18, 9, 18, 18),
              color: Color.fromRGBO(29, 31, 51, 1),
              child: TextButton(
                onPressed: () => setSex('F'),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'icons/female.svg',
                      color: femaleColor,
                      height: 80.0,
                      width: 80.0,
                      semanticsLabel: 'Are you a female?',
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        'FEMALE',
                        style: TextStyle(
                          color: femaleColor,
                          fontSize: 15.5,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
