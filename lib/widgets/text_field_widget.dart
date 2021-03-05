import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  //todo: add to basic widgets
  TextFieldWidget(this.hint);

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(hintText: hint),
    );
  }
}
