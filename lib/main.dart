import 'package:dinoapp/pages/profile.dart';
import 'package:dinoapp/utility/route.dart';
import 'package:dinoapp/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'pages/home_page.dart';
import "pages/login_page.dart";
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      //initialRoute: MyRoutes.homeroute,
      routes: {
        "/": (context) => Loginpage(),
        MyRoutes.homeroute: (context) => Homepage(),
        MyRoutes.loginroute: (context) => Loginpage(),
        MyRoutes.profileroute:(context) => ProfilePage(),
      },
    );
  }
}
