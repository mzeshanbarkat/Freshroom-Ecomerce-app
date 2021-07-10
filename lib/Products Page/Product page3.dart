import 'package:flutter/material.dart';
import 'package:freshroom/Data/Constant.dart';

class product3 extends StatefulWidget {
  static String id = 'Product page3';

  @override
  _product3State createState() => _product3State();
}

class _product3State extends State<product3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      body: Container(
        margin: EdgeInsets.only(left: 10,right: 5,top: 10),
        // color: Colors.pinkAccent,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
                    setState(() {
                      Navigator.pop(context);
                    });
                  }),

                  Container(
                    margin: EdgeInsets.only(left: 80),
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/logo.jpg'),fit: BoxFit.contain)
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: IconButton(icon: Icon(Icons.notifications_none_outlined), onPressed: (){}),
                  ),

                  IconButton(icon: Icon(Icons.shopping_bag), onPressed: (){}),

                ],

              ),

              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),),
                ),
                child: Container(
                  width: 350,
                  height: 440,
                  // color: Colors.pink,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),),
                            image: DecorationImage(image: AssetImage('assets/hanging.jpg'),fit: BoxFit.fill),
                          ),
                        ),),

                      Expanded(

                        child: Container(
                          margin: EdgeInsets.only(left: 15),
                          // color: Colors.black,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.start,

                            children: [
                              Text('Furnishing',style: Textt2.textStyle(kprimarycolor, 15),),

                              Text('Hanging Chair',style: Textt2.textStyle(ksecondarycolor, 25),),

                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Row(
                                  children: [
                                    Text('\u0024 249',style: Textt2.textStyle(ktertiarycolor, 20),),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text('4.0 ',style: Textt2.textStyle(ksecondarycolor, 15),),
                                    ),

                                    Icon(Icons.star,color: ktertiarycolor,),
                                    Icon(Icons.star,color: ktertiarycolor,),
                                    Icon(Icons.star,color: ktertiarycolor,),
                                    Icon(Icons.star,color: ktertiarycolor,),
                                    Icon(Icons.star,color: kprimarycolor,),

                                    Text('   5k reviews',style: Textt2.textStyle(kprimarycolor, 15),),



                                  ],
                                ),
                              ),




                            ],
                          ),

                        ),),

                    ],
                  ),
                ),
              ),


              Container(
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(text: TextSpan(
                      text:   'Description',style: Textt2.textStyle(ksecondarycolor, 18),

                    )),

                    RichText(text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: Textt1.textStyle(kprimarycolor, 12)),
                        TextSpan(text: 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,',style: Textt1.textStyle(kprimarycolor, 12)),
                        TextSpan(text: 'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ',style: Textt1.textStyle(kprimarycolor, 12)),
                        TextSpan(text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: Textt1.textStyle(kprimarycolor, 12)),
                        TextSpan(text: 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,',style: Textt1.textStyle(kprimarycolor, 12)),
                        TextSpan(text: 'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ',style: Textt1.textStyle(kprimarycolor, 12)),
                      ],
                    )),

                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RaisedButton(
                              color: ksecondarycolor,
                              elevation: 4,
                              child:SizedBox(
                                width: 140,
                                height: 45,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text('ADD TO CART',textAlign: TextAlign.center,style: Textt1.textStyle(Colors.white, 18),),
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()),);
                              }
                          ),

                          RaisedButton(
                              color: kqauatrlycolor,
                              elevation: 4,
                              child:SizedBox(
                                width: 140,
                                height: 45,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text('BUY NOW',textAlign: TextAlign.center,style: Textt1.textStyle(Colors.white, 18),),
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()),);
                              }
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

    ),);
  }
}

