import 'package:flutter/material.dart';
import 'package:freshroom/Data/Constant.dart';
import 'package:freshroom/model/cartmodel.dart';
import 'package:freshroom/model/notificationmodel.dart';
import 'package:freshroom/model/notificationmodel.dart';

class NotificationList{
  static List<Notificationn>list=[
    Notificationn(img: AssetImage('assets/bed.jpg'),
        text1: 'Double Bed',
        text2: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s ',
        icon1: IconButton(icon: Icon(Icons.delete),color: ktertiarycolor,),
        icon2: IconButton(icon: Icon(Icons.cancel),color: ksecondarycolor,)
    ),

    Notificationn(img: AssetImage('assets/3seater.jpg'),
        text1: '3 Seater Sofa',
        text2: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\s',
        icon1: IconButton(icon: Icon(Icons.delete),color: ktertiarycolor,),
        icon2: IconButton(icon: Icon(Icons.cancel),color: ksecondarycolor,)
    ),

    Notificationn(img: AssetImage('assets/hanging.jpg'),
        text1: 'Hanging Chair',
        text2: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s',
        icon1: IconButton(icon: Icon(Icons.delete),color: ktertiarycolor,),
        icon2: IconButton(icon: Icon(Icons.cancel),color: ksecondarycolor,)
    ),

    Notificationn(img: AssetImage('assets/dinerset.jpg'),
        text1: 'Diner Set',
        text2: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s',
        icon1: IconButton(icon: Icon(Icons.delete),color: ktertiarycolor,),
        icon2: IconButton(icon: Icon(Icons.cancel),color: ksecondarycolor,)
    ),

  ];
}