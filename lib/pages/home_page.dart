import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Text("Vishnuvardhan"),
      ),
      body:  Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 400,
                width: 400,
                child:Image.asset("assets/images/img.jpg",fit:BoxFit.contain),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child:Text(
                "I am a quick learner with a fun, outgoing personality. In addition, I excel in my ability to work under pressure and handle stressful situations very well.I am open to learning new things and getting involved with new projects that can help me learn or apply all that I have learned throughout my career.",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  //fontWeight: FontWeight.bold,

                ),
              ),
              )
              
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
