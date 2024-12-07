
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realestate/components/Profile.dart';
import 'package:realestate/components/firebasestore/firebase_add_user.dart';
import 'package:realestate/components/notification.dart';
import 'package:realestate/home_screen.dart';
import 'package:realestate/setting.dart';
import 'package:realestate/version.dart';

class customDrawer extends StatelessWidget {
   customDrawer({super.key});

  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _buildHeader(),
          _buildItem(
            icon: CupertinoIcons.home,
            title: 'Home',
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()))},
          ),
          _buildItem(
            icon: CupertinoIcons.bell,
            title: 'Notifications',
            onTap: () => { Navigator.push(context, MaterialPageRoute(builder: (context)=>Notification1()))},
          ),
          _buildItem(
            icon: CupertinoIcons.person,
            title: 'Profile',
            onTap: () => { Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()))},
          ),
          _buildItem(
            icon: Icons.settings,
            title: 'Setting',
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting()))},
          ),
          _buildItem(
            icon: Icons.contact_mail_sharp,
            title: 'Contact Us',
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddUser()))
            },
          ),
          _buildItem(
            icon: Icons.adb_outlined,
            title: 'Version',
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Version()))
            },
          )
        ],
      ),
    );
  }

  _buildHeader() {
    return  DrawerHeader(
      decoration: BoxDecoration(color: Colors.blue.shade900),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media.istockphoto.com/id/1399611777/photo/portrait-of-a-smiling-little-brown-haired-boy-looking-at-the-camera-happy-kid-with-good.jpg?s=612x612&w=0&k=20&c=qZ63xODwrnc81wKK0dwc3tOEf2lghkQQKmotbF11q7Q='),
            radius: 40,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "" +user.email!,
            style: TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      ),
    );
  }

  _buildItem(
      {required IconData icon,
      required String title,
      required GestureTapCallback onTap}) {
    return ListTile(
      tileColor: Colors.blue.shade900.withOpacity(0.09),
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
      minLeadingWidth: 5,
    );
  }
}
