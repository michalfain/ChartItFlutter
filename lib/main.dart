import 'package:chart_it/widgets/barline_widget.dart';
import 'file:///C:/Users/miche/Desktop/chart_it/screens/home.dart';
import 'package:chart_it/widgets/metronome_widget.dart';
import 'package:flutter/material.dart';
import 'package:chart_it/widgets/chord_widget.dart';

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
      home: Home(),
    );
  }
}
