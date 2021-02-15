import 'package:flutter/material.dart';

import 'chat.dart';
import 'guild.dart';

class NameCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
          padding: EdgeInsets.all(25),
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    CircleAvatar(radius: 50, backgroundColor: Colors.white30, backgroundImage: NetworkImage('images/pp.png')),
                    Text("Roboto Makero",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text("I build robots for living. I can’t live without robots."),
                  ],
                ),
              ),
              SizedBox(height: 15),

              Text("Interests", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),

              Container(
                //height: 10,
                //color: Colors.blue,
                child: Row(
                  children: [
                    Chip(label: Text("Mathematics")),
                    Chip(label: Text("Social Science")),
                    Chip(label: Text("UI/UX")),
                  ],
                ),
              ),

              Text("Skills", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),

              Container(
                //height: 10,
                //color: Colors.blue,
                child: Row(
                  children: [
                    Chip(label: Text("Mathematics")),
                    Chip(label: Text("Scientific Writing")),
                    Chip(label: Text("E-sports")),
                  ],
                ),
              ),

              Text("Experiences", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),

              Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  child: Text("• 1st place in National Robot Hackathon 2019\n• 2nd place in National Robotic Day 2020")
              ),

              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: ButtonBar(
                    buttonMinWidth: 100,
                    children: [
                      RaisedButton(
                        child: Icon(Icons.account_circle),
                        onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => MemberProfile()));},
                      ),
                      RaisedButton(
                        child: Text("Chat"),
                        onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => ChatScreen()));},
                      ),
                    ],
                  ),
                )
              )

            ],
          ),
        )
    );
  }
}

class NameCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
          padding: EdgeInsets.all(25),
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    CircleAvatar(radius: 50, backgroundColor: Colors.white30, backgroundImage: NetworkImage('images/pp.png')),
                    Text("Wattson Boltzmann",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text("A man with high enthusiasm in Electrical Engineering."),
                  ],
                ),
              ),
              SizedBox(height: 15),

              Text("Interests", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),

              Container(
                //height: 10,
                //color: Colors.blue,
                child: Row(
                  children: [
                    Chip(label: Text("Electrical")),
                    Chip(label: Text("Microcontroller")),
                    Chip(label: Text("UI/UX")),
                  ],
                ),
              ),

              Text("Skills", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),

              Container(
                //height: 10,
                //color: Colors.blue,
                child: Row(
                  children: [
                    Chip(label: Text("Robot Race")),
                    Chip(label: Text("Hackathon")),
                    Chip(label: Text("Robot War")),
                  ],
                ),
              ),

              Text("Experiences", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),

              Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  //height: 10,
                  //color: Colors.green,
                  child: Text("• Co-founding Thundra Engineering \n• Worked in Buzz Electric Corp for 1 year")
              ),

              Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: ButtonBar(
                      buttonMinWidth: 100,
                      children: [
                        RaisedButton(
                          child: Icon(Icons.account_circle),
                          onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => MemberProfile()));},
                        ),
                        RaisedButton(
                          child: Text("Chat"),
                          onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => ChatScreen()));},
                        ),
                      ],
                    ),
                  )
              )
            ],
          ),
        )
    );
  }
}