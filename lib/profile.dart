import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class Profile extends StatefulWidget{
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {

  @override
  Widget build(BuildContext context) {

    // bikin up down button
    var showInterest = false, showSkills = false;

    return Column(
      children: [
        Container(
          child: Column(
            children: [

              Center(
                child: Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('images/pp.png')
                      ),
                      Text("Firstname Lastname", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                      Text(
                        "This is the description for the user.\nIt works like a bio, I think?",
                        textAlign: TextAlign.center,
                      )
                    ],
                  )
                )
              ),

              // DROPDOWN TIMEEEE
              // Interests
              Container(
                child: Column(
                  children: [
                    Card(
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Interests", style: TextStyle(fontWeight: FontWeight.bold),),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ),
                    ),
                    // badges
                  ],
                )
              ),

              // Skills
              Container(
                  child: Column(
                    children: [
                      Card(
                        child: InkWell(
                          onTap: (){},
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Skills", style: TextStyle(fontWeight: FontWeight.bold),),
                                Icon(Icons.arrow_drop_down)
                              ],
                            ),
                          ),
                        ),
                      ),
                      // badges
                    ],
                  )
              ),

            ]
          ),
        )
      ]
    );
  }
}