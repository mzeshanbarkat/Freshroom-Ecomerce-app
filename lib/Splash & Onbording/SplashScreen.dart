import 'dart:async';


import 'package:flutter/material.dart';
import 'package:freshroom/Splash%20&%20Onbording/onbordingscreen.dart';
import 'package:freshroom/widget/HomePage.dart';

import 'package:shared_preferences/shared_preferences.dart';
//

class splashScreen extends StatefulWidget {
  static String id = "SplashScreen";
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {


  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);


  }
  void navigationPage() async{

    SharedPreferences pref=  await SharedPreferences.getInstance();
    bool value= pref.containsKey('key');

    if(value==true)
    {
      // send the user to the home page
      Navigator.pushAndRemoveUntil(
        context,

        MaterialPageRoute(
          builder: (BuildContext context) {
            return homepage();
          },
        ),
            (r) => false,
      );
    }
    else
    {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return Bording();
          },
        ),
            (r) => false,
      );
    }

//  Navigator.pushNamed(context, SignInPage.id);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      body:Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/logo.jpg"),
              fit: BoxFit.contain,)
        ),

      ),
    ));
  }

}
