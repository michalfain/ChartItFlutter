import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  AddScreen({this.title, this.screenRoute});

  final String title;
  final String screenRoute;

  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, widget.screenRoute);
      },
      child: Column(
        children: [
          Image.asset(
            'assets/icon.png',
            height: 100.0,
            width: 100.0,
          ),
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
