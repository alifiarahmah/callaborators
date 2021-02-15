//import 'dart.js';

import 'package:callaborators/chat.dart';
import 'package:callaborators/idea.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';


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

class _Dashboard extends State<Dashboard> with SingleTickerProviderStateMixin{

  int _selectedIndex = 0;
  static const WidgetsName = ["Home", "Chats", "Guild", "Bulletin", "Profile"];
  static List<Widget> _widgetOptions = <Widget> [Home(), ChatList(), Guild(), Bulletin(), Profile()];
  void _onItemTapped(int index){
      setState(() {
        _selectedIndex = index;
      });
  }

  @override
  Widget build(BuildContext context) {

    void bottomSheet() async {
      final result = await showSlidingBottomSheet(
          context,
          builder: (context) {
            return SlidingSheetDialog(
              elevation: 8,
              cornerRadius: 16,
              snapSpec: const SnapSpec(
                snap: true,
                snappings: [0.4, 0.7, 1.0],
                positioning: SnapPositioning.relativeToAvailableSpace,
              ),
              builder: (context, state) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Center(
                    child: Material(
                      child: ListView(
                        children: [
                          InkWell(
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TeamSearch()));},
                            child: Container(
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.centerLeft,
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: Row(
                                children: [
                                  Icon(Icons.person_add),
                                  SizedBox(width: 10),
                                  Text("Teammate Search"),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => IdeaGen()));},
                            child: Container(
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.centerLeft,
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: Row(
                                children: [
                                  Icon(Icons.lightbulb),
                                  SizedBox(width: 10),
                                  Text("Idea Generator"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
      ); // This is the result.
    }

    //setup speedial
    ValueNotifier<bool> isDialOpen = ValueNotifier(false);

    //eofsetup speedial

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
            selectedItemColor: Colors.yellowAccent,
            unselectedItemColor: Colors.white,
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

          floatingActionButton:
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context) => TeamSearch()));
              bottomSheet();
            },
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: Padding(
                padding: EdgeInsets.all(13),
                child: Image.asset('images/logo.png'),
              ),
            ),
          ),
        )
      )
    );
  }


// Biru 0E97BC, oren E89B18

}