import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:realestate/cusrom_Drawer.dart';
import 'package:realestate/responsive_grid_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue[900],
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: signUserOut, icon: Icon(Icons.logout_outlined))
          ],
          title:  Text(
            "Real Estate",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        drawer: customDrawer(),
        body: ResponsiveGridView(),
      ),
    );
  }
}
