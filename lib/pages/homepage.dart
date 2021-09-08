import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);
  final int days = 40;
  final String hello = " new developer";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Welcome $hello to $days \n din  of flutter!!",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
