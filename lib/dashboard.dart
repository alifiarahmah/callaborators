//import 'dart.js';

import 'package:flutter/material.dart';

import 'home.dart';
import 'guild.dart';
import 'teamsearch.dart';
import 'bulletin.dart';
import 'profile.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  int _selectedIndex = 0;

  static const WidgetsName = ["Home", "Guild", " ", "Bulletin", "Profile"];

  static List<Widget> _widgetOptions = <Widget> [
    Home(),
    Guild(),
    null,
    Bulletin(),
    Profile()
  ];

  void _onItemTapped(int index){
    if (index != 2){
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(WidgetsName[_selectedIndex]),
        automaticallyImplyLeading: false,
      ),

      // body is the majority of the screen.

      body: Center(
        child:
        _widgetOptions[_selectedIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,

        items: <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Guild",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Find Partner",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Bulletin',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
            backgroundColor: Colors.white,
          ),

        ],
        onTap: _onItemTapped,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => TeamSearch()));        },
        child: Icon(Icons.search),
      ),
    );
  }
}

Widget playYes(BuildContext context){
  return Scaffold(
      body: Text("Play, Yes!")
  );
}