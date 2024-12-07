import 'package:flutter/material.dart';

class SqureTile extends StatelessWidget {
  final String imagePath;
  const SqureTile({super.key,required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue.shade900),
        borderRadius: BorderRadius.circular(16),
        color: Colors.blue.shade900.withOpacity(0.3)
      ),
      child:
      Image.asset(imagePath,
      height: 40,),
    );
  }
}