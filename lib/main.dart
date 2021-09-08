import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/homepage.dart';
import 'package:flutter_catalog/pages/loginpage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.indigo),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => loginpage(),
        "/home": (context) => homepage(),
        "/login": (context) => loginpage(),
      },
    );
  }
}
