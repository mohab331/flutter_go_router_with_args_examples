import 'package:flutter/material.dart';
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {required this.controller,
        required this.hint,
        required this.label,
        this.isObscure = false,
        Key? key})
      : super(key: key);
  final TextEditingController controller;
  final String label;
  final String hint;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
      ),
      obscureText: isObscure,
      validator: (String? value) {
        return null;
      },
    );
  }
}