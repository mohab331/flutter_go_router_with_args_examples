import 'package:flutter/material.dart';

import 'contact_us_content.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({required this.appBarTitle ,Key? key}) : super(key: key);

  static const String routeName = 'ContactUsScreen';
  static const String routePath = '/ContactUsScreen';

  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: const ContactUsContent());
  }
}
