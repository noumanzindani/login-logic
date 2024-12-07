import 'package:flutter/material.dart';
import 'package:realestate/login_screen.dart';
import 'package:realestate/signup_screen.dart';

class LoginOrSignup extends StatefulWidget {
  const LoginOrSignup({super.key});

  @override
  State<LoginOrSignup> createState() => _LoginOrSignupState();
}

class _LoginOrSignupState extends State<LoginOrSignup> {
  //initailly show login page
  bool showLoginPage = true;

  //toogle btween login and sginUpPage
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginScreen(
        onTap:togglePages,
      );
    } else {
      return SignupScreen(
        onTap:togglePages,);
    }
  }
}
