import 'package:flutter/material.dart';
import 'dart:async';
import 'package:swipeable_card/swipeable_card.dart';

class TeamSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              Text("Teammate Search"),
              Image.asset('assets/images/meandthebois.png'),
              Text("Mau?"),
              RaisedButton(
                child: Text("Start"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Searching()));
                },
              ),

            ],
          ),
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
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SearchResult()));
  }

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Center(
          child: Container(
              margin: EdgeInsets.fromLTRB(50,200,50,0),
              child: Column(
                children: [
                  Image.asset('assets/images/teamsearch.gif'),
                  Text("Searching...")
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
      body: Center(
          child: Container(
              margin: EdgeInsets.fromLTRB(50,200,50,0),
              child: Column(
                children: [
                  Text("Result here")
                ],
              )
          )
      ),
    );

  }

}