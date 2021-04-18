import 'package:chart_it/constants.dart';
import 'package:chart_it/widgets/chord_widget.dart';
import 'package:chart_it/widgets/metronome_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChordsSheet extends StatefulWidget {
  @override
  _ChordsSheetState createState() => _ChordsSheetState();
}

class _ChordsSheetState extends State<ChordsSheet> {
  TextEditingController chordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.NEW_CHART), // todo: chart name as title
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MetronomeWidget(),
                ChordWidget(
                  chordController: chordController,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
