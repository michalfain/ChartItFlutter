import 'package:flutter/material.dart';
import 'barline_widget.dart';
import 'chord_widget.dart';
import 'metronome_widget.dart';

class BarChordWidget extends StatefulWidget {
  @override
  _BarChordWidgetState createState() => _BarChordWidgetState();
}

class _BarChordWidgetState extends State<BarChordWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MetronomeWidget(),
          ChordWidget(),
//          BarLineWidget(),
        ],
      ),
    );
  }
}
