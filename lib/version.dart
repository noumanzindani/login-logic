import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Version extends StatelessWidget {
  const Version({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Version:0.0.2"),),
    );
  }
}