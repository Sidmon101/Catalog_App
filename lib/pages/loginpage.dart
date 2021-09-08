import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "Login page",
          style: TextStyle(
            fontSize: 30,
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 2.0,
        ),
      ),
    );
  }
}
