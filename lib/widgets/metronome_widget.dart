import 'package:flutter/material.dart';

import '../constants.dart';

class MetronomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '4',
            style: TextStyle(fontSize: metronomeWidgetFontSize),
          ),
          Text('4', style: TextStyle(fontSize: metronomeWidgetFontSize)),
        ],
      ),
    );
  }
}
