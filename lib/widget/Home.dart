import 'package:flutter/material.dart';
import 'package:freshroom/Data/Constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freshroom/screen/showcategory.dart';
import 'package:freshroom/screen/shownotification.dart';



class home extends StatefulWidget {
  static String id = 'Home';
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      body: Container(
        // color: Colors.amber,

        margin: EdgeInsets.only(left: 15,right: 10,top: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/logo.jpg'),fit: BoxFit.contain)
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: IconButton(icon: Icon(Icons.notifications_none_outlined), onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowNotification()),);

                    }),
                  ),

                  IconButton(icon: Icon(Icons.shopping_bag), onPressed: (){}),

                ],

              ),

              SizedBox(height: 5,),
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
                      ),
                    ),
                  ),

                ],
              ),

              Container(
                margin: EdgeInsets.only(left: 5,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: IconButton(icon: Icon(Icons.list),iconSize: 30,color: ksecondarycolor,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowCategory()),);
                      },
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/bed2.jpg'),fit: BoxFit.cover),
                        // color: Colors.black12,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/decor2.jpg'),fit: BoxFit.cover),
                        // color: Colors.black12,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/decor.jpg'),fit: BoxFit.cover),
                        // color: Colors.black12,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),

                  ],
                ),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('All Categories',style: Textt2.textStyle(ksecondarycolor, 12),),

                    Padding(
                      padding: const EdgeInsets.only(right: 17),
                      child: Text('Furniture',style: Textt2.textStyle(ksecondarycolor, 12),),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text('Decor',style: Textt2.textStyle(ksecondarycolor, 12),),
                    ),

                    Text('Furnishings',style: Textt2.textStyle(ksecondarycolor, 12),),





                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20),
                width: 350,
                height: 210,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(image: AssetImage('assets/room.jpg'),fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
                // color: Colors.amber,
                width: 350,
                height: 280,
                child: Row(
                  children: [
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Container(
                        width: 165,
                        height: 240,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex:2,
                              child: Container(
                                width: 165,
                                height: 110,
                                child: Stack(
                                  fit: StackFit.expand,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  overflow: Overflow.clip,
                                  children: [
                                    Container(
                                        color: Colors.black12,
                                        child: Image(image: AssetImage('assets/3seater.jpg'),fit: BoxFit.fill,)
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(bottom: 270,left: 130),
                                      child: IconButton(icon: Icon(FontAwesomeIcons.heart),
                                        color: kprimarycolor,
                                        onPressed: (){
                                          setState(() {
                                            Navigator.pop(context);
                                          });
                                        },

                                      ),
                                    ),


                                  ],
                                ),
                              ),),

                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex:2,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 12),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('3 Seater Sofa',style: Textt2.textStyle(ksecondarycolor, 14),),
                                        Text(new String.fromCharCodes(new Runes('\u0024128'),),style: Textt1.textStyle(kprimarycolor, 14),),
                                      ],
                                    ),),
                                  ),

                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(icon: Icon(FontAwesomeIcons.shoppingBag),
                                            color: kprimarycolor,
                                            onPressed: (){}),
                                      ],
                                    ),
                                  ),

                                ],
                              ),),
                          ],
                        ),
                      ),
                    ),

                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Container(
                        width: 165,
                        height: 240,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex:2,
                              child: Container(
                                width: 165,
                                height: 110,
                                child: Stack(
                                  fit: StackFit.expand,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  overflow: Overflow.clip,
                                  children: [
                                    Container(
                                        color: Colors.black12,
                                        child: Image(image: AssetImage('assets/hanging.jpg'),fit: BoxFit.fill,)
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(bottom: 270,left: 130),
                                      child: IconButton(icon: Icon(FontAwesomeIcons.solidHeart),
                                        color: kqauatrlycolor,
                                        onPressed: (){
                                          setState(() {
                                            Navigator.pop(context);
                                          });
                                        },

                                      ),
                                    ),


                                  ],
                                ),
                              ),),

                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex:2,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 12),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Hanging Chair',style: Textt2.textStyle(ksecondarycolor, 14),),
                                          Text(new String.fromCharCodes(new Runes('\u0024100'),),style: Textt1.textStyle(kprimarycolor, 14),),
                                        ],
                                      ),),
                                  ),

                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(icon: Icon(FontAwesomeIcons.shoppingBag),
                                            color: kprimarycolor,
                                            onPressed: (){}),
                                      ],
                                    ),
                                  ),

                                ],
                              ),),
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
      ),
    ),);
  }
}
