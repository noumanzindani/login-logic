import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:realestate/components/my_button.dart';
import 'package:realestate/components/my_textfeild.dart';
import 'package:realestate/components/squre_tile.dart';
import 'package:realestate/forget_password_screen.dart';
class LoginScreen extends StatefulWidget {
  final Function()? onTap;
  LoginScreen({super.key,required this.onTap});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  // sign User In Method
  void signUserIn() async {
    //show loading circle
    showDialog(
        context: context,
        builder: (context) => Center(
              child: CircularProgressIndicator(
                color: Colors.blue.shade900,
              ),
            ));

    //try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);

      //pop thr loading circile
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //pop thr loading circile
      Navigator.pop(context);
      //error MAssage
      showErrorMessage(e.code);
    }
  }

  //error Message to User
  void showErrorMessage(String message) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.blue.shade900,
              title: Center(
                  child: Text(
                message,
                style: TextStyle(color: Colors.white),
              )),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900.withOpacity(0.09),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  //circular avitar
                  CircleAvatar(
                    radius: MediaQuery.sizeOf(context).height * 0.09,
                    backgroundImage: const AssetImage(
                      "assets/images/icon.jpg",
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.03,
                  ),

                  //welcome note
                  Text(
                    "Welcome Back you've been missed!",
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: MediaQuery.sizeOf(context).height * 0.02,
                        fontWeight: FontWeight.bold),
                  ),

                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.03,
                  ),

                  //user textfeild
                  MyTextfeild(
                      hinttext: "Email",
                      obscureText: false,
                      controller: emailController),

                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.015,
                  ),

                  // passwaordtextfeild
                  MyTextfeild(
                      hinttext: "Password",
                      obscureText: true,
                      controller: passwordController),

                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.008,
                  ),

                  //forget
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgetPasswordScreen()));
                        },
                        child: const Text(
                          "Forget Password",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.03,
                  ),

                  //sgin in
                  MyButton(onTap: signUserIn,text: "Sign In",),

                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.03,
                  ),

                  //or cotinue with
                  Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.blue.shade900,
                      )),
                      Text(
                        "or continue With",
                        style: TextStyle(color: Colors.blue.shade900),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.blue.shade900,
                      ))
                    ],
                  ),

                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.04,
                  ),

                  //google +apple sgin in Button
                 const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       SqureTile(imagePath: "assets/images/apple.png"),
                      SizedBox(
                        width:25,
                      ),
                      SqureTile(imagePath: "assets/images/google.png"),
                    ],
                  ),

                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.04,
                  ),

                  //not a member? register now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not a Member?",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.01,
                      ),
                       GestureDetector(
                        onTap: widget.onTap,
                         child:const Text(
                            "Register Now",
                            style: TextStyle(color: Colors.blue),
                          ),
                       ),
                      
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
