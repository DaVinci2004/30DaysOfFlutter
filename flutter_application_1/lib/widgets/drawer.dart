import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://i.insider.com/644392e43d49030019df20c1?width=700";
    return Drawer(
      child: Container(
        color: Colors.cyanAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Suraj Sen"), 
                accountEmail: Text("abc@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
      
                ),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.home, 
                    color: Colors.white,
                    ),
                    title: Text("Home", 
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ), 
                    ),
                ),
          ListTile(
                  leading: Icon(
                    CupertinoIcons.profile_circled, 
                    color: Colors.white,
                    ),
                    title: Text(
                      "Profile", 
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ), 
                    ),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.mail, 
                    color: Colors.white,
                    ),
                    title: Text("Email me", 
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ), 
                    ),
                )


          ],
        ),
      ),
    );
  }
}