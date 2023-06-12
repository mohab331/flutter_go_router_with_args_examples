import 'package:flutter/material.dart';

import 'error_content.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({required this.errorMessage,Key? key , }) : super(key: key);
  static const String routeName = 'ErrorScreen';
  static const String routePath = '/ErrorScreen';

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error Page'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: const ErrorContent(),
    );
  }
}
