import 'package:flutter/material.dart';

import '../../../utills/constants/assets.dart';
import '../onborading_screens/Onboarding-screen.dart';

class Successfully_Changed extends StatefulWidget {
  const Successfully_Changed({super.key});

  @override
  State<Successfully_Changed> createState() => _Successfully_ChangedState();
}

class _Successfully_ChangedState extends State<Successfully_Changed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
            Center(
              child: Container(
                height:216,width:327,
              decoration:BoxDecoration(
                //color:Colors.red,
                  image:DecorationImage(image: AssetImage('assets/images/3.png')),
              ),
                        ),
            ),
        ],
      ),
    );
  }
}
