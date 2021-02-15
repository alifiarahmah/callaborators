//import 'dart.js';

import 'package:callaborators/chat.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'chat.dart';
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
  static const WidgetsName = ["Home", "Chats", "Guild", "Bulletin", "Profile"];
  static List<Widget> _widgetOptions = <Widget> [Home(), ChatList(), Guild(), Bulletin(), Profile()];
  void _onItemTapped(int index){
    //if (index != 2){
      setState(() {
        _selectedIndex = index;
      });
    //}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0xFF0E97BC),
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
            backgroundColor: Color(0xFFE89B18),
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
                icon: Icon(Icons.chat),
                label: "Chats",
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: "Guild",
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

          //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TeamSearch()));
            },
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset('images/logo.png'),
              ),
            ),
          ),
        )
      )
    );
  }

// TODO: match sama color scheme pitch deck
// TODO: bikin box find your dream teammate dan lacking for ideas jadi row
// TODO: tambahin popup pilihan ideagen/teamsearch pas pencet FAB logo

// TODO: cantikin README.md
// Biru 0E97BC, oren E89B18
// TODO: bikin mockup & splash screen

}