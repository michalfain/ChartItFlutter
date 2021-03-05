import 'package:chart_it/constants.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  //TODO: build screen ui

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.ABOUT_SCREEN_APP_BAR_TITLE),
      ),
      body: Column(
        children: [Text(Constants.ICON_LINK)],
      ),
    );
  }
}
