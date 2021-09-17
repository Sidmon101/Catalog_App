import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/homepage.dart';
import 'package:flutter_catalog/pages/loginpage.dart';
import 'package:flutter_catalog/utility/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      debugShowCheckedModeBanner: true,
      darkTheme: Mytheme.darkTheme(context),
      initialRoute: "/",
      routes: {
        "/": (context) => homepage(),
        MyRoutes.homeroute: (context) => homepage(),
        MyRoutes.loginroute: (context) => loginpage(),
      },
    );
  }
}
