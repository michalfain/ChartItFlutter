import 'package:chart_it/constants.dart';
import 'package:chart_it/widgets/build_button_widget.dart';
import 'package:chart_it/widgets/card_widget.dart';
import 'package:chart_it/widgets/text_field_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.CONTACT_US_TITLE),
      ),
      body: Column(
        children: [
          CardWidget(
            text: Constants.CONTACT_US_PHONE,
            child: Icon(Icons.phone),
          ),
          CardWidget(
            text: Constants.CONTACT_US_EMAIL,
            child: Icon(Icons.email),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFieldWidget(Constants.ENTER_NAME),
                TextFieldWidget(Constants.ENTER_PHONE),
                TextFieldWidget(Constants.ENTER_EMAIL),
              ],
            ),
          ),
          SizedBox(
            height: 250.0,
            child: Image.asset(Constants.BACKGROUND_IMAGE),
          ),
          BuildButtonWidget(Constants.SEND),
        ],
      ),
    );
  }
}
