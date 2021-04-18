import 'package:flutter/material.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import '../chords_list.dart';

class ChordsBar extends StatefulWidget {
  final TextEditingController chordController;
  ChordsBar({this.chordController});
  @override
  _ChordsBarState createState() => _ChordsBarState();
}

class _ChordsBarState extends State<ChordsBar> {
  GlobalKey<AutoCompleteTextFieldState<String>> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return AutoCompleteTextField(
      key: key,
      clearOnSubmit: false,
      controller: widget.chordController,
      suggestions: CordsList.chordsList,
      itemFilter: (chord, query) {
        return chord.toLowerCase().startsWith(query.toLowerCase());
      },
      itemSorter: (a, b) {
        return a.comparedTo(b);
      },
      itemSubmitted: (chord) {
        widget.chordController.text = chord;
      },
      itemBuilder: (context, chord) {
        return Container(
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: [
              Text(
                chord,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        );
      },
      style: TextStyle(fontSize: 23.0),
      decoration: InputDecoration(
        border: InputBorder.none,
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}
