import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../chords_list.dart';
import 'barline_widget.dart';

class ChordWidget extends StatefulWidget {
  final TextEditingController chordController;
  ChordWidget({this.chordController});
  @override
  _ChordWidgetState createState() => _ChordWidgetState();
}

class _ChordWidgetState extends State<ChordWidget> {
  GlobalKey<AutoCompleteTextFieldState<String>> key = GlobalKey();
//  final TextEditingController chordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          Container(
            height: 80.0,
            width: 90.0,
            child: SizedBox(
              height: 25.0, width: 18.0, // todo: media query
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Flexible(
                    child: AutoCompleteTextField(
                      key: key,
                      clearOnSubmit: false,
//                      controller: chordController,
                      controller: widget.chordController,
                      suggestions: CordsList.chordsList,
                      itemFilter: (chord, query) {
                        return chord.toLowerCase().startsWith(query.toLowerCase());
                      },
                      itemSorter: (a, b) {
                        return a.comparedTo(b);
                      },
                      itemSubmitted: (chord) {
//                        chordController.text = chord;
                        widget.chordController.text = chord;
                      },
                      itemBuilder: (context, chord) {
                        return Container(
                          height: 80.0,
                          width: 90.0,
//                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            chord,
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      },
                      style: TextStyle(fontSize: 23.0),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2.0,
                  ),
                  Flexible(
                    child: BarLineWidget(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
