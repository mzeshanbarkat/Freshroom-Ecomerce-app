import 'package:flutter/material.dart';
import 'package:freshroom/Data/Constant.dart';
import 'package:freshroom/utills/notificationlist.dart';


Widget buildNotificationn(BuildContext context,index) {
  final data = NotificationList.list[index];


  return Container(
    margin: EdgeInsets.only(top: 15) ,
    child: Column(
      children: [
        Container(
          width: 380,
          height: 100,
          // color: Colors.amber,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Image(image: data.img,fit: BoxFit.contain,),
                ),),

              Expanded(
                flex: 3,
                child: Container(
                  // color: Colors.pink,
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(data.text1,style: Textt2.textStyle(ksecondarycolor, 15),),
                      Text(data.text2,style: Textt2.textStyle(kprimarycolor, 12),),

                    ],
                  ),
                ),),


            ],
          ),
        ),


      ],
    ),


  );
}
