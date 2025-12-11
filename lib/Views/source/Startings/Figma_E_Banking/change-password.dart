import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../components/Text-widget.dart';
import '../../../utills/constants/assets.dart';
import '../onborading_screens/Onboarding-screen.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {

  TextEditingController n1=TextEditingController();
  TextEditingController n2=TextEditingController();
  bool _obscurePassword = true;
  bool obscurePassword2 = true;
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
            TextWidgets(text: 'Change Password',style:GoogleFonts.poppins(fontWeight:FontWeight.w600,fontSize: 20),),
          ],),
          SizedBox(height:40,),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextWidgets(text: 'Type your new password',style:GoogleFonts.poppins(fontWeight:FontWeight.w600,fontSize:12,color:Color(0xff979797)),),
          ),
          Padding(
              padding: const EdgeInsets.all(13.0),
              child:Container(
                decoration:BoxDecoration(
                    border:Border.all(color:Color(0xffCBCBCB)),
                    borderRadius:BorderRadius.circular(18)
                ),
                child:TextFormField(
                  obscureText:_obscurePassword,
                  controller:n1,
                  decoration:InputDecoration(
                      suffixIcon:IconButton(onPressed: (){
                        setState(() {
                          _obscurePassword=!_obscurePassword;
                        });
                      }, icon:Icon(_obscurePassword?Icons.visibility_off:Icons.visibility)),
                      hintText:'',
                      hintStyle:GoogleFonts.poppins(fontWeight:FontWeight.w600,fontSize: 12),
                      border:InputBorder.none
                  ),
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextWidgets(text: 'Confirm your new password',style:GoogleFonts.poppins(fontWeight:FontWeight.w600,fontSize:12,color:Color(0xff979797)),),
          ),
          Padding(
              padding: const EdgeInsets.all(13.0),
              child:Container(
                decoration:BoxDecoration(
                    border:Border.all(color:Color(0xffCBCBCB)),
                    borderRadius:BorderRadius.circular(18)
                ),
                child:TextFormField(
                  obscureText:obscurePassword2,
                  controller:n2,
                  decoration:InputDecoration(
                      suffixIcon:IconButton(onPressed: (){
                        setState(() {
                          obscurePassword2=!obscurePassword2;
                        });
                      }, icon:Icon(obscurePassword2?Icons.visibility_off:Icons.visibility)),
                      hintText:'',
                      hintStyle:GoogleFonts.poppins(fontWeight:FontWeight.w600,fontSize: 12),
                      border:InputBorder.none
                  ),
                ),
              )
          ),
          Center(
            child:
            InkWell(
              onTap:(){},
              child: Container(
                height: 44,width:295,
                decoration:BoxDecoration(color:Color(0xff3629B7),borderRadius:BorderRadius.circular(18)
                ),
                child:Center(
                  child:TextWidgets(text: 'Change password',style:GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:16,color:Color(0xffFFFFFF)),),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
