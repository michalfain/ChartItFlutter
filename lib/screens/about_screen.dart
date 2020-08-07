import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static const String id = "AboutScreen";
  //TODO: build screen ui

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Screen'),
      ),
      body: Column(
        children: [Text('Icons by Icons8 https://icons8.com')],
      ),
    );
  }
}
