import 'package:flutter/material.dart';

class HomeScreen_figma extends StatefulWidget {
  const HomeScreen_figma({super.key});

  @override
  State<HomeScreen_figma> createState() => _HomeScreen_figmaState();
}

class _HomeScreen_figmaState extends State<HomeScreen_figma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(children[
        Expanded(
          child: Container(
              height:double.infinity,width:double.infinity,
              color:Color(0xff3629B7),
            ),
        ),
        ]
      ),

    );
  }
}
