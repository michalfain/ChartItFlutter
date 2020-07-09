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
          title: Text("Chart it"),
        ),
        body: Column(
          children: [
            GetChord(),
            Container(
              child: Text('hi'),
            )
          ],
        ),
      ),
    );
  }
}
