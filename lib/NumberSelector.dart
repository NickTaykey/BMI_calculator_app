import 'package:flutter/material.dart';

class NumberSelector extends StatelessWidget {
  final String label;
  final Function updateNumber, getNumber;
  NumberSelector(this.label, this.updateNumber, this.getNumber);
  @override
  Widget build(BuildContext context) {
    ButtonStyle btnStyle = ElevatedButton.styleFrom(
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(50),
      ),
      primary: Color.fromRGBO(28, 31, 50, 1),
    );
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18),
      color: Color.fromRGBO(17, 20, 40, 1),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 15.5,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 5, 0, 15),
            child: Text(
              getNumber().toString(),
              style: TextStyle(
                fontSize: 38,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: ElevatedButton(
                    style: btnStyle,
                    onPressed: () => updateNumber(-1),
                    child: Icon(
                      Icons.remove,
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  child: ElevatedButton(
                    style: btnStyle,
                    onPressed: () => updateNumber(1),
                    child: Icon(
                      Icons.add,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
