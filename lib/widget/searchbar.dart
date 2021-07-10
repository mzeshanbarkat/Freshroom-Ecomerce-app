import 'package:flutter/material.dart';
import 'package:freshroom/Data/Constant.dart';
import 'package:suggestion_search_bar/suggestion_search_bar.dart';



class SearchBar extends StatefulWidget {
  static String id = 'searchbar';
  SearchBar({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          body: Container(
            margin: EdgeInsets.only(top: 25),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 350,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(

                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Icon(Icons.search,color: ksecondarycolor,),
                            ),
                            hintText: 'What are you looking for?',hintStyle: Textt1.textStyle(ksecondarycolor, 15),
                            suffixIcon: Icon(Icons.mic),
                          ),
                        ),
                      ),

                    ],
                  ),

                  Container(
                    width: 350,
                    height: 320,
                    // color: Colors.amber,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Recent Searches',style: Textt2.textStyle(ksecondarycolor, 15),),
                        Text('High leaving Wooden chairs',style: Textt1.textStyle(kprimarycolor, 12),),
                        Text('Double Decor Bed',style: Textt1.textStyle(kprimarycolor, 12),),
                        Text('Decorative Kitchen Set',style: Textt1.textStyle(kprimarycolor, 12),),

                        Container(
                          width: 110,
                          height: 30,
                          decoration: BoxDecoration(
                            // color: Colors.blue,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: kprimarycolor,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  margin:EdgeInsets.only(bottom: 20),
                                  child: IconButton(icon: Icon(Icons.cancel_outlined),iconSize: 13,color: kprimarycolor, onPressed: (){})),

                              Text('Clear',style: Textt1.textStyle(kprimarycolor, 12),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: 350,
                    height: 370,
                    // color: Colors.pinkAccent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Popular Searches',style: Textt2.textStyle(ksecondarycolor, 15),),

                        Expanded(
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Stack(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    overflow: Overflow.clip,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        width: 160,
                                        height: 150,
                                        decoration: BoxDecoration(
                                          // color: Colors.amber,
                                          image: DecorationImage(image: AssetImage('assets/room.jpg'),fit: BoxFit.cover,colorFilter: ColorFilter.mode(kprimarycolor.withOpacity(0.3), BlendMode.dstOut),),
                                          borderRadius: BorderRadius.circular(15),

                                          gradient: LinearGradient(
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                              colors: [ksecondarycolor,ksecondarycolor,]),

                                        ),
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(top:55,left: 30),
                                        child: Column(
                                          children: [
                                            Text('Drawing Room',style: Textt2.textStyle(Colors.white, 15),),

                                            Padding(
                                              padding: const EdgeInsets.only(top: 30),
                                              child: Icon(Icons.search,color: Colors.white,size: 30,),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],

                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Stack(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    overflow: Overflow.clip,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        width: 160,
                                        height: 150,
                                        decoration: BoxDecoration(
                                          // color: Colors.amber,
                                          image: DecorationImage(image: AssetImage('assets/decor2.jpg'),fit: BoxFit.cover,colorFilter: ColorFilter.mode(kprimarycolor.withOpacity(0.3), BlendMode.dstOut),),
                                          borderRadius: BorderRadius.circular(15),

                                          gradient: LinearGradient(
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                              colors: [ksecondarycolor,ksecondarycolor,]),

                                        ),
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(top:55,left: 30),
                                        child: Column(
                                          children: [
                                            Text('Decor Lights',style: Textt2.textStyle(Colors.white, 15),),

                                            Padding(
                                              padding: const EdgeInsets.only(top: 30),
                                              child: Icon(Icons.search,color: Colors.white,size: 30,),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],

                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Stack(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    overflow: Overflow.clip,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        width: 160,
                                        height: 150,
                                        decoration: BoxDecoration(
                                          // color: Colors.amber,
                                          image: DecorationImage(image: AssetImage('assets/bed2.jpg'),fit: BoxFit.cover,colorFilter: ColorFilter.mode(kprimarycolor.withOpacity(0.3), BlendMode.dstOut),),
                                          borderRadius: BorderRadius.circular(15),

                                          gradient: LinearGradient(
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                              colors: [ksecondarycolor,ksecondarycolor,]),

                                        ),
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(top:55,left: 30),
                                        child: Column(
                                          children: [
                                            Text('Double Bed',style: Textt2.textStyle(Colors.white, 15),),

                                            Padding(
                                              padding: const EdgeInsets.only(top: 30),
                                              child: Icon(Icons.search,color: Colors.white,size: 30,),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],

                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Stack(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    overflow: Overflow.clip,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        width: 160,
                                        height: 150,
                                        decoration: BoxDecoration(
                                          // color: Colors.amber,
                                          image: DecorationImage(image: AssetImage('assets/chair2.jpg'),fit: BoxFit.cover,colorFilter: ColorFilter.mode(kprimarycolor.withOpacity(0.3), BlendMode.dstOut),),
                                          borderRadius: BorderRadius.circular(15),

                                          gradient: LinearGradient(
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                              colors: [ksecondarycolor,ksecondarycolor,]),

                                        ),
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(top:55,left: 30),
                                        child: Column(
                                          children: [
                                            Text('Drawing Room',style: Textt2.textStyle(Colors.white, 15),),

                                            Padding(
                                              padding: const EdgeInsets.only(top: 30),
                                              child: Icon(Icons.search,color: Colors.white,size: 30,),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],

                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
      ),
    );
  }
}



