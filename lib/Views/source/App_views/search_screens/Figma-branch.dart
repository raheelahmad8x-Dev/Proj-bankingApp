import 'package:architectures/Views/components/Text-widget.dart';
import 'package:architectures/model/Figma-grid-model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class BranchFigma extends StatefulWidget {
  const BranchFigma({super.key});

  @override
  State<BranchFigma> createState() => _BranchFigmaState();
}

class _BranchFigmaState extends State<BranchFigma> {
  TextEditingController n1=TextEditingController();
  List<Model> branch=[
    Model(name: 'Bank 1658 Union Street', image: '', subTitle:''),
    Model(name: 'Bank Secaucus', image: '', subTitle:''),
    Model(name: 'Bank 1657 Riverside Drive', image: '', subTitle:''),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Container(
              height:350,width:double.infinity,
            decoration:BoxDecoration(image:DecorationImage(image:AssetImage('assets/icons/homeicons/Map.png'),fit:BoxFit.cover )),
          ),
          Container(
            height:290,width:double.infinity,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(22),
            ),
            child:Column(children: [
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  height:48,width:double.infinity,
                  decoration:BoxDecoration(borderRadius:BorderRadius.circular(18),border:Border.all(color:Color(0xffBFBFBF))),
                  child:Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width:8,),
                      TextWidgets(text: 'Bank',style:GoogleFonts.poppins(fontSize: 14,fontWeight:FontWeight.w500),),
                      Spacer(),
                      Icon(Icons.cancel),
                      SizedBox(width:10,)
                    ],
                  )
                ),
              ),
              ListTile(
                leading:Icon(Icons.location_on,color:Colors.deepPurple,),
                title:TextWidgets(text: 'Bank 1656 Union Street ',style:GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w500),),
                trailing:TextWidgets(text: '50m'),
              ),
              ListTile(
                leading:Icon(Icons.location_on,color:Colors.deepPurple,),
                title:TextWidgets(text: 'Bank Secaucus ',style:GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w500),),
                trailing:TextWidgets(text: '1.2km'),
              ),
              ListTile(
                leading:Icon(Icons.location_on,color:Colors.deepPurple,),
                title:TextWidgets(text: 'Bank 1657 Riverside Drive ',style:GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w500),),
                trailing:TextWidgets(text: '5.3km'),
              ),
              ListTile(
                leading:Icon(Icons.location_on,color:Colors.deepPurple,),
                title:TextWidgets(text: 'Bank Rutherford ',style:GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w500),),
                trailing:TextWidgets(text: '70m'),
              ),


            ],),
          )
        ],
      )
    );
  }
}
//----------------------------Interest----------------------------------

class InterestScreen extends StatefulWidget {
  const InterestScreen({super.key});

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  
  List<Model> inter=[
    Model(name: 'Individual Customers', image: '1m', subTitle: '4.50%'),
    Model(name: 'Corporate Customers', image: '2m', subTitle: '5.50%'),
    Model(name: 'Individual Customers', image: '1m', subTitle: '4.50%'),
    Model(name: 'Corporate Customers', image: '6m', subTitle: '2.50%'),
    Model(name: 'Individual Customers', image: '1m', subTitle: '4.50%'),
    Model(name: 'Corporate Customers', image: '8m', subTitle: '6.50%'),
    Model(name: 'Individual Customers', image: '1m', subTitle: '4.50%'),
    Model(name: 'Individual Customers', image: '1m', subTitle: '4.50%'),
    Model(name: 'Corporate Customers', image: '7m', subTitle: '6.80%'),
    Model(name: 'Individual Customers', image: '1m', subTitle: '4.80%'),
    Model(name: 'Individual Customers', image: '12m', subTitle: '5.90%'),
    Model(name: 'Individual Customers', image: '1m', subTitle: '4.80%'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed: (){Navigator.pop(context,);}, icon:Icon(Icons.arrow_back_ios_new_rounded)),
        title:TextWidgets(text: 'Interest rate',style:GoogleFonts.poppins(fontSize:20,fontWeight:FontWeight.w600),),
      ),
      body:SizedBox(
        child:ListView.builder(
            itemCount:inter.length,
            itemBuilder:(context,index)
            { return
              ListTile(
                leading:TextWidgets(text: inter[index].name.toString()),
                title:TextWidgets(text: inter[index].image.toString()),
                trailing:TextWidgets(text: inter[index].subTitle.toString()),
              );
            }),
      )
    );
  }
}

//

