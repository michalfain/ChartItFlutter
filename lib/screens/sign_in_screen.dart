import 'package:chart_it/screens/home.dart';
import 'package:chart_it/widgets/build_button_widget.dart';
import 'package:chart_it/widgets/text_field_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  static const String id = 'SignInScreen';

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In Please'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/note_bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextFieldWidget('Email'),
            TextFieldWidget('Password'),
            SizedBox(
              height: 16.0,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Color(0xff04B684),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            BuildButtonWidget('Sign in'),
            BuildButtonWidget('Sign in with Google'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    color: Color(0xff04B684),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Register here",
                  style: TextStyle(
                    color: Color(0xff04B684),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            FlatButton(
              //TODO: delete this button once sign in is finished, make sure there is no back button to home screen
              onPressed: () {
                Navigator.pushNamed(context, Home.id);
              },
              child: Text('go in'),
            ),
          ],
        ),
      ),
    );
  }
}
