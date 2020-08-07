import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({this.text, this.child});
  final Widget child;
  final String text;

  //TODO : make card clickable

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
      child: ListTile(
        leading: child,
        title: Text(text),
      ),
    );
  }
}
