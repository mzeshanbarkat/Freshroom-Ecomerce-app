import 'package:flutter/material.dart';
import 'package:freshroom/Data/Constant.dart';
import 'package:freshroom/screen/showcart.dart';
import 'package:freshroom/widget/Home.dart';
import 'package:freshroom/widget/searchbar.dart';



class navigationbar extends StatefulWidget {
  static String id = 'BottomNavigation';
  @override
  _navigationbarState createState() => _navigationbarState();
}

class _navigationbarState extends State<navigationbar> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[

   home(),
    SearchBar(),
    ShowCart(),
    Text('zeshan'),
    Text('zeshan'),




//    myProfile()

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false, // set it to false

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: kprimarycolor,
          iconSize: 25,
          unselectedItemColor: kprimarycolor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.now_widgets),
              title: Text('Home'),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              title: Text('Favourite'),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text('Person'),
            ),

          ],
          currentIndex: _selectedIndex,
          selectedItemColor: ktertiarycolor,
          onTap: _onItemTapped,
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),

      ),
    );
  }
}

