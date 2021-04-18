import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MetronomeWidget extends StatefulWidget {
  @override
  _MetronomeWidgetState createState() => _MetronomeWidgetState();
}

class _MetronomeWidgetState extends State<MetronomeWidget> {
  String noOfBeats = '4';
  String beatValue = '4';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<String>(
              value: noOfBeats,
              iconSize: 0.0,
              elevation: 10,
              onChanged: (String newValue) {
                setState(() {
                  noOfBeats = newValue;
                });
              },
              items: <String>['1', '2', '3', '4'].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            DropdownButton<String>(
              value: beatValue,
              iconSize: 0.0,
              elevation: 10,
              onChanged: (String newValue) {
                setState(() {
                  beatValue = newValue;
                });
              },
              items: <String>['2', '4', '8', '16'].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
