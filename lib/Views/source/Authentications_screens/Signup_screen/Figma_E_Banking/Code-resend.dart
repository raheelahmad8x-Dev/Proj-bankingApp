import 'package:architectures/Views/source/Authentications_screens/Signup_screen/Figma_E_Banking/change-password.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../components/Text-widget.dart';
import '../../../../utills/constants/assets.dart';
import '../../../Startings/onborading_screens/Onboarding-screen.dart';

class Code_Resend extends StatefulWidget {
  const Code_Resend({super.key});

  @override
  State<Code_Resend> createState() => _Code_ResendState();
}

class _Code_ResendState extends State<Code_Resend> {
  TextEditingController n1=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Row(children: [
            IconButton(onPressed: (){Navigator.pop(context,FigmaApp());
            }, icon: Icon(Appdata.backicon)),
            SizedBox(width:10,),
            TextWidgets(text: 'Forgot Password',style:GoogleFonts.poppins(fontWeight:FontWeight.w600,fontSize: 20),),
          ],),
          SizedBox(height:40,),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextWidgets(text: 'Type a code',style:GoogleFonts.poppins(fontWeight:FontWeight.w600,fontSize:12),),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child:
            Row(
              children: [
                Container(height:44,width:183,
                decoration:BoxDecoration(
                    border:Border.all(color:Color(0xffCBCBCB)),
                    borderRadius:BorderRadius.circular(18)
                ),
                  child:TextFormField(
                    keyboardType:TextInputType.number,
                    controller:n1,
                    decoration:InputDecoration(border:
                    InputBorder.none,
                      hintText:'code',
                      hintStyle:GoogleFonts.poppins(fontSize: 14,fontWeight:FontWeight.w500,color:Color(0xffCACACA)),
                    ),
                  )
                ),
                SizedBox(width:10,),
                Container(height:44,width:100,
                decoration:BoxDecoration(borderRadius:BorderRadius.circular(18),color:Color(0xff3629B7)
                ),
                  child:Center(child:TextWidgets(text: 'Resend',style:GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:14,color:Color(0xffFFFFFF)),),),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextWidgets(text: 'We texted you a code to verify your\nphone number(+92)3453298734',style:GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:14,color:Color(0xffCACACA)),),
          ),
          SizedBox(height:20,),
          Padding(padding: const EdgeInsets.all(13.0),
          child:TextWidgets(text: 'This code will expire in 10minutes after this\n'
              'message.if you do not get a message.',style:GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:14,color:Color(0xffCACACA)),),
          ),

          Padding(
            padding: const EdgeInsets.all(13.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)
                    {
                      return ChangePassword();
                    }
                )
                );
              },
              child: Container(
                height:44,width:double.infinity,
                decoration:BoxDecoration(borderRadius:BorderRadius.circular(18),color:Color(0xff3629B7),
                ),
                child:Center(child:TextWidgets(text: 'Change Password',style:GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:16,color:Color(0xffFFFFFF)),),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
