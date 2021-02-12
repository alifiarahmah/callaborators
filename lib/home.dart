import 'package:flutter/material.dart';

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

    return Column(
      children: [
        Container(
          child: Row(
            children: [
              // sapaan
              Text("${greet}, Firstname lastname."),
              // image
            ],
          ),
        ),

        // TODO: kasih buletin

      ],
    );
  }
}

class LombaBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 300,
        child: Card(
            child: Column(
              children: [

                // Keterangan
                Container(
                    child: Column(
                      children: [
                        Text("Judul Lomba", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        Text("19 Januari 1954"),
                      ],
                    )
                )
              ],
            )
        )
    );
  }
}