import 'dart:ui';

import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/pictures/image1.png"),
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
            SizedBox(
              height: 30,
              child: Text("Enter Your Details"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 35,
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
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print("Hey there!!");
                      },
                      child: Text("Login"),
                      style: TextButton.styleFrom())
                ],
              ),
            )
          ],
        ));
  }
}