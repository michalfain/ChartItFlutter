import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetChord extends StatefulWidget {
  @override
  _GetChordState createState() => _GetChordState();
}

class _GetChordState extends State<GetChord> {
  String chord;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              onChanged: (String c) {
                setState(() {
                  chord = c;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}