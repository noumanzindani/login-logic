import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:realestate/components/my_textfeild.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  void Function()? onPressed;
  final _emailcontroller = TextEditingController();

  @override
  void dispose() {
    _emailcontroller.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailcontroller.text.trim());
    } on FirebaseAuthException catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                content: Text(e.message.toString()),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      backgroundColor: Colors.blue.shade800.withOpacity(0.9),
          appBar: AppBar(backgroundColor: Colors.transparent),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Enter Your Registered Email and We will send you password reset Link",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: MediaQuery.sizeOf(context).height * 0.02,
                      color: Colors.white),
                ),
                MyTextfeild(
                    hinttext: "Enter Your Registered Email",
                    obscureText: false,
                    controller: _emailcontroller),

                GestureDetector(
                    onTap: passwordReset,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue.shade900),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Text(
                          "Reset Password",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.sizeOf(context).height * 0.02,
                              color: Colors.white),
                        ),
                      ),
                    ))

                // MaterialButton(
                //   color: Colors.blue.shade900,
                //   onPressed:passwordReset(),
                //   child: const Padding(
                //     padding: EdgeInsets.all(8.0),
                //     child: Text(
                //       "Rest Password",
                //       style: TextStyle(color: Colors.white),
                //     ),
                //   ),
                // )
              ],
            ),
          )),
    );
  }
}
