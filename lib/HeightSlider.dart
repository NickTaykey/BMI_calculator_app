import 'package:flutter/material.dart';

class HeightSlider extends StatelessWidget {
  final int maxHeight = 225, minHeight = 150;
  final Function setHeight, getHeight;
  HeightSlider(this.setHeight, this.getHeight);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 12),
      color: Color.fromRGBO(17, 20, 40, 1),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 12),
            child: Text(
              'HEIGHT',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                getHeight().toString(),
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(3, 22, 0, 0),
                child: Text(
                  'cm',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 3,
              trackShape: RectangularSliderTrackShape(),
              overlayColor: Colors.red.withAlpha(32),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
              thumbColor: Color.fromRGBO(235, 21, 85, 1),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.grey,
            ),
            child: Slider(
              value: getHeight().toDouble(),
              min: minHeight.toDouble(),
              max: maxHeight.toDouble(),
              onChanged: (double v) {
                setHeight(v.toInt());
              },
            ),
          ),
        ],
      ),
    );
  }
}
