import 'package:chart_it/widgets/card_widget.dart';
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
          TextField(),
          TextField(),
          TextField(),
        ],
      ),
    );
  }
}
