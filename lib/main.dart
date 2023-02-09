import 'package:flutter/material.dart';
import 'package:noteapp/app/auth/login.dart';
import 'package:noteapp/app/auth/signup.dart';
import 'package:noteapp/app/home.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "login",
      routes: {
        "login": (context) => Login(),
        "signup": (context) => SignUp(),
        "home": (context) => Home(),
      },
    );
  }
}
