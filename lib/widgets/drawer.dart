import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
  final  imageurl =
        "https://media.allure.com/photos/5ba532e30ac6c654eca1f789/1:1/w_1340,h_1340,c_limit/e31a1dd95b519c8063075bf3ebfc231d685e7cd34fb0985dfabe35ab063bdeb84011b71e4ae81ada3b2eb21920dc167c.jpg";
    return Drawer(
      child: Container(
        color:Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                child: UserAccountsDrawerHeader(
              accountName: Text("Vishnuvardhan"),
              accountEmail: Text("rvishnuvardhan@gmail.com"),
              currentAccountPicture:CircleAvatar(backgroundImage: NetworkImage(imageurl),),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
              color:Colors.white,
              ),
              title: Text("Home",textScaleFactor:1.2,
              style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
              color:Colors.white,
              ),
              title: Text("Profile",textScaleFactor:1.2,
              style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,
              color:Colors.white,
              ),
              title: Text("Email",textScaleFactor:1.2,
              style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
