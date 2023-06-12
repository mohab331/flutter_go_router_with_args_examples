import 'package:flutter/material.dart';
class ErrorContent extends StatelessWidget {
  const ErrorContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(Icons.error , color: Colors.red,size: 50,),
    );
  }
}
