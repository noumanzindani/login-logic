import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:realestate/login_or_signup.dart';
import 'package:realestate/onbording_screen.dart';


class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            //user is logged in
            if (snapshot.hasData) {
              return OnboardingScreen();
            } 
            
            //user isn't logged in
            else {
              return LoginOrSignup();
            }
          }),
    );
  }
}
