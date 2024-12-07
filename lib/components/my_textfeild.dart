import 'package:flutter/material.dart';

class MyTextfeild extends StatelessWidget {
  final controller;
  final String hinttext;
  final bool obscureText;

  const MyTextfeild(
      {super.key, required this.hinttext, required this.obscureText,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        cursorColor: Colors.blue.shade900,
        decoration: InputDecoration(
            labelText: hinttext,
            labelStyle: TextStyle(color: Colors.blue.shade900),
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue.shade900))),
      ),
    );
  }
}
