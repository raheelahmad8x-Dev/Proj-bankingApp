import 'package:architectures/Views/components/Text-widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'forgot-password.dart';

class FigmaClass2 extends StatefulWidget {
  const FigmaClass2({super.key});

  @override
  State<FigmaClass2> createState() => _FigmaClass2State();
}
// hi there

class _FigmaClass2State extends State<FigmaClass2> {

  final TextEditingController n1=TextEditingController();
  final TextEditingController n2=TextEditingController();
  final TextEditingController n3=TextEditingController();
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:
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
      body:Column(
        children: [
          Expanded(child:
          Container(height:double.infinity,width:double.infinity,
          color:Color(0xff3629B7),
            child:Column(
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){},icon:Icon(Icons.arrow_back_ios_new_rounded,color:Colors.white,),),
                    TextWidgets(text: 'Sign Up',style:GoogleFonts.poppins(fontSize:20,fontWeight:FontWeight.w600,color:Colors.white))
                  ],
                ),
                SizedBox(height:10,),
                Container(height:534,width:double.infinity,
                  decoration:BoxDecoration(
                      color:Colors.white,
                      borderRadius:BorderRadius.only(
                          topLeft:Radius.circular(22),topRight:Radius.circular(22)
                      )
                  ),
                  child:SingleChildScrollView(
                    child:   Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextWidgets(
                          text: 'Welcome to us,',
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize:24,color:Color(0xff281C9D)),
                        ),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0,left:15),
                          child: TextWidgets(
                            text: 'Hello there,create New account',
                            style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize:12,color:Color(0xff343434)),
                          ),
                        ),
                        Center(child:
                        Container(
                          height:165,width:213,
                          decoration:BoxDecoration(image:DecorationImage(image: AssetImage('assets/images/2.png'))
                          ),
                        ),
                        ),
                    
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height:46,width:double.infinity,
                            decoration:BoxDecoration(
                                border:Border.all(color:Colors.grey),
                                borderRadius:BorderRadius.circular(16)
                    
                            ),
                            child:TextFormField(
                              controller:n1,
                              decoration:InputDecoration(
                                  hintText: 'Name',
                                  hintStyle: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:14,color:Color(0xffCACACA)),
                                  border:InputBorder.none
                              ),
                    
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height:46,width:double.infinity,
                            decoration:BoxDecoration(
                                border:Border.all(color:Colors.grey),
                                borderRadius:BorderRadius.circular(16)
                    
                            ),
                            child:TextFormField(
                              controller:n2,
                              decoration:InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:14,color:Color(0xffCACACA)),
                                  border:InputBorder.none
                              ),
                    
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height:46,width:double.infinity,
                            decoration:BoxDecoration(
                                border:Border.all(color:Colors.grey),
                                borderRadius:BorderRadius.circular(16)
                    
                            ),
                            child:TextFormField(
                              obscureText: _obscurePassword,
                              controller:n3,
                              decoration:InputDecoration(
                                suffixIcon:IconButton(onPressed: (){
                                  setState(() {
                                    _obscurePassword=!_obscurePassword;
                                  });
                                }, icon:Icon(_obscurePassword?Icons.visibility_off:Icons.visibility)),
                                  hintText: 'password',
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
                        Row(
                          children: [
                            InkWell(
                              onTap:(){},
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Container(
                                  width:24,height: 24,
                                  decoration:BoxDecoration(
                                      borderRadius:BorderRadius.circular(8),
                                      border:Border.all(color:Color(0xffBFBFBF))),
                                ),
                              ),
                            ),
                            SizedBox(width:10,),
                            TextWidgets(text: 'By Creating an account your agree\nto our Term and conditions',style:GoogleFonts.lato(fontWeight:FontWeight.w900,fontSize:11.99),)
                          ],
                        ),
                        Center(child:Container(
                          height:44,width:327,
                          decoration:BoxDecoration(
                              color:Color(0xff3629B7),
                              borderRadius:BorderRadius.circular(18)
                          ),
                          child:Center(child:TextWidgets(text: 'Sign up',style:GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:16,color:Color(0xffFFFFFF)),),),
                        ),)
                    
                    ],),
                  ),
                ),
              ],
            ),
          ),
          ),
        ],
      ),
    );
  }
}
