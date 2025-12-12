import 'package:flutter/material.dart';

class HomeFigma extends StatefulWidget {
  const HomeFigma({super.key});

  @override
  State<HomeFigma> createState() => _HomeFigmaState();
}

class _HomeFigmaState extends State<HomeFigma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
         Container(
           height:double.infinity,width:double.infinity,
           color:Color(0xff3629B7),
         )
          
        ],
      ),
    );
  }
}
