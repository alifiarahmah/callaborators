import 'package:flutter/material.dart';
import 'dart:async';
import 'card.dart';

class IdeaGen extends StatelessWidget {
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
                        Text("Idea Generator", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                        SizedBox(height: 20),

                        //Image.asset('images/meandthebois.png', width: 300),
                        Icon(Icons.lightbulb_outlined),

                        SizedBox(height: 20),

                        Text('"Good ideas are common – what\'s uncommon are people \nwho\'ll work hard enough to bring them about."\n- Anonymous', style: TextStyle(fontStyle: FontStyle.italic), textAlign: TextAlign.center,),

                        SizedBox(height: MediaQuery.of(context).size.height * 0.2),

                        Align(
                            alignment: Alignment.bottomCenter,
                            child: ButtonTheme(
                              minWidth: 300.0,
                              height: 50.0,
                              child: RaisedButton(
                                color: Colors.black,
                                child: Text("Start", style: TextStyle(color: Colors.white)),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchIdea()));
                                },
                              ),
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

class SearchIdea extends StatefulWidget {
  @override
  _SearchIdea createState() => _SearchIdea();
}
class _SearchIdea extends State<SearchIdea> {
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
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Inspired()));
  }

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Center(
          child: Container(
              margin: EdgeInsets.fromLTRB(50,MediaQuery.of(context).size.height * 0.3,50,0),
              child: Column(
                children: [
                  //Image.asset('images/teamsearch.gif'),
                  Text("Searching...")
                ],
              )
          )
      ),
    );

  }
}

class Inspired extends StatefulWidget {
  @override
  _Inspired createState() => _Inspired ();
}
class _Inspired extends State<Inspired> {
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
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => IdeaGenResult()));
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

class IdeaGenResult extends StatelessWidget {

  @override
  Widget build(BuildContext context){

    return Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1, MediaQuery.of(context).size.height * 0.15, MediaQuery.of(context).size.width * 0.1, 0),
          height: MediaQuery.of(context).size.height * 0.9,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              // card here

              NameCard(),
              NameCard(),
              NameCard()

              // card kelar here

            ],

          ),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back_rounded, color: Colors.black),
          backgroundColor: Colors.white,
          onPressed: (){
            Navigator.pop(context, '');
          },
        )

    );

  }

}

