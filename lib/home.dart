import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bulletin.dart';
import 'chat.dart';
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
    var greet = "";
    var daypic = "";
    if(hourNow < 12){
      greet = "Selamat pagi";
      daypic = 'images/morningevening.png';
    } else if(hourNow < 16){
      greet = "Selamat siang";
      daypic = 'images/noon.png';
    } else if(hourNow < 18){
      greet = "Selamat sore";
      daypic = 'images/morningaftnoon.png';
    } else{
      greet = "Selamat malam";
      daypic = 'images/night.png';
    }

    return ListView(
      children: [

        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
          ),

          // greeting
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("$greet, Firstname lastname.", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              // image
              Image.asset(daypic, height: MediaQuery.of(context).size.height * 0.05,)
            ],
          ),
        ),

        SizedBox(height: 20),

        // chat2 sama kenalan
        Text("Chats", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ChatHeader(), ChatHeader(),ChatHeader(),ChatHeader(),
        Visibility(
          child: Column(
            children: [
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

        SizedBox(height: 20,),

        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
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

        // TODO: buat screen idea generator
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
          ),
          child: InkWell(
            //onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TeamSearch())),
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

                Icon(Icons.lightbulb)
              ],
            ),
          ),
        ),

        SizedBox(height: 20,),

        Text("Recommended competition for you", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        LombaList(), LombaList(), LombaList()

        // TODO: bikin mockup

      ],
    );
  }
}