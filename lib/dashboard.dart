//import 'dart.js';

import 'package:callaborators/chat.dart';
import 'package:callaborators/idea.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
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
      );

      print(result); // This is the result.
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

          // speed dial
          /*
          SpeedDial(
            /// both default to 16
            marginEnd: 18,
            marginBottom: 20,
            // animatedIcon: AnimatedIcons.menu_close,
            // animatedIconTheme: IconThemeData(size: 22.0),
            /// This is ignored if animatedIcon is non null
            //icon: Icons.add,
            //activeIcon: Icons.remove,
            //iconTheme: IconThemeData(color: Colors.grey[50], size: 30),
            /// The label of the main button.
            // label: Text("Open Speed Dial"),
            /// The active label of the main button, Defaults to label if not specified.
            // activeLabel: Text("Close Speed Dial"),
            /// Transition Builder between label and activeLabel, defaults to FadeTransition.
            // labelTransitionBuilder: (widget, animation) => ScaleTransition(scale: animation,child: widget),
            /// The below button size defaults to 56 itself, its the FAB size + It also affects relative padding and other elements
            buttonSize: 56.0,
            visible: true,
            /// If true user is forced to close dial manually
            /// by tapping main button and overlay is not rendered.
            closeManually: false,
            /// If true overlay will render no matter what.
            renderOverlay: false,
            curve: Curves.bounceIn,
            overlayColor: Colors.black,
            overlayOpacity: 0.5,
            //onOpen: () => print('OPENING DIAL'),
            //onClose: () => print('DIAL CLOSED'),
            tooltip: 'Speed Dial',
            heroTag: 'speed-dial-hero-tag',
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 8.0,
            shape: CircleBorder(),
            // orientation: SpeedDialOrientation.Up,
            // childMarginBottom: 2,
            // childMarginTop: 2,
            children: [
              SpeedDialChild(
                child: Icon(Icons.person_add),
                backgroundColor: Colors.blue,
                label: 'Teammate Search',
                labelStyle: TextStyle(color: Colors.white, fontSize: 18.0),
                onTap: () => print('SECOND CHILD'),
              ),
              SpeedDialChild(
                child: Icon(Icons.lightbulb),
                backgroundColor: Colors.green,
                label: 'Idea Generator',
                labelStyle: TextStyle(color: Colors.white, fontSize: 18.0),
                onTap: () => print('THIRD CHILD'),
              ),
            ],
          ),
           */

          // floatingactionbubble
          /*
          FloatingActionBubble(
            items: [
              Bubble(
                title: "Teammate Search",
                icon: Icons.person_add,
                iconColor: Color(0xFFE89B18),
                bubbleColor: Colors.white,
                titleStyle:TextStyle(fontSize: 16 , color: Color(0xFFE89B18)),
                onPress: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => TeamSearch()));
                  _animationController.reverse();
                },
              ),
              Bubble(
                title: "Idea Generator",
                icon: Icons.lightbulb,
                iconColor: Color(0xFFE89B18),
                bubbleColor: Colors.white,
                titleStyle:TextStyle(fontSize: 16 , color: Color(0xFFE89B18)),
                onPress: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => IdeaGen()));
                  _animationController.reverse();
                },
              )
            ],
            animation: _animation,
            onPress: _animationController.isCompleted? _animationController.reverse: _animationController.forward,
            iconColor: Colors.blue,
            animatedIconData: AnimatedIcons.ellipsis_search,
            backGroundColor: Colors.white,
          )
          */

          // floatingactionbutton
          /*
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context) => TeamSearch()));
            },
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: Padding(
                padding: EdgeInsets.all(13),
                child: Image.asset('images/logo.png'),
              ),
            ),
          ),
          */
        )
      )
    );
  }


// Biru 0E97BC, oren E89B18
// TODO: bikin mockup & splash screen

}