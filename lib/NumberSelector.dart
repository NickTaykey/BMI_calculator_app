import 'package:flutter/material.dart';

class NumberSelector extends StatelessWidget {
  final String label;
  final Function updateNumber, getNumber;
  NumberSelector(this.label, this.updateNumber, this.getNumber);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(label),
          Text(getNumber().toString()),
          Row(
            children: [
              ElevatedButton(
                onPressed: () => updateNumber(1),
                child: Icon(Icons.add),
              ),
              ElevatedButton(
                onPressed: () => updateNumber(-1),
                child: Icon(Icons.remove),
              )
            ],
          )
        ],
      ),
    );
  }
}
