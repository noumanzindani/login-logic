import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const MyButton({super.key, required this.onTap,required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:const EdgeInsets.all(18.0),
        margin:const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
          color: Colors.blue.shade900,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Text(
          text,
          style:const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        )),
      ),
    );
  }
}
