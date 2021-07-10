import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freshroom/Data/Constant.dart';
import 'package:freshroom/screen/shownotification.dart';
import 'package:freshroom/utills/cartlist.dart';
import 'package:freshroom/widget/Cart.dart';

class ShowCart extends StatefulWidget {
  static String id = 'showcart';
  @override
  _ShowCartState createState() => _ShowCartState();
}

class _ShowCartState extends State<ShowCart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),color: ksecondarycolor,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Center(child: Text('Wishlist',style: Textt2.textStyle(ktertiarycolor, 15),)),

        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications_none_outlined),color: ksecondarycolor,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowNotification()),);

            },
          ),

          IconButton(icon: Icon(FontAwesomeIcons.shoppingBag),color: ksecondarycolor,
            onPressed: (){

            },
          ),


        ],
      ),

      body: ListView.builder(
          itemCount: CartList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildCart(context,index)
      ),
    ),);
  }
}

