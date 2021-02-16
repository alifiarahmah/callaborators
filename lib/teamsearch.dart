// WARNING: TAR TAROH JSONNYA DI SINI EA

import 'package:flutter/material.dart';
import 'dart:async';
import 'card.dart';

class TeamSearch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back_rounded, color: Colors.black),
          backgroundColor: Colors.white,
          onPressed: (){
            Navigator.pop(context, '');
          },
        ),

        body: Column(
          children: [
            Center(
                child: Container(
                    margin: EdgeInsets.fromLTRB(50,MediaQuery.of(context).size.height * 0.2,50,0),
                    child: Column(
                      children: [
                        Text("Teammate Search", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                        SizedBox(height: 20),
                        Image.asset('images/meandthebois.png', width: 300),

                        SizedBox(height: 20),

                        Text('"Alone we can do so little, together we can do so much."\n- Anonymous', style: TextStyle(fontStyle: FontStyle.italic), textAlign: TextAlign.center,),

                        SizedBox(height: MediaQuery.of(context).size.height * 0.2),

                        Align(
                          alignment: Alignment.bottomCenter,
                          child: ButtonTheme(
                            minWidth: 300.0,
                            height: 50.0,
                            child: ButtonTheme(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              minWidth: 300.0,
                              height: 50.0,
                              child: RaisedButton(
                                color: Color(0xFF0E97BC),
                                child: Text("Start", style: TextStyle(color: Colors.white)),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Searching()));
                                },
                              ),
                            )
                          )
                        )
                      ],
                    )
                )
            )
          ],
        )

    );
  }
}

class Searching extends StatefulWidget {
  @override
  _Searching createState() => _Searching();
}

class _Searching extends State<Searching> {
  @override
  void initState(){
    super.initState();
    startTime();
  }

  startTime() async{
    var duration = Duration(seconds: 3);
    return Timer (duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Found()));
  }

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Center(
          child: Container(
              margin: EdgeInsets.fromLTRB(50,MediaQuery.of(context).size.height * 0.3,50,0),
              child: Column(
                children: [
                  Image.asset('images/teamsearch.gif'),
                  Text("Searching...")
                ],
              )
          )
      ),
    );

  }
}

class Found extends StatefulWidget {
  @override
  _Found createState() => _Found();
}

class _Found extends State<Found> {
  @override
  void initState(){
    super.initState();
    startTime();
  }

  startTime() async{
    var duration = Duration(seconds: 1);
    return Timer (duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SearchResult()));
  }

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Center(
          child: Container(
              margin: EdgeInsets.fromLTRB(50,MediaQuery.of(context).size.height * 0.5,50,0),
              child: Column(
                children: [
                  Text("Found!")
                ],
              )
          )
      ),
    );

  }
}

class SearchResult extends StatelessWidget {

  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.9,
        child: ListView(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.05),
          scrollDirection: Axis.horizontal,
          children: [
            // card here

            NameCard1(),
            NameCard2(),

            // card kelar here

          ],

        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_rounded, color: Colors.black),
        backgroundColor: Colors.white,
        onPressed: () => Navigator.of(context).pop(),
      )

    );

  }

}