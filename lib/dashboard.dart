import 'package:flutter/material.dart';
import 'teamsearch.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  int _selectedIndex = 0;

  static const WidgetsName = ["Home", "Guild", " ", "Bulletin", "Profile"];

  static List<Widget> _widgetOptions = <Widget> [

    // Dashboard
    Text("Home"),

    // Guild
    Text("Guild"),

    // Teammate Search
    Text("Teammate Search"),

    // Bulletin
    Text("Bulletin"),

    // Profile
    Column(
      children: [
        Icon(Icons.account_circle),
        Text("Firstname Lastname")
      ],
    )

  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
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

      /*
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Avatar + namehere', style: TextStyle(color: Colors.white),),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Teammate Search'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Guild'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Idea Generator'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Bulletin Board'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      */

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
            label: "Find Team",
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