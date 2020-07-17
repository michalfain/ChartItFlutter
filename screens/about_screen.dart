import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
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
