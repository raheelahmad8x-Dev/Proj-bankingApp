import 'package:architectures/Views/components/Text-widget.dart';
import 'package:architectures/Views/source/Authentications_screens/Signup_screen/Figma_E_Banking/Code-resend.dart';
import 'package:architectures/Views/source/Startings/onborading_screens/Onboarding-screen.dart';
import 'package:architectures/Views/source/Authentications_screens/Signup_screen/Figma_E_Banking/figma2.dart';
import 'package:architectures/Views/utills/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword_figma extends StatefulWidget {
  const ForgotPassword_figma({super.key});

  @override
  State<ForgotPassword_figma> createState() => _ForgotPassword_figmaState();
}

class _ForgotPassword_figmaState extends State<ForgotPassword_figma> {

  TextEditingController n1=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(onPressed: (){Navigator.pop(context,FigmaApp());
              }, icon: Icon(Appdata.backicon)),
              SizedBox(width:10,),
              TextWidgets(text: 'Forgot Password',style:GoogleFonts.poppins(fontWeight:FontWeight.w600,fontSize: 20),),
            ],
          ),
          SizedBox(height:40,),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextWidgets(text: 'Type your phone number',style:GoogleFonts.poppins(fontWeight:FontWeight.w600,fontSize:12),),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Container(
              decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(17),
                  border:Border.all(color:Color(0xffE8E8E8))),
              child:TextFormField(
                keyboardType:TextInputType.number,
                controller:n1,
                decoration:InputDecoration(border:
                InputBorder.none,
                  hintText:'(+92)',
                  hintStyle:GoogleFonts.poppins(fontSize: 14,fontWeight:FontWeight.w500,color:Color(0xffCACACA)),
                ),
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.all(13.0),
           child:
          TextWidgets(text: 'We texted you a code to verify your\nphone number',style:GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:14),)
          ),
          SizedBox(height:10,),
          Center(
            child: InkWell(
              onTap:(){
                Navigator.push(context,MaterialPageRoute(builder: (context){return Code_Resend();}));
              },
              child: Container(
                decoration:BoxDecoration(borderRadius:BorderRadius.circular(18),color:Color(0xff3629B7)
                ),
                height:44,width:295,
                child:Center(child: TextWidgets(text: 'Send',style:GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:16,color:Colors.white),)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
