import 'package:chart_it/constants.dart';
import 'package:chart_it/widgets/add_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.APP_TITLE),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Constants.BACKGROUND_IMAGE),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AddScreen(
                title: Constants.ADD_CHART_SCREEN,
                screenRoute: Constants.CHORD_SHEET_ID,
              ),
              AddScreen(
                title: Constants.ABOUT_SCREEN,
                screenRoute: Constants.ABOUT_SCREEN_ID,
              ),
              AddScreen(
                title: Constants.CONTACT_US_SCREEN,
                screenRoute: Constants.CONTACT_US_ID,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
