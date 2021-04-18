import 'package:flutter/material.dart';
import 'barline_widget.dart';
import 'chord_widget.dart';

class BarChordWidget extends StatelessWidget {
  final TextEditingController chordController;
  BarChordWidget({this.chordController});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChordWidget(
//            chordController: chordController,
              ),
        ],
      ),
    );
  }
}
