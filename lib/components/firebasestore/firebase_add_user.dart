import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:realestate/components/my_textfeild.dart';

class AddUser extends StatefulWidget {

 AddUser({super.key,});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
final nameController=TextEditingController();

  final usernameController=TextEditingController();

  final emailController=TextEditingController();

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  addUser() async {
    await users
        .add(
          {
         "Name": nameController.text,
          "UserName":usernameController.text,
          "Email":emailController.text,
        })
        .then((value) =>  
        print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700.withOpacity(0.9),
      appBar: AppBar(
      backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          MyTextfeild(hinttext: "name", obscureText: false, controller:nameController ),
          MyTextfeild(hinttext: "Username", obscureText: false, controller:usernameController ),
          MyTextfeild(hinttext: "Email", obscureText: false, controller:emailController ),


          Row(mainAxisAlignment: MainAxisAlignment.center,
            children:[
            GestureDetector(
              
             onTap: () async {
              await addUser();
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Add User",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.sizeOf(context).height*0.02,
                    color: Colors.blue.shade900
                  ),),
                ),),
            )],)

          // ElevatedButton(
          //   onPressed: () async {
          //     await addUser();
          //   },
          //   child:  Text("Add User",style: TextStyle(
          //     color: Colors.blue.shade900
          //   ),),
          // )
        ],
      ),
    );
  }
}
