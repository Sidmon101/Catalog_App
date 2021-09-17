import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://th.bing.com/th/id/R.853c41a88a8cb41d10adfdb6754b9311?rik=cxgTESH8GRCrtA&riu=http%3a%2f%2fimg00.deviantart.net%2f743f%2fi%2f2010%2f083%2f6%2fc%2fdarth_vader_by_raikoh14.jpg&ehk=8zg5MBdeUHnX6uGTEyWuWPFZsRDE19lJ8tgVtAZMacA%3d&risl=&pid=ImgRaw&r=0";
    return Drawer(
      child: Container(
        color: Colors.grey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                margin: EdgeInsets.zero,
                accountName: Text("Sidharth Mohan"),
                accountEmail: Text("sidharthmohanaggarwal@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail_solid,
                color: Colors.black,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
