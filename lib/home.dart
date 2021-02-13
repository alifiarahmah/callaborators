import 'package:flutter/material.dart';
import 'bulletin.dart';
import 'chat.dart';

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