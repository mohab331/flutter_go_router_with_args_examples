import 'package:flutter/material.dart';
import 'package:flutter_go_router/screens/about/about_content.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({required this.appBarTitle, Key? key}) : super(key: key);

  final String appBarTitle;

  static const String routeName = 'AboutScreen';
  static const String routePath = '/AboutScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle,),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: const AboutContent(),
    );
  }
}
