import 'package:flutter/material.dart';

class HeightSlider extends StatelessWidget {
  final double maxHeight = 2.25, minHeight = 1.5;
  final Function setHeight, getHeight;
  HeightSlider(this.setHeight, this.getHeight);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SliderTheme(
            data: SliderThemeData(
              thumbColor: Color.fromRGBO(235, 21, 85, 1),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
            ),
            child: Slider(
              value: getHeight(),
              min: minHeight,
              max: maxHeight,
              onChanged: (double v) {
                double rounded = double.parse(v.toStringAsFixed(2));
                setHeight(rounded);
              },
            ),
          ),
        ],
      ),
    );
  }
}
