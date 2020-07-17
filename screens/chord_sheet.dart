import 'package:chart_it/widgets/barline_widget.dart';
import 'package:chart_it/widgets/chord_widget.dart';
import 'package:chart_it/widgets/metronome_widget.dart';
import 'package:flutter/material.dart';

class ChordSheet extends StatefulWidget {
  @override
  _ChordSheetState createState() => _ChordSheetState();
}

class _ChordSheetState extends State<ChordSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Chart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MetronomeWidget(),
                GetChord(),
                BarLineWidget(),
                GetChord(),
                BarLineWidget(),
                GetChord(),
                BarLineWidget(),
                GetChord(),
                BarLineWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
