import 'package:flutter/material.dart';

class GetChord extends StatefulWidget {
//  final String chord;
//  GetChord(this.chord);
  @override
  _GetChordState createState() => _GetChordState();
}

class _GetChordState extends State<GetChord> {
  String chord;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0, width: 100.0,
      child: TextField(onChanged: (String c){
        setState(() {
          chord = c;
        });
      },),
    );
  }
}
