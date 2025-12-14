import 'package:flutter/material.dart';

class Dialog extends StatefulWidget {
  const Dialog({super.key});

  @override
  State<Dialog> createState() => _DialogState();
}

class _DialogState extends State<Dialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child:
        TextButton(onPressed: (){
          showDialog(context: context,
              builder:(BuildContext context)
              {
                return AlertDialog(
                  title:  Text('Messages'),
                  content:Text('Go to hell'),
                );
              });
        }, child:Icon(Icons.download_rounded)),
        ),
    );
  }
}
