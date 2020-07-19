import 'package:flutter/material.dart';
import 'package:chart_it/screens/home.dart';
import 'package:chart_it/screens/chord_sheet.dart';
import 'package:chart_it/screens/about_screen.dart';

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
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => Home(),
        ChordSheet.id: (context) => ChordSheet(),
        AboutScreen.id: (context) => AboutScreen(),
      },
    );
  }
}
