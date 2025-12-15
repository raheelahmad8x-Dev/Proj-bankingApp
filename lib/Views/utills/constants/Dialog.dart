import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      appBar:AppBar(
        title:Text('Dialog Box',style:GoogleFonts.poppins(fontSize:25),),
      ),
      body:Center(child:
      Container(
        decoration:BoxDecoration(color:Colors.blue,borderRadius:BorderRadius.circular(22)),
        child: TextButton(
            onPressed: (){
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
                  content:Text('Lets chill together'),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context,);
                    }, child:Text('No')),
                    TextButton(onPressed: (){}, child:Text('Yes')),
                  ],
                );
              });
        }, child:Text('Notifications',style:GoogleFonts.poppins(color:Colors.black),)),
      ),
      ),
    );
  }
}