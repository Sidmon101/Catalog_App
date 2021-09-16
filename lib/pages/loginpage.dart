import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utility/routes.dart';

class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

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
                "Welcome Shopper!",
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
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homeroute);
                        },
                        child: Text("Login"),
                        style:
                            TextButton.styleFrom(minimumSize: Size(100, 40))),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
