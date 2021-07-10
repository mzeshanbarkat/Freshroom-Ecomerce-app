import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freshroom/Data/Constant.dart';
import 'package:freshroom/model/categorymodel.dart';
import 'package:freshroom/utills/categorylist.dart';
import 'package:freshroom/widget/Login.dart';
import 'package:freshroom/widget/SignUp.dart';

class homepage extends StatefulWidget {
  static String id ='HomePage';
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 340,
                height: 250,
                decoration: BoxDecoration(
                  image:DecorationImage(image: AssetImage('assets/chair2.jpg'),fit: BoxFit.fill,colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.3), BlendMode.dstOut),),
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.white,Colors.white,]),
                ),

              ),

              Column(
                children: [
                  Center(child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: RichText(
                      text: TextSpan(
                        text: 'Welcome Freshroom',style: Textt2.textStyle (ksecondarycolor, 22),
                      ),
                    ),
                  )),

                  Container(
                    width: 340,
                    child: RichText(text: TextSpan(
                        children:<TextSpan> [
                          TextSpan(text: 'Freshroom',style: Textt1.textStyle(kqauatrlycolor, 12)),
                          TextSpan(text: ' is an e-commerce app which allows users to buy',style: Textt1.textStyle(kprimarycolor, 12)),
                          TextSpan(text: ' furniture from the comfort of their homes. Also it les the Experts,',style: Textt1.textStyle(kprimarycolor, 12)),
                          TextSpan(text: 'Room Decor Bloggers, etc to upload their decor ideas on the app which can be saved by other users.',style: Textt1.textStyle(kprimarycolor, 12)),



                        ]
                    ),),
                  ),

                ],
              ),


              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: RaisedButton(
                  color: kqauatrlycolor,
                  elevation: 4,
                  child:SizedBox(
                    width: 320,
                    height: 45,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text('SIGN IN',textAlign: TextAlign.center,style: Textt1.textStyle(Colors.white, 20),),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>login()),);
                  },

                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: RaisedButton(
                  color: kqauatrlycolor,
                  elevation: 4,
                  child:SizedBox(
                    width: 320,
                    height: 45,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text('SIGN UP',textAlign: TextAlign.center,style: Textt1.textStyle(Colors.white, 20),),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()),);
                  },

                ),
              ),

            ],
          ),
        ),
      ),

    ),);
  }
}


