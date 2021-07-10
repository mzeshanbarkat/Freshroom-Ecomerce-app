import 'package:flutter/material.dart';
import 'package:freshroom/Data/Constant.dart';
import 'package:freshroom/widget/BottomNavigation.dart';

class signup extends StatefulWidget {

  static String id ='SignUp';
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  bool signupVal = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        // margin: EdgeInsets.only(left: 22),
        width: 400,
        // color: Colors.amber,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5,top: 50),
                    child: IconButton(icon: Icon(Icons.add_circle_outlined),iconSize: 30,
                    onPressed: (){

                      Navigator.pop(context);
                    },
                    ),
                  ),
                ],
              ),

               Row(
                 children: [
                   Container(
                     margin: EdgeInsets.only(left: 16,top: 20),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         RichText(
                          text: TextSpan(
                            text: 'Let\'s Get Started!',style: Textt2.textStyle (ksecondarycolor, 22),

                          ),
              ),

                         RichText(
                           text: TextSpan(
                               children: <TextSpan>[
                                 TextSpan(text: 'Sign up with social or fill the form to continue.',style: Textt1.textStyle(kprimarycolor, 12)),
                               ]
                           ),
                         ),
                         Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 20),
                               child: Container(
                                 width: 50,
                                 height: 50,
                                 child: Image(image: AssetImage('assets/fb.png'),fit: BoxFit.contain,),
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(100),
                                 ),
                               ),
                             ),

                             SizedBox(width: 30,),
                             Padding(
                               padding: const EdgeInsets.only(top: 20),
                               child: Container(
                                 width: 50,
                                 height: 50,
                                 child: Image(image: AssetImage('assets/google.png'),fit: BoxFit.contain,),
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(100),
                                 ),
                               ),
                             ),

                           ],
                         ),

                       ],
                     ),
                   ),
                 ],
               ),

              Container(
                margin: EdgeInsets.only(left: 13,top: 50),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Card(
                          child: Container(
                            height: 70,
                            width: 400,
                            margin: EdgeInsets.all(0.0),

                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child:  Icon(Icons.email_outlined),
                                  ),
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    child:TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        labelText: 'User Name',
                                        labelStyle: Textt1.textStyle(kprimarycolor,12),
                                        hintText: 'mianzeshan',
                                        hintStyle: Textt2.textStyle(ksecondarycolor, 15),
                                      ),
                                    ),

                                  ),
                                ),

                              ],
                            ),

                          ),
                        ),

                      ],
                    ),

                    Column(
                      children: [
                        Card(
                          child: Container(
                            height: 70,
                            width: 400,
                            margin: EdgeInsets.all(0.0),

                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child:  Icon(Icons.email_outlined),
                                  ),
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    child:TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        labelText: 'Email',
                                        labelStyle: Textt1.textStyle(kprimarycolor,12),
                                        hintText: 'mianzeshan@outlook.com',
                                        hintStyle: Textt2.textStyle(ksecondarycolor, 15),
                                      ),
                                    ),

                                  ),
                                ),

                              ],
                            ),

                          ),
                        ),

                      ],
                    ),

                    Column(
                      children: [
                        Card(
                          child: Container(
                            height: 70,
                            width: 400,
                            margin: EdgeInsets.all(0.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child:  Icon(Icons.lock),
                                  ),
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    child:TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        labelText: 'Password',
                                        labelStyle: Textt1.textStyle(kprimarycolor,12),
                                        hintText: '**************',
                                        hintStyle: Textt2.textStyle(ksecondarycolor, 15),
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    child:  Icon(Icons.remove_red_eye),
                                  ),
                                ),
                              ],
                            ),

                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 15,),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      checkColor: kprimarycolor,
                      activeColor: kqauatrlycolor,
                      value: signupVal,
                      onChanged: (bool value) {
                        setState(() {
                          signupVal = value;
                        });
                      },
                    ),

                    Text('I agree with the Terms of Use',style: Textt1.textStyle(kprimarycolor, 12),),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 35,),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>navigationbar()),);
                  },

                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  width: 340,
                  child: Column(
                    children: [
                      RichText(text: TextSpan(
                          children:<TextSpan> [
                            TextSpan(text: 'Already have an account?',style: Textt1.textStyle(kprimarycolor, 12)),
                            TextSpan(text: 'Login',style: Textt1.textStyle(ktertiarycolor, 12)),


                          ]
                      ),),
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    ),);
  }
}
