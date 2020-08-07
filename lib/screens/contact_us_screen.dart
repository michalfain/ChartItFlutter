import 'package:chart_it/widgets/build_button_widget.dart';
import 'package:chart_it/widgets/card_widget.dart';
import 'package:chart_it/widgets/text_field_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  static const String id = "ContactUs";

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us!'),
      ),
      body: Column(
        children: [
          CardWidget(
            text: '972-52-4610919',
            child: Icon(Icons.phone),
          ),
          CardWidget(
            text: 'michelle.fain@gmail.com',
            child: Icon(Icons.email),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFieldWidget('Enter Your Name'),
                TextFieldWidget('Enter Your Phone'),
                TextFieldWidget('Enter your Email'),
              ],
            ),
          ),
          SizedBox(
            height: 250.0,
            child: Image.asset('assets/note_bg.png'),
          ),
          BuildButtonWidget('SEND'),
        ],
      ),
    );
  }
}
