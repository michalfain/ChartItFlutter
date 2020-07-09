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
            "Chart it",
            style: TextStyle(color: Colors.lightBlue),
          ),
        ),
        body: Column(
          children: [
            GetChord(),
            Container(
              child: Text('I am a developer, I can do what i want!!!'),
            )
          ],
        ),
      ),
    );
  }
}
