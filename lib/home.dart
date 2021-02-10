import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var hourNow = int.parse(DateTime.now().hour.toString());
    var greet = "";
    if(hourNow < 12){
      greet = "Selamat pagi!";
    } else if(hourNow < 16){
      greet = "Selamat siang!";
    } else if(hourNow < 18){
      greet = "Selamat sore!";
    } else{
      greet = "Selamat malam!";
    }

    return Container(
      child: Column(
        children: [
          Text(greet),
          Text("Firstname Lastname", style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}