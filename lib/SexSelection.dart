import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SexSection extends StatelessWidget {
  final Function setSex;
  SexSection(this.setSex);
  final TextStyle textStyle = TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.25,
  );
  @override
  Widget build(BuildContext context) {
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
                      color: Colors.white,
                      height: 80.0,
                      width: 80.0,
                      semanticsLabel: 'Are you a male?',
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        'MALE',
                        style: textStyle,
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
                      color: Colors.white,
                      height: 80.0,
                      width: 80.0,
                      semanticsLabel: 'Are you a female?',
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        'FEMALE',
                        style: textStyle,
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
