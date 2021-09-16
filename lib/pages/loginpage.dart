import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utility/routes.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String name = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                  child: Text("Powered by Sidmon"),
                ),
                Text(
                  "Welcome Shopper $name!",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset(
                  "assets/pictures/image1.png",
                  height: 300,
                ),
                SizedBox(
                  height: 30,
                  child: Text("Enter Your Details"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 25,
                    horizontal: 65,
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter your Name",
                          labelText: "USERNAME",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(
                            () {},
                          );
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Input the Password",
                          labelText: "PASSWORD",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 7) {
                            return "Password length should be atleast 6";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changebutton ? 60 : 8),
                        child: InkWell(
                          splashColor: Colors.grey,
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changebutton ? 65 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changebutton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
