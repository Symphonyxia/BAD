import 'package:flutter/material.dart';
import 'package:tabunlupa_3/profile_screen.dart';


class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),
    drawer: Drawer(
      child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
      const UserAccountsDrawerHeader(
        decoration: BoxDecoration(color: Color.fromARGB(255, 244, 72, 186)),
        accountName: Text(
          "Mary Hope Tabunlupa",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        accountEmail: Text(
          "maryhope.tabunlupa@wvsu.edu.ph",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        currentAccountPicture: CircleAvatar(
          backgroundImage: AssetImage("assets/profile.png")
        ),
      ),
     
      ListTile(
        leading: Icon(
          Icons.auto_stories,
        ),
        title: const Text('Poems'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(
          Icons.record_voice_over,
        ),
        title: const Text('Songs'),
        onTap: () {
          Navigator.pop(context);
        },
      ),

       ListTile(
        leading: Icon(
          Icons.palette,
        ),
        title: const Text('Arts'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      AboutListTile( // <-- SEE HERE
        icon: Icon(
          Icons.info,
        ),
        child: Text('About app'),
        applicationIcon: Icon(
          Icons.local_play,
        ),
        applicationName: 'Symphonyxia App',
        applicationVersion: '1.0',
      ),
    ],
  ),
),
    );
  }
}