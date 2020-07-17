import 'package:chart_it/widgets/barline_widget.dart';
import 'package:chart_it/widgets/metronome_widget.dart';
import 'package:flutter/material.dart';
import 'package:chart_it/widgets/ChordWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Chart It",
            style: TextStyle(color: Colors.white),
          ),
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
      ),
    );
  }
}
