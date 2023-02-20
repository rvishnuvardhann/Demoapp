import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'pages/home_page.dart';
import "pages/login_page.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home:Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.indigo),
      //initialRoute: "/home",
      routes: {"/": (context) => Loginpage(),
      "/home":(context)=>Homepage(),
      "/login":(context)=>Loginpage()},
    );
  }
}
