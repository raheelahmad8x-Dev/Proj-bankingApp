import 'package:architectures/Views/source/App_views/home_screens/Figma-home-screen.dart';
import 'package:architectures/Views/utills/constants/Dialog.dart';
import 'package:architectures/Views/utills/constants/Radio-button.dart';
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
        body:BottomNav()
      ),
    );
  }
}




