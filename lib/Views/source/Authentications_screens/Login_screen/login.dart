import 'package:architectures/Views/components/Text-widget.dart';
import 'package:architectures/Views/components/button-widget.dart';
import 'package:architectures/Views/utills/constants/assets.dart';
import 'package:architectures/Views/utills/constants/texts.dart';
import 'package:flutter/material.dart';

class LoginScreens extends StatefulWidget {
  const LoginScreens({super.key});

  @override
  State<LoginScreens> createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(children: [
        TextWidgets(text: Apptexts.login_text),
        TextWidgets(text: Apptexts.appname),
        ButtonWidgets(text: Apptexts.login),
        ButtonWidgets(text: Apptexts.signup),
        Image(image: AssetImage(Appdata.loginImage))

      ],),
    );
  }
}
