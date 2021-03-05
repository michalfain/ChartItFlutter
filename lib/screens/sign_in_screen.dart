import 'package:chart_it/constants.dart';
import 'package:chart_it/widgets/build_button_widget.dart';
import 'package:chart_it/widgets/text_field_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.SIGN_IN_SCREEN_APP_BAR_TITLE),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Constants.BACKGROUND_IMAGE),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextFieldWidget(Constants.EMAIL),
            TextFieldWidget(Constants.PASSWORD),
            SizedBox(
              height: 16.0,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(Constants.FORGOT_PASSWORD, style: Constants.MEDIUM_TITLE_TEXT_STYLE),
            ),
            BuildButtonWidget(Constants.SIGN_IN),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Constants.DONT_HAVE_ACCOUNT,
                  style: Constants.MINI_TITLE_TEXT_STYLE,
                ),
                Text(
                  Constants.REGISTER_HERE,
                  style: Constants.MINI_TITLE_TEXT_STYLE,
                ),
              ],
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, Constants.HOME_ID);
              },
              child: Text('go in'),
            ),
          ],
        ),
      ),
    );
  }
}
