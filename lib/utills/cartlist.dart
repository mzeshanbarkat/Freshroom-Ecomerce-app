import 'package:flutter/material.dart';
import 'package:freshroom/Data/Constant.dart';
import 'package:freshroom/model/cartmodel.dart';

class CartList{
  static List<Cart>list=[
    Cart(img: AssetImage('assets/bed.jpg'),
    text1: 'Double Bed',
      text2: '\u0024560',
      icon1: IconButton(icon: Icon(Icons.delete),color: ktertiarycolor,),
      icon2: IconButton(icon: Icon(Icons.cancel),color: ksecondarycolor,)
    ),

    Cart(img: AssetImage('assets/3seater.jpg'),
        text1: '3 Seater Sofa',
        text2: '\u0024240',
        icon1: IconButton(icon: Icon(Icons.delete),color: ktertiarycolor,),
        icon2: IconButton(icon: Icon(Icons.cancel),color: ksecondarycolor,)
    ),

    Cart(img: AssetImage('assets/hanging.jpg'),
        text1: 'Hanging Chair',
        text2: '\u0024200',
        icon1: IconButton(icon: Icon(Icons.delete),color: ktertiarycolor,),
        icon2: IconButton(icon: Icon(Icons.cancel),color: ksecondarycolor,)
    ),

    Cart(img: AssetImage('assets/dinerset.jpg'),
        text1: 'Diner Set',
        text2: '\u0024150',
        icon1: IconButton(icon: Icon(Icons.delete),color: ktertiarycolor,),
        icon2: IconButton(icon: Icon(Icons.cancel),color: ksecondarycolor,)
    ),

  ];
}