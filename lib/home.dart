//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bulletin.dart';
//import 'chat.dart';
import 'idea.dart';
import 'teamsearch.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {

  @override
  Widget build(BuildContext context) {

    var viewAllChats = false;
    void switchAllChats(){
      setState(() {
        viewAllChats = !viewAllChats;
      });
    }

    var hourNow = int.parse(DateTime.now().hour.toString());
    var greet = "", daypic = "";
    Color bgclor = Colors.white, txtclor = Colors.black;
    if(hourNow < 12){
      greet = "Good morning";
      daypic = 'images/morningaftnoon.png';
      bgclor = Colors.yellow;
    } else if(hourNow < 16){
      greet = "Good afternoon";
      daypic = 'images/noon.png';
      bgclor = Colors.lightBlueAccent;
    } else if(hourNow < 18){
      greet = "Good afternoon";
      daypic = 'images/morningaftnoon.png';
      bgclor = Colors.yellow;
    } else{
      greet = "Good evening";
      daypic = 'images/night.png';
      bgclor = Colors.black;
      txtclor = Colors.white;
    }

    return ListView(
      children: [

        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: bgclor,
          ),

          // greeting
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("$greet, Firstname lastname.", style: TextStyle(color: txtclor, fontWeight: FontWeight.bold, fontSize: 18)),
              Image.asset(daypic, height: MediaQuery.of(context).size.height * 0.05,)
            ],
          ),
        ),

        SizedBox(height: 20),

        // chat2 sama kenalan was here
        /*Text("Chats", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ChatHeader(), ChatHeader(),ChatHeader(),ChatHeader(),
              ChatHeader(),ChatHeader(),ChatHeader(),ChatHeader(),ChatHeader(),
            ],
          ),
          visible: viewAllChats,
        ),
        // more
        IconButton(
          icon: Icon(viewAllChats? Icons.arrow_drop_up:Icons.arrow_drop_down),
          onPressed: switchAllChats,
        ),

        SizedBox(height: 20,),*/

        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.lightBlueAccent,
          ),
          child: InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TeamSearch())),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Find your dream teammate", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    Text("Let's try our service to find partner automatically!")
                  ],
                ),

                Icon(Icons.search)
              ],
            ),
          ),
        ),

        SizedBox(height: 20,),

        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.orangeAccent,
          ),
          child: InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => IdeaGen())),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Lacking for ideas?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    Text("Let's catch inspiration with our service!")
                  ],
                ),

                Icon(Icons.lightbulb_outlined,)
              ],
            ),
          ),
        ),

        SizedBox(height: 20,),

        Text("Recommended competition for you", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        LombaList(), LombaList(), LombaList()

      ],
    );
  }
}