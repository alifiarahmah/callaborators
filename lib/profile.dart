import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Profile extends StatefulWidget{
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {

  var showInterest = false, showSkills = false, showAchv = false;

  void switchInterest() {
    setState(() {
      showInterest = !showInterest;
    });
  }
  void switchSkills() {
    setState(() {
      showSkills = !showSkills;
    });
  }
  void switchAchv() {
    setState(() {
      showAchv = !showAchv;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
            children: [

              // Avatar + Name + Desc
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

              // Interests
              Container(
                child: Column(
                  children: [
                    Card(
                      child: InkWell(
                        onTap: switchInterest,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Interests", style: TextStyle(fontWeight: FontWeight.bold),),
                              showInterest? Icon(Icons.arrow_drop_up): Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ),
                    ),

                    // badges
                    //TODO: tambah chip
                    Visibility(
                      visible: showInterest,
                      child: Container(
                        height: 10,
                        color: Colors.purple,
                      )
                    ),

                  ],
                )
              ),

              // Skills
              Container(
                  child: Column(
                    children: [
                      Card(
                        child: InkWell(
                          onTap: switchSkills,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Skills", style: TextStyle(fontWeight: FontWeight.bold),),
                                showSkills? Icon(Icons.arrow_drop_up): Icon(Icons.arrow_drop_down)
                              ],
                            ),
                          ),
                        ),
                      ),

                      // badges
                      //TODO: tambah chip
                      Visibility(
                          visible: showSkills,
                          child: Container(
                            height: 10,
                            color: Colors.blue,
                          )
                      ),

                    ],
                  )
              ),

              // Achievements
              Container(
                  child: Column(
                    children: [
                      Card(
                        child: InkWell(
                          onTap: switchAchv,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Achievements", style: TextStyle(fontWeight: FontWeight.bold),),
                                showAchv? Icon(Icons.arrow_drop_up): Icon(Icons.arrow_drop_down)
                              ],
                            ),
                          ),
                        ),
                      ),

                      // badges
                      //TODO: tambah chip
                      Visibility(
                          visible: showAchv,
                          child: Container(
                            height: 10,
                            color: Colors.green,
                          )
                      ),

                    ],
                  )
              ),

            ]
          ),
    );
  }
}