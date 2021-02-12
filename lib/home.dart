import 'package:flutter/material.dart';
import 'bulletin.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var hourNow = int.parse(DateTime.now().hour.toString());
    var greet = "";
    if(hourNow < 12){
      greet = "Selamat pagi";
    } else if(hourNow < 16){
      greet = "Selamat siang";
    } else if(hourNow < 18){
      greet = "Selamat sore";
    } else{
      greet = "Selamat malam";
    }

    return ListView(
      children: [

        Container(
          // header biar hangat aja
          child: Row(
            children: [
              // TODO: sapaan
              Text("${greet}, Firstname lastname."),
              // image
            ],
          ),
        ),

        // chat2 sama kenalan
        Text("Chats", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ChatHeader(),
        ChatHeader(),
        ChatHeader(),

        // TODO: rekomendasi lomba

      ],
    );
  }
}

class ChatHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen())),
      child: Container(
        padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
        child: Row(
          children: [
            CircleAvatar(backgroundColor: Colors.white10, backgroundImage: AssetImage('images/pp.png')),
            SizedBox(width: 10),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Orang", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text("Hi!")
                ],
              ),
            )
          ],

        ),
      )
    );
  }
}

class ChatScreen extends StatefulWidget{
  // TODO: chatscreen
  @override
  _ChatScreen createState() => _ChatScreen();
}

class _ChatScreen extends State<ChatScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Orang"),
        backgroundColor: Colors.white,
      ),

      body: Container()
    );
  }
}