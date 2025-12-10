import 'package:architectures/Views/source/Authentications_screens/Login_screen/login.dart';
import 'package:architectures/Views/source/Startings/onborading_screens/Onboarding-screen.dart';
import 'package:architectures/Views/source/Startings/onborading_screens/figma2.dart';
import 'package:architectures/Views/source/Startings/onborading_screens/forgot-password.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: ForgotPassword_figma(),
      ),
    );
  }
}

