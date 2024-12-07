import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:realestate/components/my_button.dart';
import 'package:realestate/components/my_textfeild.dart';
import 'package:realestate/components/squre_tile.dart';

class SignupScreen extends StatefulWidget {
  final Function()? onTap;
  SignupScreen({super.key, required this.onTap});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

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
      if (passwordController.text == confirmpasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
      } else {
        //show erorr message,Password is not same
        showErrorMessage("Password don't match");
      }
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
                    height: MediaQuery.sizeOf(context).height * 0.025,
                  ),

                  //welcome note
                  Text(
                    "Welcome Back you've been missed!",
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: MediaQuery.sizeOf(context).height * 0.025,
                        fontWeight: FontWeight.bold),
                  ),

                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.025,
                  ),

                  
                  
                  //user textfeild
                  MyTextfeild(
                      hinttext: "Email",
                      obscureText: false,
                      controller: emailController),

                  
                  
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.01,
                  ),

                  
                  
                  // passwaordtextfeild
                  MyTextfeild(
                      hinttext: "Password",
                      obscureText: true,
                      controller: passwordController),

                  
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.01,
                  ),



                  // confirmpasswaordtextfeild
                  MyTextfeild(
                      hinttext: "Confirm Password",
                      obscureText: true,
                      controller: confirmpasswordController),

                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.03,
                  ),

                  //sgin in
                  MyButton(
                    onTap: signUserIn,
                    text: "Sign Up",
                  ),

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
                    height: MediaQuery.sizeOf(context).height * 0.03,
                  ),

                  //google +apple sgin in Button
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SqureTile(imagePath: "assets/images/apple.png"),
                      SizedBox(
                        width: 25,
                      ),
                      SqureTile(imagePath: "assets/images/google.png"),
                    ],
                  ),

                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.03,
                  ),

                  //not a member? register now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Alraedy have Account!",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.01,
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          "Login",
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
