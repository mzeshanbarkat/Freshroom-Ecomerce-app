import 'package:flutter/material.dart';
import 'package:freshroom/Data/Constant.dart';
import 'package:freshroom/Products%20Page/Product%20page1.dart';
import 'package:freshroom/Splash%20&%20Onbording/SplashScreen.dart';
import 'package:freshroom/model/cartmodel.dart';
import 'package:freshroom/screen/showcart.dart';
import 'package:freshroom/screen/showcategory.dart';
import 'package:freshroom/screen/shownotification.dart';
import 'package:freshroom/widget/BottomNavigation.dart';
import 'package:freshroom/widget/Home.dart';
import 'package:freshroom/widget/HomePage.dart';
import 'package:freshroom/widget/Login.dart';
import 'package:freshroom/widget/SignUp.dart';
import 'package:freshroom/widget/searchbar.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        // accentColor: Colors.white,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    initialRoute: splashScreen.id,
    routes:<String, WidgetBuilder>{

        // ShowRaisedButton.id:(context)=>ShowRaisedButton(),
      splashScreen.id:(context)=>splashScreen(),
      homepage.id:(context)=>homepage(),
      login.id:(context)=>login(),
      signup.id:(context)=>signup(),
      navigationbar.id:(context)=>navigationbar(),
      home.id:(context)=>home(),
      ShowCategory.id:(context)=>ShowCategory(),
      product1.id:(context)=>product1(),
      SearchBar.id:(context)=>SearchBar(),
      ShowCart.id:(context)=>ShowCart(),
      ShowNotification.id:(context)=>ShowNotification(),






    },

    );
  }
}

