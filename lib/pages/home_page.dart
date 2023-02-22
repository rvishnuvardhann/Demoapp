import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: const Text(" DemoApp"),
      ),
      body: const Center(
        child: Text("flutter dev"),
      ),
      drawer: MyDrawer(),
    );
  }
}
