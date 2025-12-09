import 'package:flutter/material.dart';

class ButtonWidgets extends StatelessWidget {

  final String text;
  const ButtonWidgets({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){}, child:Text(text));
  }
}
