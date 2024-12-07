import 'dart:async';
import 'package:flutter/material.dart';
import 'package:realestate/home_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery values for responsiveness
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    // Scaling factor for font size (adjust as needed for different screen sizes)
    double fontSize = screenHeight * 0.08;

    return Scaffold(
      body: Container(
        color: Colors.blue[900],
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05), // Add padding for small screens
        child: Center(
          child: Text(
            "Real Estate",
            style: TextStyle(
              
              fontSize: fontSize, // Responsive font size based on screen height
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
