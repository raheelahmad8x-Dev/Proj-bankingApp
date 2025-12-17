import 'package:flutter/material.dart';


class BranchFigma extends StatefulWidget {
  const BranchFigma({super.key});

  @override
  State<BranchFigma> createState() => _BranchFigmaState();
}

class _BranchFigmaState extends State<BranchFigma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Container(height:414,width:double.infinity,
            decoration:BoxDecoration(image:DecorationImage(image:AssetImage('assets/icons/homeicons/Map.png'),fit:BoxFit.cover ))
          )
        ],
      )
    );
  }
}
