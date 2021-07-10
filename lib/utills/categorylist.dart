

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freshroom/Data/Constant.dart';
import 'package:freshroom/Products%20Page/Product%20page1.dart';
import 'package:freshroom/Products%20Page/Product%20page2.dart';
import 'package:freshroom/Products%20Page/Product%20page3.dart';
import 'package:freshroom/Products%20Page/Product%20page4.dart';
import 'package:freshroom/model/categorymodel.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';



class CategoryList{
  static List<Category>list=[
    Category(img: AssetImage('assets/3seater.jpg'),
      img2: AssetImage('assets/bed.jpg'),
    iconosm: IconButton(icon: Icon(FontAwesomeIcons.heart),color: kprimarycolor,
    onPressed: (){

    },
    ),

      iconosm2: IconButton(icon: Icon(FontAwesomeIcons.solidHeart),color: kqauatrlycolor,
        onPressed: (){

        },
      ),


      iconp1: IconButton(icon: Icon(FontAwesomeIcons.shoppingBag),color: ksecondarycolor,
      onPressed: (){
        // Get.to(product1());
        navigator.push(MaterialPageRoute(builder: (context)=>product1()),);
      },
      ),

      iconp2: IconButton(icon: Icon(FontAwesomeIcons.shoppingBag),color: ksecondarycolor,
        onPressed: (){
          // Get.to(product1());
          navigator.push(MaterialPageRoute(builder: (context)=>product2()),);
        },
      ),

      text1: 'Furniture & Decor',
      text2: 'See all',
      icon2: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: IconButton(icon: Icon(Icons.arrow_forward_ios),color: kqauatrlycolor,iconSize: 10,
        onPressed: (){
        },
        ),
      ),
      text3: '3 Seater Sofa',
      text4: '\u0024128',
      text5: 'Double Bed',
      text6: '\u0024784',
    ),




    Category(img: AssetImage('assets/hanging.jpg'),
      img2: AssetImage('assets/dinerset.jpg'),
      iconosm: IconButton(icon: Icon(FontAwesomeIcons.heart),color: kprimarycolor,
        onPressed: (){

        },
      ),

      iconosm2: IconButton(icon: Icon(FontAwesomeIcons.solidHeart),color: kqauatrlycolor,
        onPressed: (){

        },
      ),


      iconp1: IconButton(icon: Icon(FontAwesomeIcons.shoppingBag),color: ksecondarycolor,
        onPressed: (){
          navigator.push(MaterialPageRoute(builder: (context)=>product3()),);

        },
      ),

      iconp2: IconButton(icon: Icon(FontAwesomeIcons.shoppingBag),color: ksecondarycolor,
        onPressed: (){
          navigator.push(MaterialPageRoute(builder: (context)=>product4()),);

        },
      ),

      text1: 'Furniture & Kitchen',
      text2: 'See all',
      icon2: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: IconButton(icon: Icon(Icons.arrow_forward_ios),color: kqauatrlycolor,iconSize: 10,
          onPressed: (){
          },
        ),
      ),
      text3: 'Hanging Chair',
      text4: '\u0024249',
      text5: 'Diner Set',
      text6: '\u002499.99',
    ),



  ];
}