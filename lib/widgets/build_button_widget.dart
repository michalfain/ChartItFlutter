import 'package:flutter/material.dart';

class BuildButtonWidget extends StatelessWidget {
  BuildButtonWidget(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ButtonTheme(
        minWidth: 380.0,
        height: 60.0,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          color: Color(0xffea80fc),
          splashColor: Colors.pinkAccent,
          onPressed: () {},
          // TODO: build button methods
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
