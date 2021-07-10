import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freshroom/Data/Constant.dart';
import 'package:freshroom/model/categorymodel.dart';
import 'package:freshroom/screen/shownotification.dart';
import 'package:freshroom/utills/categorylist.dart';
import 'package:freshroom/widget/Category.dart';
import 'package:freshroom/widget/HomePage.dart';
import 'package:get/get.dart';


class Controller extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update();
  }
}

class ShowCategory extends StatelessWidget {
  final controller = Get.put(Controller());

  static String id ='showcategory';
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_ios),color: ksecondarycolor,
          onPressed: (){
            Navigator.pop(context);
          },
          ),
          title: Center(child: Text('Categories',style: Textt2.textStyle(ktertiarycolor, 15),)),

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
            itemCount: CategoryList.list.length,
            itemBuilder: (BuildContext context, int index )
            => buildCategory(context,index)
        ),

      ),
    );
  }
}