import 'package:flutter/material.dart';
import 'package:loginandsignup/Screens/login.dart';
import 'package:loginandsignup/Screens/signUp.dart';
import 'package:loginandsignup/Screens/SignUp1.dart';
import 'package:loginandsignup/Screens/login1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login and SignUp",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      // home: const LogInPage(),
      //  home: const SignUpPage(),
      //home: SignUp1(),
      home: LogIn1(),
    );
  }
}
