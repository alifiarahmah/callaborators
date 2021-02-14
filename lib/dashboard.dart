//import 'dart.js';

import 'package:flutter/material.dart';

import 'home.dart';
import 'guild.dart';
import 'teamsearch.dart';
import 'bulletin.dart';
import 'profile.dart';

class Dashboard extends StatefulWidget {
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {

  int _selectedIndex = 0;
  static const WidgetsName = ["Home", "Guild", " ", "Bulletin", "Profile"];
  static List<Widget> _widgetOptions = <Widget> [Home(), Guild(), null, Bulletin(), Profile()];
  void _onItemTapped(int index){
    if (index != 2){
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(

          appBar: AppBar(
            backgroundColor: Colors.black,
            bottom: (_selectedIndex == 3) ? TabBar(
              tabs: [
                Tab(text: 'Suggested'),
                Tab(text: 'Directory')
              ]
            ): null,
            title: Text(WidgetsName[_selectedIndex]),
            automaticallyImplyLeading: false,
          ),

          body: Container(
            padding: EdgeInsets.all(12),
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
                icon: Icon(Icons.search, color: Colors.white.withOpacity(1)),
                label: "Find",
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => TeamSearch()));
            },
            child: Icon(Icons.search),
          ),
        )
      )
    );
  }

  // TODO: match sama color scheme pitch deck + tambah logo di floatingactionbutton
  // TODO: cantikin README.md
  // Biru 0E97BC, oren E89B18
  // TODO: bikin mockup & splash screen

}