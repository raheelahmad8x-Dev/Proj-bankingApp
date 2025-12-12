import 'package:architectures/Views/components/Text-widget.dart';
import 'package:architectures/Views/source/Authentications_screens/Signup_screen/Figma_E_Banking/figma2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utills/constants/assets.dart';
import '../../../Startings/onborading_screens/Onboarding-screen.dart';

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
                height:216,width:double.infinity,
              decoration:BoxDecoration(
                //color:Colors.red,
                  image:DecorationImage(image: AssetImage('assets/images/3.png')),
              ),
              ),
            ),
          SizedBox(height: 30,),
          TextWidgets(text:'Change password successfully',style:GoogleFonts.poppins(fontWeight:FontWeight.w600,fontSize:16,color:Color(0xff3629B7)),),
          SizedBox(height:30,),
          TextWidgets(text:'You have successfully change password\nplease use the new password when sign in',style:GoogleFonts.poppins(fontSize:14,color:Color(0xff343434),fontWeight:FontWeight.w500),),
          SizedBox(height:30,),

          Padding(
            padding: const EdgeInsets.all(13.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(
                    builder: (context)
                    {
                      return FigmaClass2();
                    })
                );
              },
              child: Container(height:44,width:double.infinity,
              decoration:BoxDecoration(
                  color:Color(0xff3629B7),
                  borderRadius:BorderRadius.circular(18)),
                  child:Center(child:TextWidgets(text:'Ok',style:GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:16,color:Color(0xffFFFFFF)),),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
