import 'package:architectures/Views/components/Text-widget.dart';
import 'package:architectures/Views/source/Startings/Figma_E_Banking/figma2.dart';
import 'package:architectures/Views/source/Startings/Figma_E_Banking/forgot-password.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FigmaApp extends StatefulWidget {
  const FigmaApp({super.key});


  @override

  State<FigmaApp> createState() => _FigmaAppState();
}

class _FigmaAppState extends State<FigmaApp> {
  final TextEditingController n1=TextEditingController();
  final TextEditingController n2=TextEditingController();


  @override


  Widget build(BuildContext context) {
    return Scaffold(appBar:
    AppBar(
      backgroundColor:Color(0xff3629B7),
      title:Text('9:09',style:GoogleFonts.poppins(color:Colors.white,fontSize: 12),),
      actions: [
        Icon(Icons.signal_cellular_alt,color:Colors.white,size: 16,),
        Icon(Icons.signal_wifi_4_bar_rounded,color:Colors.white,size: 16,),
        Icon(Icons.rectangle,color:Colors.white,size: 16,),
        SizedBox(width:10,)

      ],
    ),
        body:Column(
            children: [
              Expanded(child:
              Container(height: double.infinity,width:double.infinity,
                color: Color(0xff3629B7),
                child:Column(children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){},icon:Icon(Icons.arrow_back_ios_new_rounded,color:Colors.white,),),
                      TextWidgets(text: 'Sign In',style:GoogleFonts.poppins(fontWeight:FontWeight.w600,fontSize:20),)
                    ],
                  ),
                  SizedBox(height:0,),
                  Container(
                    height:544,
                    width:double.infinity,
                    decoration:BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.only(
                            topLeft:Radius.circular(22),topRight:Radius.circular(22)
                        )
                    ),
                    child:Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0,top:10.0),
                          child: Column(
                            children: [
                              Text('Welcome Back',style:GoogleFonts.poppins(fontWeight:FontWeight.w600,color:Color(0xff3629B7),fontSize:24,),),
                              Text('Hello there, sign in to continue',style:GoogleFonts.poppins(color:Color(0xff343434),fontSize:12,fontWeight:FontWeight.w500),)
                            ],
                          ),
                        ),
                        Stack(
                          children: [

                            Center(
                              child: Padding(
                                  padding: const EdgeInsets.only(top: 40.0),
                                  child: Container(height:150,width: 150,
                                    decoration:BoxDecoration(
                                        color:Color(0xffE5E2FF),
                                        borderRadius:BorderRadius.circular(100),
                                        image:DecorationImage(image: AssetImage('lock-figma.png'))),)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top:30,
                                  left: 210.0),
                              child: Container(height:10,width:10,
                                decoration:BoxDecoration(borderRadius:BorderRadius.circular(500),color:Color(0xff3629B7)),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top:100,
                                  left: 140.0),
                              child: Container(height:10,width:10,
                                decoration:BoxDecoration(borderRadius:BorderRadius.circular(500),color:Color(0xff52D5BA)),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top:160,
                                  left: 190.0),
                              child: Container(height:20,width:20,
                                decoration:BoxDecoration(borderRadius:BorderRadius.circular(500),color:Color(0xffFFAF2A)),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top:160,
                                  left: 320.0),
                              child: Container(height:10,width:10,
                                decoration:BoxDecoration(borderRadius:BorderRadius.circular(500),color:Color(0xff0890FE)),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top:60,
                                  left: 335.0),
                              child: Container(height:25,width:25,
                                decoration:BoxDecoration(borderRadius:BorderRadius.circular(500),color:Color(0xffFF4267)),),
                            ),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Container(
                            height:44,width:double.infinity,
                            decoration:BoxDecoration(
                                border:Border.all(color:Colors.grey),
                                borderRadius:BorderRadius.circular(16)

                            ),
                            child:TextFormField(
                              controller:n1,
                              decoration:InputDecoration(
                                  hintText:'Name',
                                  hintStyle: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:14,color:Color(0xffCACACA)),
                                  border:InputBorder.none
                              ),

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Container(
                            height:44,width:double.infinity,
                            decoration:BoxDecoration(
                                border:Border.all(color:Colors.grey),
                                borderRadius:BorderRadius.circular(16)

                            ),
                            child:TextFormField(
                              controller:n2,
                              decoration:InputDecoration(
                                  suffixIcon:Icon(Icons.keyboard_arrow_down_rounded,color:Color(0xffCACACA),),
                                  hintText:'password',
                                  hintStyle: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:14,color:Color(0xffCACACA)),
                                  border:InputBorder.none
                              ),

                            ),
                          ),
                        ),
                        Row(
                            children: [
                              Spacer(),
                              InkWell(
                                  onTap: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (context){
                                      return ForgotPassword_figma();
                                    }));
                                  },
                                  child: Text('forgot password',style:GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:12,color:Color(0xffCACACA)),)),
                              SizedBox(width:10,)
                            ]
                        ),
                        SizedBox(height:20,),
                        Center(child:Icon(Icons.fingerprint,color:Color(0xff3629B7),size:64,),),
                        Row(
                          children: [
                            Spacer(),
                            Text('Don"t have an account?',style:GoogleFonts.poppins(fontWeight:FontWeight.w400,fontSize:12),
                            ),
                            InkWell(
                                onTap: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context){
                                    return FigmaClass2();
                                  }));
                                },
                                child: Text('Signup',style:GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize:12),)),
                            Spacer()
                            // Center(child: Text('Signup',style:GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize:12),))
                          ],
                        ),
                        //

                      ],),

                  ),

                ],),
              )
              ),
            ],
            ),
        );
    }
}