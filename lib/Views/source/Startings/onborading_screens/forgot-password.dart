import 'package:architectures/Views/utills/constants/assets.dart';
import 'package:flutter/material.dart';

class ForgotPassword_figma extends StatefulWidget {
  const ForgotPassword_figma({super.key});

  @override
  State<ForgotPassword_figma> createState() => _ForgotPassword_figmaState();
}

class _ForgotPassword_figmaState extends State<ForgotPassword_figma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Appdata.backicon))
            ],
          )
        ],
      ),
    );
  }
}
