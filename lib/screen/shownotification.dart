import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freshroom/Data/Constant.dart';
import 'package:freshroom/model/notificationmodel.dart';
import 'package:freshroom/utills/notificationlist.dart';
import 'package:freshroom/widget/Notification.dart';

class ShowNotification extends StatefulWidget {
  static String id ='shownotification';
  @override
  _ShowNotificationState createState() => _ShowNotificationState();
}

class _ShowNotificationState extends State<ShowNotification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),color: ksecondarycolor,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Center(child: Text('Notifications',style: Textt2.textStyle(ktertiarycolor, 15),)),

        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications_none_outlined),color: ksecondarycolor,
            onPressed: (){},
          ),

          IconButton(icon: Icon(FontAwesomeIcons.shoppingBag),color: ksecondarycolor,
            onPressed: (){

            },
          ),


        ],
      ),

      body: ListView.builder(
          itemCount: NotificationList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildNotificationn(context,index)
      ),
    ),);
  }
}
