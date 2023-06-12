import 'package:flutter/material.dart';
import 'package:flutter_go_router/screens/login/login_content.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({this.extras , Key? key}) : super(key: key);

  static const String routeName = 'LoginScreen';
  static const String routePath = '/LoginScreen';
  final Object? extras;

  @override
  Widget build(BuildContext context) {
    if(extras != null){
     print((extras as Map<String , dynamic>)['logout'] as String?);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Screen',
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: const LoginContent(),
    );
  }
}
