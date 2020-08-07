import 'package:chart_it/screens/about_screen.dart';
import 'package:chart_it/screens/chord_sheet.dart';
import 'package:chart_it/screens/contact_us_screen.dart';
import 'package:chart_it/widgets/add_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String id = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chart It!'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/note_bg.png'),
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
                title: "Add Chart",
                screenRoute: ChordSheet.id,
              ),
              AddScreen(
                title: "About Chart It!",
                screenRoute: AboutScreen.id,
              ),
              AddScreen(
                title: "Contact Us!",
                screenRoute: ContactUs.id,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
