import 'package:architectures/model/Figma-grid-model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/Text-widget.dart';

class HomeScreen_figma extends StatefulWidget {
  const HomeScreen_figma({super.key});

  @override
  State<HomeScreen_figma> createState() => _HomeScreen_figmaState();
}

class _HomeScreen_figmaState extends State<HomeScreen_figma> {

  List<Model> data=[
    Model(name: 'Account and card', image:'assets/icons/homeicons/wallet.png',subTitle:''),
    Model(name: 'Transfer', image:'assets/icons/homeicons/sync.png',subTitle: ''),
    Model(name: 'withdraw', image:'assets/icons/homeicons/Group.png',subTitle: ''),
    Model(name: 'Mobile pre-paid', image:'assets/icons/homeicons/banking.png',subTitle: ''),
    Model(name: 'Pay the bill', image:'assets/icons/homeicons/reciept.png',subTitle: ''),
    Model(name: 'save online', image:'assets/icons/homeicons/pig.png',subTitle: ''),
    Model(name: 'Credit Card', image:'assets/icons/homeicons/credit2.png',subTitle: ''),
    Model(name: 'Transaction Report', image:'assets/icons/homeicons/file1.png',subTitle: ''),
    Model(name: 'Beneficiary', image:'assets/icons/homeicons/contacts.png',subTitle: ''),
  ];


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
      body:
      Column(
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
                        width:double.infinity,height:450,
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
                              Container(
                                height: 227,width:321,
                                decoration:BoxDecoration(
                                    image:DecorationImage(image:AssetImage('assets/images/cards.png'),fit:BoxFit.cover)),
                              ),
                              SizedBox(height:500,
                                child: GridView.builder(

                                    itemCount:data.length,
                                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing:10),
                                    itemBuilder:(context,index)
                                    {
                                      return Container(
                                        child:Padding(
                                          padding: const EdgeInsets.all(18.0),
                                          child: Column(
                                            mainAxisSize:MainAxisSize.min,
                                            children: [
                                              CircleAvatar(backgroundImage:AssetImage(data[index].image.toString(),),),
                                              Text(data[index].name.toString(),style:GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w500),)
                                            ],
                                          ),
                                        ),
                                      );

                                    }),
                              ),
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


class BottomNav extends StatefulWidget {
   BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  final screens=[HomeScreen_figma(),SearchScr(),Text('2'),Text('3')
  ];
  int index=0;

  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:BottomNavigationBar(
            currentIndex:index,
            onTap: (value){
              setState(() {
                index=value;
                setState(() {

                });
              });
            },
            backgroundColor: Colors.black,
            selectedItemColor:Color(0xff3629B7),
            unselectedItemColor: Colors.grey,
            unselectedLabelStyle: GoogleFonts.poppins(color:Colors.pink),
            items:[
              BottomNavigationBarItem(icon: Icon(Icons.home_filled),label:'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.mail_outline_rounded),label: 'Messages'),
              BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings',
              ),
            ]
        ),
      body:screens.elementAt(index),
    );
  }
}

class SearchScr extends StatefulWidget {
  const SearchScr({super.key});

  @override
  State<SearchScr> createState() => _SearchScrState();
}

class _SearchScrState extends State<SearchScr> {
  @override

  List<Model> Search=
  [
    Model(name: 'Branch', image: 'assets/icons/homeicons/GroupSearch.png',subTitle:'Search for Branch'),
    Model(name: 'Branch', image: 'assets/icons/homeicons/sood.png',subTitle:'Search for Branch'),
    Model(name: 'Branch', image: 'assets/icons/homeicons/exhangeRate.png',subTitle:'Search for Branch'),
    Model(name: 'Branch', image: 'assets/icons/homeicons/exhchange.png',subTitle:'Search for Branch'),
  ];
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
                );
              })
        ],
      ),
    );
  }
}
