import 'package:flutter/material.dart';
import 'package:freshroom/Data/Constant.dart';
import 'package:freshroom/utills/categorylist.dart';


Widget buildCategory(BuildContext context,index)
{

  final data= CategoryList.list[index];

  return Container(

    child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            width: 450,
            height: 320,
            // color: Colors.amber,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20),
                      child: Text(data.text1,style: Textt2.textStyle(ksecondarycolor, 15)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 145),
                      child: Text(data.text2,style: Textt1.textStyle(kqauatrlycolor, 12),),
                    ),
                    (data.icon2)

                  ],
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 2,
                      child: Container(
                        color: Colors.white,
                        width: 165,
                        height: 240,
                        child: Column(
                          children: [
                            Expanded(
                              flex:2,
                              child: Container(
                                width: 165,
                                height: 110,
                                // color: Colors.blue,
                                child: Stack(
                                  fit: StackFit.expand,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  overflow: Overflow.clip,
                                  children: [
                                    Container(
                                        child: Image(image: data.img,fit: BoxFit.fill,)
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(bottom: 270,left: 120),
                                      child: (data.iconosm),
                                      ),
                                  ],
                                ),
                              ),),

                            Expanded(

                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                    // color: Colors.red,
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5),
                                          child: Text(data.text3,style: Textt2.textStyle(ksecondarycolor, 14),)
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5),
                                          child: Text(data.text4,style: Textt1.textStyle(kprimarycolor, 14),),
                                        ),

                                      ],
                                    ),),
                                  ),

                                  Expanded(child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      (data.iconp1),
                                    ],
                                  ),),
                                ],
                              ),),

                          ],
                        ),
                      ),
                    ),

                    Card(
                      elevation: 2,
                      child: Container(
                        color: Colors.white,
                        width: 165,
                        height: 240,
                        child: Column(
                          children: [
                            Expanded(
                              flex:2,
                              child: Container(
                                width: 165,
                                height: 110,
                                // color: Colors.blue,
                                child: Stack(
                                  fit: StackFit.expand,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  overflow: Overflow.clip,
                                  children: [
                                    Container(
                                        child: Image(image: data.img2,fit: BoxFit.fill,)
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(bottom: 270,left: 120),
                                      child: (data.iconosm2),
                                    ),
                                  ],
                                ),
                              ),),

                            Expanded(

                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      // color: Colors.red,
                                      alignment: Alignment.topLeft,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.only(left: 5),
                                              child: Text(data.text5,style: Textt2.textStyle(ksecondarycolor, 14),)
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 5),
                                            child: Text(data.text6,style: Textt1.textStyle(kprimarycolor, 14),),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),

                                  Expanded(child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      (data.iconp2),
                                    ],
                                  ),),
                                ],
                              ),),

                          ],
                        ),
                      ),
                    ),



                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),

  );

}
