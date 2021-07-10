import 'package:flutter/material.dart';

 const kprimarycolor=Color(0xff7A7A7A);
const ksecondarycolor=Color(0xff212121);
const ktertiarycolor=Color(0xffB9290A);
const kqauatrlycolor=Color(0xffFB5F3D);



class Textt1{

  static TextStyle textStyle(Color color,double fontsize)
  {
    return TextStyle(
      color: color,
      fontSize: fontsize,
      fontFamily: 'Gilroy',

    );
  }
}

class Textt2{

  static TextStyle textStyle(Color color,double fontsize)
  {
    return TextStyle(
      color: color,
      fontSize: fontsize,
      fontWeight: FontWeight.bold,
      fontFamily: 'Gilroy',

    );
  }
}

