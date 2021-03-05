import 'package:flutter/material.dart';

class ChordWidget extends StatefulWidget {
  @override
  _ChordWidgetState createState() => _ChordWidgetState();
}

class _ChordWidgetState extends State<ChordWidget> {
  String chord;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          Container(
            height: 80.0,
            width: 40.0,
            child: Column(
              children: [
                SizedBox(
                  height: 10.0, // todo: media query
                ),
                TextField(
                  style: TextStyle(fontSize: 23.0),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  onChanged: (String c) {
                    setState(() {
                      chord = c;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
