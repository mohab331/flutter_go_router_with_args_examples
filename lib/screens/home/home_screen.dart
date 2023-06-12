import 'package:flutter/material.dart';
import 'package:flutter_go_router/screens/home/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = 'HomeScreen';
  static const String routePath = '/HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: const HomeContent(),
    );
  }
}
