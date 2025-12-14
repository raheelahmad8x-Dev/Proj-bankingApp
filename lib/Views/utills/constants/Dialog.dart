import 'package:flutter/material.dart';

class Dialog extends StatefulWidget {
  const Dialog({super.key});

  @override
  State<Dialog> createState() => _DialogState();
}

class _DialogState extends State<Dialog> {
  @override
  Widget build(BuildContext context) {
    return HomeClass();
  }
}

class HomeClass extends StatefulWidget {
  const HomeClass({super.key});

  @override
  State<HomeClass> createState() => _HomeClassState();
}

class _HomeClassState extends State<HomeClass> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Center(child:
      TextButton(onPressed: (){
        showDialog(context: context,
            builder:(BuildContext context)
            {
              return AlertDialog(
                title:  Row(
                  children: [
                    Text('Messages'),
                    Spacer(),
                    IconButton(onPressed: (){}, icon:Icon(Icons.cancel))
                  ],
                ),
                content:Text('Go to hell'),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context,);
                  }, child:Text('No')),
                  TextButton(onPressed: (){}, child:Text('Yes')),
                ],
              );
            });
      }, child:Text('data')),
      ),
    );
  }
}