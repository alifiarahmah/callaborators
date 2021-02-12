//import 'dart:html';

import 'package:flutter/material.dart';

class Bulletin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        LombaSuggested(),
        LombaDirectory()
      ],
    );
  }
}

class LombaSuggested extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Text("Recommended for you", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          LombaList(), LombaList(), LombaList(), LombaList(), LombaList()
        ]
      )
    );
  }
}

class LombaDirectory extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          children: [

            TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
                ),
                labelText: "Search",
                suffixIcon: Icon(Icons.search)
              ),
            ),

            LombaList(), LombaList(), LombaList(), LombaList()

          ]
        ),
    );
  }
}

class LombaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(4),
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: InkWell(
          onTap: (){},
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // ingfo lomba
                        Text("Judul Lomba", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Text("Organizer", style: TextStyle(fontSize: 13, color: Colors.black45),),
                        Text("15 Januari 2021")

                        // chip lomba

                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),

              /*ListView(
              scrollDirection: Axis.horizontal,
              children: [

              ],
            )*/

            ],
          ),
        )
      )
    );
  }
}