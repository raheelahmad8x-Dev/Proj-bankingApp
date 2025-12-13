import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/Text-widget.dart';

class HomeScreen_figma extends StatefulWidget {
  const HomeScreen_figma({super.key});

  @override
  State<HomeScreen_figma> createState() => _HomeScreen_figmaState();
}

class _HomeScreen_figmaState extends State<HomeScreen_figma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(
          backgroundColor:Color(0xff3629B7),
          title:Text('9:09',style:GoogleFonts.poppins(color:Colors.white,fontSize: 12),),
          actions: [
            Icon(Icons.signal_cellular_alt,color:Colors.white,size: 16,),
            SizedBox(width:5,),
            Icon(Icons.signal_wifi_4_bar_rounded,color:Colors.white,size: 16,),
            SizedBox(width:5,),
            Icon(Icons.rectangle,color:Colors.white,size: 16,),
            SizedBox(width:10,)
          ],
        ),
      body: Column(
        children: [
          Expanded(
              child:Container(
            height:double.infinity,width:double.infinity,
                color:Color(0xff3629B7),
                child:Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: CircleAvatar(backgroundImage:AssetImage('assets/images/person.png'),),
                          ),
                          TextWidgets(text: 'Hi,Raheel Ahmed',style:GoogleFonts.poppins(fontSize:20,fontWeight:FontWeight.w500,color:Colors.white)),
                          Spacer(),
                          IconButton(onPressed: (){}, icon:Icon(Icons.notifications,color:Colors.white,)),
                          SizedBox(width:10,),
                        ],
                      ),
                      Container(
                        width:double.infinity,height:508,
                        decoration:BoxDecoration(
                          color:Color(0xffFFFFFF),
                          borderRadius:BorderRadius.only(
                              topLeft:Radius.circular(18),
                              topRight:Radius.circular(18)
                          )
                        ),
                        child:SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height:20,),
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top:40.0),
                                    child: Center(child:Container(height:195,width:227,
                                    decoration:BoxDecoration(color:Color(0xff5655B9),borderRadius:BorderRadius.circular(22)),
                                    )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 22.0),
                                    child: Center(child:Container(height:198,width:287,decoration:BoxDecoration(
                                        color:Color(0xffFF4267),borderRadius:BorderRadius.circular(22))),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3.0),
                                    child: Center(child:Container(height:200,width:341,
                                    decoration:BoxDecoration(color:Color(0xffDAEBFF),borderRadius:BorderRadius.circular(22)),
                                      child:Column(
                                        crossAxisAlignment:CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(14.0),
                                            child: TextWidgets(text: 'John Smiths',style:GoogleFonts.poppins(fontWeight:FontWeight.w400,fontSize:24),),
                                          ),
                                          SizedBox(height:30,), 

                                          Padding(
                                            padding: const EdgeInsets.all(14.0),
                                            child: TextWidgets(text: 'Amazon Platinum',style:GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:14),),
                                          )
                                        ],
                                      ),
                                    )
                                    ),
                                  ),
                                ],
                              )
                              // Container(
                              //   height: 327,width:221,
                              //   decoration:BoxDecoration(
                              //       image:DecorationImage(image:AssetImage('assets/images/cards.png'))),
                              // )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
          ),

        ],
      )

    );
  }
}
