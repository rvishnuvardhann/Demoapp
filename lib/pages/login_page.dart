
import "package:dinoapp/utility/route.dart";
import "package:flutter/material.dart";

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
       setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeroute);
    setState(() {
      changeButton = false;
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name !!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Name cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password cannot be Empty!!";
                        } else if (value.length < 9) {
                          return "Password length must be 9";
                        }
                        return null;
                      },
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                          //splashColor: Colors.red,
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            alignment: Alignment.center,
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                            // decoration: BoxDecoration(
                            //   color: Colors.deepPurple,
                            //   shape: changeButton
                            //       ? BoxShape.circle
                            //       : BoxShape.rectangle,
                            //borderRadius: BorderRadius.circular(changeButton?50:8),
                          )),
                    ),
                    //),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
