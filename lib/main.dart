import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATOR',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color.fromRGBO(10, 13, 34, 1),
        fontFamily: 'Roboto',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(8, 12, 32, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(10, 13, 34, 1),
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [SexSection()],
      ),
    );
  }
}

class SexSection extends StatelessWidget {
  TextStyle textStyle = TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.25,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(15, 15, 3, 15),
              padding: EdgeInsets.fromLTRB(18, 9, 18, 18),
              color: Color.fromRGBO(29, 31, 51, 1),
              child: TextButton(
                onPressed: () {},
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
              margin: EdgeInsets.fromLTRB(3, 15, 15, 15),
              padding: EdgeInsets.fromLTRB(18, 9, 18, 18),
              color: Color.fromRGBO(29, 31, 51, 1),
              child: TextButton(
                onPressed: () {},
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
