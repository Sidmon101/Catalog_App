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
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
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
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changebutton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeroute);
                      },
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
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            // shape: changebutton
                            //    ? BoxShape.circle
                            //  : BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.circular(changebutton ? 60 : 8)),
                      ),
                    )
                    //  ElevatedButton(
                    //    onPressed: () {
                    //      Navigator.pushNamed(context, MyRoutes.homeroute);
                    //    },
                    //  child: Text("Login"),
                    //   style:
                    //       TextButton.styleFrom(minimumSize: Size(100, 40))),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
