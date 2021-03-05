import 'package:chart_it/constants.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  AddScreen({this.title, this.screenRoute});
  final String title;
  final String screenRoute;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, screenRoute);
      },
      child: Column(
        children: [
          Image.asset(
            Constants.ICON_IMAGE,
            height: 100.0,
            width: 100.0,
          ),
          Text(
            title,
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
