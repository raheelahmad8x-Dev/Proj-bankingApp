import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../model/Figma-grid-model.dart';
import '../../../components/Text-widget.dart';

class SearchScr extends StatefulWidget {
  const SearchScr({super.key});

  @override
  State<SearchScr> createState() => _SearchScrState();
}

class _SearchScrState extends State<SearchScr> {
  List<Model> Search=
  [
    Model(name: 'Branch', image: 'assets/icons/homeicons/GroupSearch.png',subTitle:'Search for Branch'),
    Model(name: 'Branch', image: 'assets/icons/homeicons/sood.png',subTitle:'Search for Branch'),
    Model(name: 'Branch', image: 'assets/icons/homeicons/exhangeRate.png',subTitle:'Search for Branch'),
    Model(name: 'Branch', image: 'assets/icons/homeicons/exhchange.png',subTitle:'Search for Branch'),
  ];
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children:
        [
          ListView.builder(
              itemCount:Search.length,
              itemBuilder: (context,index)
              {
                return Container(
                  width:double.infinity,
                  height:110,
                  decoration:BoxDecoration(borderRadius:BorderRadius.circular(12),border:Border.all()),
                  child:ListTile(
                    leading:TextWidgets(text:Search[index].name.toString(),style:GoogleFonts.poppins(fontWeight:FontWeight.w600,fontSize:16),),
                    subtitle:TextWidgets(text:Search[index].subTitle.toString(),style:GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:12),),
                  ),
                );
              })
        ],
      ),
    );
  }
}