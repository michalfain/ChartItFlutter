import 'package:chart_it/constants.dart';
import 'package:chart_it/screens/contact_us_screen.dart';
import 'package:chart_it/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:chart_it/screens/home.dart';
import 'package:chart_it/screens/chord_sheet.dart';
import 'package:chart_it/screens/about_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        //todo: chane this ugliness
        primaryColorDark: Color(0xff5A1178),
        cardColor: Color(0xffea80fc),
        canvasColor: Color(0xffce93d8),
        primaryColor: Color(0xffBB1DF9),
        backgroundColor: Color(0xffCBC6CD),
        scaffoldBackgroundColor: Color(0xffCBC6CD),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Constants.CHORD_SHEET_ID,
//      initialRoute: SignInScreen.id,
      routes: {
        Constants.HOME_ID: (context) => Home(),
        Constants.CHORD_SHEET_ID: (context) => ChordsSheet(),
        Constants.ABOUT_SCREEN_ID: (context) => AboutScreen(),
        Constants.CONTACT_US_ID: (context) => ContactUs(),
        Constants.SIGN_IN_SCREEN_ID: (context) => SignInScreen(),
      },
    );
  }
}
